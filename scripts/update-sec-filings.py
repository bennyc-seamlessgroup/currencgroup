#!/usr/bin/env python3
"""Refresh the editable SEC filing archive from the official SEC submissions feed."""

from __future__ import annotations

import argparse
import gzip
import json
import os
from pathlib import Path
from urllib.request import Request, urlopen

ROOT = Path(__file__).resolve().parents[1]
CIK = '0001862935'
SEC_URL = f'https://data.sec.gov/submissions/CIK{CIK}.json'
DEFAULT_OUTPUT = ROOT / 'site/data/filings.json'
DESCRIPTIONS = ROOT / 'site/data/filing-descriptions.json'
EXCLUDED_FOR_PUBLIC_ARCHIVE = {'CORRESP', 'UPLOAD'}
NORMALIZED_FORMS = {
    'SCHEDULE 13G': 'SC 13G',
    'SCHEDULE 13G/A': 'SC 13G/A',
}


def read_payload(source: str | None) -> dict:
    if source:
        raw = Path(source).read_bytes()
        if raw.startswith(b'\x1f\x8b'):
            raw = gzip.decompress(raw)
        return json.loads(raw.decode('utf-8'))

    user_agent = os.environ.get(
        'SEC_USER_AGENT',
        'CURRENC investor website investors@currencgroup.com',
    )
    request = Request(SEC_URL, headers={'User-Agent': user_agent})
    with urlopen(request, timeout=30) as response:
        return json.load(response)


def build_records(payload: dict, descriptions: dict[str, str]) -> list[dict[str, str]]:
    recent = payload['filings']['recent']
    fields = (
        recent['filingDate'],
        recent['form'],
        recent['accessionNumber'],
    )
    records: list[dict[str, str]] = []
    unknown_forms: set[str] = set()

    for date, raw_form, accession in zip(*fields):
        if raw_form in EXCLUDED_FOR_PUBLIC_ARCHIVE:
            continue
        form = NORMALIZED_FORMS.get(raw_form, raw_form)
        description = descriptions.get(form)
        if not description:
            unknown_forms.add(form)
            continue
        compact_accession = accession.replace('-', '')
        records.append(
            {
                'date': date,
                'form': form,
                'description': description,
                'url': (
                    'https://www.sec.gov/Archives/edgar/data/'
                    f'{int(CIK)}/{compact_accession}/{accession}-index.html'
                ),
            }
        )

    if unknown_forms:
        names = ', '.join(sorted(unknown_forms))
        raise SystemExit(
            f'Missing filing descriptions for: {names}. '
            'Add them to site/data/filing-descriptions.json and run again.'
        )
    return records


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument('--source', help='Optional local SEC submissions JSON or gzip file')
    parser.add_argument('--output', type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    payload = read_payload(args.source)
    descriptions = json.loads(DESCRIPTIONS.read_text())
    records = build_records(payload, descriptions)
    args.output.write_text(json.dumps(records, indent=2, ensure_ascii=False) + '\n')
    print(f'Wrote {len(records)} public filings to {args.output}')


if __name__ == '__main__':
    main()
