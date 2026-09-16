# Updating SEC filings and investor news

Both lists are ordinary JSON files. You can edit them locally or upload a replacement file through GitHub. A commit to `main` automatically rebuilds and publishes the website.

## SEC filings

Edit `filings.json`. Keep the newest filing first. Every entry has four fields:

```json
{
  "date": "YYYY-MM-DD",
  "form": "6-K",
  "description": "Report of Foreign Issuer",
  "url": "https://www.sec.gov/Archives/edgar/data/..."
}
```

The description must match the form entry in `filing-descriptions.json`. This keeps the original Q4 descriptions consistent and prevents the form code from appearing as the description.

For a complete manual refresh from the official SEC submissions feed, run from the project root:

```sh
python3 scripts/update-sec-filings.py
```

The refresh excludes SEC `CORRESP` and `UPLOAD` records, matching the public-facing Q4 archive, and normalizes older `SCHEDULE 13G` names to `SC 13G`.

## Investor news

Edit `news.json`. Keep the newest release first. The homepage automatically displays the first three entries.

```json
{
  "date": "YYYY-MM-DD",
  "title": "Exact published press-release headline",
  "url": "https://www.globenewswire.com/news-release/..."
}
```

Use the exact publisher URL. GlobeNewswire, PR Newswire, EIN Presswire, or another official release page can be used. A leading `/` is also accepted for a news page hosted within this website.

## Before uploading

Run this check from the project root:

```sh
python3 scripts/validate-content.py
```

The GitHub Pages build runs the same validation automatically and will stop if dates, descriptions, URLs, sorting, or duplicate entries are invalid.
