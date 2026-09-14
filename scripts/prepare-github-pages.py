#!/usr/bin/env python3
"""Prefix CSS public-asset URLs and verify a GitHub Pages static export."""
from pathlib import Path
import re
import sys

if len(sys.argv) != 3:
    raise SystemExit('usage: prepare-github-pages.py OUTPUT_DIR BASE_PATH')
root = Path(sys.argv[1]).resolve()
base = sys.argv[2].rstrip('/')
if not root.joinpath('index.html').is_file() or not base.startswith('/'):
    raise SystemExit('missing static export or invalid base path')

for css in root.rglob('*.css'):
    text = css.read_text()
    css.write_text(text.replace('url(/assets/', f'url({base}/assets/').replace('url("/assets/', f'url("{base}/assets/').replace("url('/assets/", f"url('{base}/assets/"))
# vinext writes prefixed chunks beneath an extra directory. Pages itself already
# mounts this artifact at /currencgroup/, so move chunks back to the artifact root.
nested_chunks = root / base.lstrip('/') / '_next'
if nested_chunks.is_dir():
    nested_chunks.rename(root / '_next')
    nested_chunks.parent.rmdir()
if not (root / '_next' / 'static').is_dir():
    raise SystemExit('Missing framework assets after path normalization')
root.joinpath('.nojekyll').touch()

pages = list(root.rglob('*.html'))
if len(pages) < 30:
    raise SystemExit(f'Expected at least 30 HTML pages, got {len(pages)}')
for page in pages:
    text = page.read_text()
    for pattern in (r'(?:href|src|action)="/(?!currencgroup/|/|#)', r'url\([\'"]?/assets/'):
        if re.search(pattern, text):
            raise SystemExit(f'Unprefixed path in {page}: {pattern}')
    for url in re.findall(r'(?:href|src)="('+re.escape(base)+r'/assets/[^"?#]+)', text):
        asset = root / url.removeprefix(base).lstrip('/')
        if not asset.is_file():
            raise SystemExit(f'Missing asset {asset} referenced by {page}')
for css in root.rglob('*.css'):
    if re.search(r'url\([\'"]?/assets/', css.read_text()):
        raise SystemExit(f'Unprefixed asset in {css}')
# GitHub Pages serves directory index pages at clean URLs such as /currencgroup/news/.
for page in pages:
    if page.parent == root and page.name in ('index.html', '404.html'):
        continue
    target = page.with_suffix('') / 'index.html'
    target.parent.mkdir(parents=True, exist_ok=True)
    page.rename(target)
print(f'GitHub Pages export ready: {len(pages)} pages, base {base}')
