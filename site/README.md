# CURRENC investor relations — local preview

A static rebuild of the public CURRENC investor website, prepared for local review and eventual GitHub hosting. No production domain or external account has been changed.

## Run locally

Requires Node.js 22.13 or newer. From this directory:

```sh
npm install
npm run dev
```

The current preview is http://127.0.0.1:3000/.

`npm run build` exports the site into `dist/client/`. This output contains the website and local assets; it can be used by a static host. GitHub Actions now builds and deploys the static export to GitHub Pages at https://bennyc-seamlessgroup.github.io/currencgroup/. Custom-domain routing is not configured yet.

## Manual content updates

- `data/news.json`: editable investor press releases. Add `date` (YYYY-MM-DD), `title`, and the exact publisher `url`; keep entries newest-first. The homepage reads the first three entries from this file.
- `data/featured-news.json`: the separate corporate archive. `date` preserves the Q4 archive date; `sourceDate` records the original publisher date when different. Both are shown when needed.
- `data/profiles.ts`, `data/chinese.ts`: English and Chinese biographies and FAQs.
- `data/governance.json`: document titles and local filenames.
- `data/filings.json`: editable public SEC filing archive with 225 records through September 15, 2026 and the original Q4 descriptions. Run `python3 ../scripts/update-sec-filings.py` from `site/` to refresh it from the official SEC submissions feed.
- `public/assets/`: company images, banners, director portraits, governance PDFs, presentation PDF, and local Inter font.

Example news entry:

```json
{
  "date": "YYYY-MM-DD",
  "title": "Exact published headline",
  "url": "https://publisher.example/exact-release-page"
}
```

Full editing and upload instructions for both lists are in `data/CONTENT-UPDATES.md`. The GitHub Pages build validates both JSON files before publishing.

The other scripts in the parent `scripts/` directory are migration tools, not scheduled jobs. `import-news.py` produces a broad publisher archive; do not rerun it over a manually curated news file without reviewing its output. It includes predecessor announcements outside the current website's scope. The final `data/news.json` is the curated list of 35 original entries.

## What works in this review

English and Chinese navigation, company overview, profiles, governance downloads, 35 investor announcements, 22 featured announcements, news filtering/search, presentation viewer/download, event links, FAQ accordions, site search, contacts, and the SEC filing list with year/type filters.

The original press-release language is preserved. Several shared controls and PDF titles on Chinese routes remain in English, as do the external releases and SEC documents.

The tokenization destination remains https://www.currencgroup.com/tokenization. Its independent implementation has not been moved or changed. Webcasts remain external; the April 2025 recording still depends on its existing Q4 event link.

The Stock Info page uses TradingView quote and interactive chart widgets for `NASDAQ:CURR`. The homepage retains its original stock-strip design with a placeholder price and a link to Stock Info. These load from TradingView at runtime and need internet access; no API key or backend is required. TradingView branding is preserved. US stock widget data is delayed and may differ from consolidated Nasdaq quotes. The widgets cannot supply raw data to our own calculator.

Historical lookup and the investment calculator remain visual previews. The Information Request form and the investor email alert signup/unsubscribe forms submit through Web3Forms. Each submission is forwarded to the recipient configured for its Web3Forms access key for manual processing; email alert requests do not yet add or remove contacts in a mailing-list system automatically.

Widget configuration and styling: `app/tradingview.tsx` and `app/tradingview.css`. Reference: https://www.tradingview.com/widget-docs/.

## Before production migration

- Review the carried-over company content. Original FAQ copy contains historical 2024 operating data and ADS terminology; it was preserved rather than silently rewritten.
- Review differences between Q4 archive dates and original publication dates in featured news.
- Public event archive includes the 2026 shareholder meeting and the 2025 presentation, earnings call and Roth conference. Obtain any unpublished attachments or recordings needed from the Q4 account before cancellation.
- Verify the recipient addresses attached to both Web3Forms access keys, then make one controlled live submission to each form and confirm delivery. Consider enabling Web3Forms domain restriction and hCaptcha before the final domain cutover.
- Add and test old `.aspx` URL compatibility on the final host; the local review uses clean routes.
- Review custom-domain/DNS routing (including the separate tokenization paths), licenses for supplied imagery/fonts and a Q4 cutover/rollback plan.
- The starter dependency install reported vulnerabilities. Review the dependency audit before production; no forced dependency upgrades were made as part of this local visual build.

## Validation

The static build exports 32 HTML pages including the error page. `python3 ../scripts/validate-content.py` checks the editable news and filings data; `python3 ../scripts/validate-static.py` checks local resource links, duplicate element IDs and PDF signatures against the build. The validation report is saved in `../audit/static-validation.json`.
