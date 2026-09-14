"""Check exported routes, document signatures and local resource references."""
from pathlib import Path
from html.parser import HTMLParser
from urllib.parse import urlsplit, unquote
import json
import re

ROOT = Path(__file__).resolve().parents[1]
PUBLIC = ROOT / 'site/dist/client'
errors = []

class References(HTMLParser):
    def __init__(self):
        super().__init__()
        self.refs = []
        self.ids = []

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        if attrs.get('id'):
            self.ids.append(attrs['id'])
        for attr in ('href', 'src', 'data'):
            if attrs.get(attr):
                self.refs.append(attrs[attr])

pages = list(PUBLIC.rglob('*.html'))
assert pages, 'Run npm run build first'
for page in pages:
    parser = References()
    parser.feed(page.read_text())
    duplicates = {i for i in parser.ids if parser.ids.count(i) > 1}
    if duplicates:
        errors.append(f'{page.name}: duplicate IDs {duplicates}')
    for ref in parser.refs:
        url = urlsplit(ref)
        if url.scheme or url.netloc or not url.path:
            continue
        path = unquote(url.path)
        target = PUBLIC / path.lstrip('/') if path.startswith('/') else page.parent / path
        candidates = (target, Path(str(target) + '.html'), target / 'index.html')
        if not any(p.is_file() for p in candidates):
            errors.append(f'{page.relative_to(PUBLIC)}: missing {ref}')

for css in (PUBLIC / 'assets').glob('*.css'):
    for ref in re.findall(r'url\([\"\']?(/assets/[^)\"\']+)', css.read_text()):
        if not (PUBLIC / ref.lstrip('/')).is_file():
            errors.append(f'{css.name}: missing {ref}')

pdfs = list((PUBLIC / 'assets').glob('*.pdf'))
for pdf in pdfs:
    if not pdf.read_bytes().startswith(b'%PDF-'):
        errors.append(f'{pdf.name}: invalid PDF signature')

report = {
    'exported_html_pages': len(pages),
    'local_assets': len(list((PUBLIC / 'assets').iterdir())),
    'valid_local_pdfs': len(pdfs),
    'investor_news': len(json.loads((ROOT / 'site/data/news.json').read_text())),
    'featured_news': len(json.loads((ROOT / 'site/data/featured-news.json').read_text())),
    'sec_filing_links': len(json.loads((ROOT / 'site/data/filings.json').read_text())),
    'errors': errors,
}
(ROOT / 'audit/static-validation.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
raise SystemExit(bool(errors))
