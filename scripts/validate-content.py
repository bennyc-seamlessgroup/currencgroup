#!/usr/bin/env python3
"""Validate editable investor-news and SEC-filing JSON before a site build."""

from __future__ import annotations

import json
import re
from pathlib import Path
from urllib.parse import urlparse

ROOT = Path(__file__).resolve().parents[1]
DATE = re.compile(r'^\d{4}-\d{2}-\d{2}$')


def load_array(path: Path) -> list[dict]:
    data = json.loads(path.read_text())
    if not isinstance(data, list):
        raise ValueError(f'{path}: top level must be a JSON array')
    return data


def require_text(item: dict, key: str, path: Path, index: int) -> str:
    value = item.get(key)
    if not isinstance(value, str) or not value.strip():
        raise ValueError(f'{path}: item {index + 1} needs a non-empty {key}')
    return value.strip()


def require_url(item: dict, path: Path, index: int) -> str:
    value = require_text(item, 'url', path, index)
    if value.startswith('/'):
        return value
    parsed = urlparse(value)
    if parsed.scheme not in {'http', 'https'} or not parsed.netloc:
        raise ValueError(f'{path}: item {index + 1} has an invalid URL')
    return value


def validate_order(rows: list[dict], path: Path) -> None:
    dates = [require_text(row, 'date', path, index) for index, row in enumerate(rows)]
    if any(not DATE.match(date) for date in dates):
        raise ValueError(f'{path}: dates must use YYYY-MM-DD')
    if dates != sorted(dates, reverse=True):
        raise ValueError(f'{path}: entries must be sorted newest first')


def main() -> None:
    news_path = ROOT / 'site/data/news.json'
    filings_path = ROOT / 'site/data/filings.json'
    descriptions_path = ROOT / 'site/data/filing-descriptions.json'
    news = load_array(news_path)
    filings = load_array(filings_path)
    descriptions = json.loads(descriptions_path.read_text())

    validate_order(news, news_path)
    validate_order(filings, filings_path)

    news_urls: set[str] = set()
    for index, item in enumerate(news):
        require_text(item, 'title', news_path, index)
        url = require_url(item, news_path, index)
        if url in news_urls:
            raise ValueError(f'{news_path}: duplicate URL at item {index + 1}')
        news_urls.add(url)

    filing_urls: set[str] = set()
    for index, item in enumerate(filings):
        form = require_text(item, 'form', filings_path, index)
        description = require_text(item, 'description', filings_path, index)
        url = require_url(item, filings_path, index)
        if description == form:
            raise ValueError(f'{filings_path}: item {index + 1} repeats its form as description')
        if descriptions.get(form) != description:
            raise ValueError(
                f'{filings_path}: item {index + 1} description does not match '
                'site/data/filing-descriptions.json'
            )
        if url in filing_urls:
            raise ValueError(f'{filings_path}: duplicate URL at item {index + 1}')
        filing_urls.add(url)

    print(f'Validated {len(filings)} SEC filings and {len(news)} investor news entries.')


if __name__ == '__main__':
    main()
