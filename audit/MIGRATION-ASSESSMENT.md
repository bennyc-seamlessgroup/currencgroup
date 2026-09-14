# CURRENC website migration assessment

Inspected 14 September 2026. This is a feasibility assessment and initial asset capture, not a completed clone or running local website.

## Recommendation

Rebuild the public investor website as static pages with locally stored company assets and structured content files. Preserve the current navigation, dark header, blue photographic banners, section tabs, white content areas, company cards, and footer. Replace Q4's live widgets with independent integrations or honest external-link fallbacks.

Use GitHub for source control and deployment. GitHub Pages can serve the static output and a custom domain; it cannot execute the existing ASP.NET application or provide a mail server. Keep the implementation portable. GitHub's usage restrictions and limits must be considered before production hosting, particularly if tokenization or transactional services are brought into the same site. This is not a conclusion that informational investor relations pages are prohibited.

Sources: [GitHub Pages overview](https://docs.github.com/en/pages/getting-started-with-github-pages/what-is-github-pages), [usage limits](https://docs.github.com/en/pages/getting-started-with-github-pages/github-pages-limits).

## Observed scope

Visiting https://www.currencgroup.com in the browser redirected to the Q4 investor overview. The /tokenization path remained a separate page with a different implementation, an embedded content frame, a /continental-instruction link, and external Continental and Securitize destinations. Preserve those paths during any root-domain change; replacing only the investor subdomain does not replace them. The instruction page has not yet been audited.

The investor navigation includes English and Chinese. Chinese overview was read, but full Chinese-page parity and archive completeness remain to be checked.

| Area | Observed contents | Replacement |
| --- | --- | --- |
| Overview | Corporate description, processing-value graphic, four company cards, tokenization promotion, latest news, presentation, events, delayed quote | Closely reproduce layout with local images and reusable components |
| Executive Management | Three biographies | Static editable profiles |
| Board of Directors | Five biographies and portraits | Static editable profiles with local portraits |
| Corporate Governance | Five charter/policy PDF links | Local PDF downloads |
| Investor News | 2026, 2025, 2024 archive filters | Date/title/source/URL records and year filter; link out to verified releases |
| Corporate Featured News | Separate archive with years 2024, 2023, 2022, 2021 | Preserve separate archive; match original publishers individually |
| Events & Presentations | Featured PDF, event archive, webcast links | Local presentation viewer/downloads and editable event records |
| Stock Info | Quote, chart, historical lookup, investment calculator on one page with anchors | Independent permitted data provider or clearly labeled links; calculator needs adjusted historical data |
| SEC Filings | Dynamic filing table | Build-time SEC ingestion and external SEC document links |
| Investor FAQs | Questions and answers | Accessible accordion or normal content |
| Information Request Form | Contact/request fields | Independent form processor or email contact fallback |
| Investor Email Alerts | News, filings, end-of-day quote, events/presentations subscriptions | Email service with confirmation, preferences and unsubscribe |
| Investor Contacts | Contact information | Static page and email links |
| Search and Site Map | Header search and footer site-map link | Locally generated search index and HTML/XML sitemaps |

The investor archive displayed 11 entries for 2026, 21 for 2025, and 3 for 2024: 35 entries total in the inspected year states. This is not the total for corporate featured news, Chinese entries, or event details. Featured news reaches back to 2021, and its older years still require inspection.

Sources: [overview](https://investors.currencgroup.com/English/overview/default.aspx), [investor news](https://investors.currencgroup.com/English/news-and-events/investor-news/default.aspx), [featured news](https://investors.currencgroup.com/English/news-and-events/corporate-featured-news/default.aspx), [governance](https://investors.currencgroup.com/English/about-us/corporate-governance/default.aspx), [events](https://investors.currencgroup.com/English/news-and-events/events-and-presentations/default.aspx), [stock information](https://investors.currencgroup.com/stock-info/default.aspx), [tokenization](https://www.currencgroup.com/tokenization).

## Press releases

Maintain each entry as publication date, headline, language, category, canonical external URL, and original Q4 URL. Old Q4 news paths need a migration map so existing bookmarks still lead to the corresponding release. Match topic, issuer, date and any correction/update status; a similarly titled article alone is insufficient.

Verified sample matches:

| Q4 date / topic | GlobeNewswire destination |
| --- | --- |
| 3 September 2026 — Mint collaboration | [Official release](https://www.globenewswire.com/news-release/2026/09/03/3355834/0/en/currenc-capital-and-mint-incorporation-limited-nasdaq-mimi-announce-collaboration-to-bring-mint-s-nasdaq-listed-shares-onchain.html) |
| 26 August 2026 — Securitize collaboration | [Official release, English article under localized site path](https://www.globenewswire.com/de/news-release/2026/08/26/3351275/0/en/currenc-capital-and-securitize-announce-strategic-collaboration-to-advance-issuer-sponsored-tokenization-of-public-equities.html) |
| 24 June 2026 — WalletKu restructuring | [Official release](https://www.globenewswire.com/news-release/2026/06/24/3317175/0/en/currenc-group-executes-strategic-restructuring-of-indonesian-walletku-subsidiary-to-refocus-on-high-growth-ai-web3-roadmap.html) |

Exceptions already observed: 8 April 2026 currently links to PR Newswire; 5 March 2026 currently links to EIN Presswire. No corresponding GlobeNewswire match was verified for these during this assessment. The 2025 archive also contains an original and an UPDATE release on 8 August; preserve this distinction. Featured news includes subsidiary announcements and service notices that may not have GlobeNewswire equivalents. Keep unresolved records visible in the migration inventory rather than silently omit them.

For manual publishing, adding a date, title and GlobeNewswire link can update both the news archive and homepage in a single build. No internal article page is necessary for matched releases.

For automation, a scheduled GitHub Actions job can ingest an approved feed, validate issuer and URLs, deduplicate release IDs, retain corrections, and rebuild the site. Preserve the last successful dataset if a feed fails. A manual entry path remains available. Scheduled polling is not guaranteed instantaneous delivery. GlobeNewswire publishes [RSS/XML feeds](https://www.globenewswire.com/Rss/List), but a dependable CURRENC-specific feed and its coverage/access terms have not yet been verified. Do not promise automatic publishing until that integration has passed real checks.

## Assets and presentation feasibility

Initial capture saved seven homepage image assets and nine stylesheet responses under source-assets/, plus the November 2025 corporate presentation PDF. The manifest maps those initial assets to their public source URLs. These are reference captures, not a complete asset archive or ready-to-use application styles. Two stylesheet responses had empty content types and require inspection before use. CSS-referenced background photos and fonts were not included by the initial image bundle.

The PDF download succeeded and was identified as a PDF file, approximately 10.9 MiB. Its source is [CURRENC-Corp-Deck_Nov-10.pdf](https://s202.q4cdn.com/618684105/files/doc_presentations/2025/Nov/11/CURRENC-Corp-Deck_Nov-10.pdf). The homepage currently embeds a PDF.js viewer; the replacement can use an independent viewer or browser PDF preview with open/download fallbacks. No Q4 presentation subscription is needed to display this local PDF.

Remaining acquisition: all page banners, CSS backgrounds, portraits, governance PDFs, archived decks, event attachments, Chinese assets, and any downloadable media. Record original URL, local filename, checksum, status and referring page. Check actual file content as well as HTTP status, since direct HTML downloading returned a Cloudflare block page while normal browser inspection worked.

Use local asset paths in the finished site. Remove runtime dependence on s202.q4cdn.com, widgets.q4app.com and the Q4 feed services. Retain external publishers and intended external services as links. The current CSS references Silka fonts and Q4 icon fonts; font availability does not establish transferable licensing. Use company-provided licensed fonts or an open alternative, and independently implemented icons. Check provenance of Q4-supplied stock photography as part of asset handover.

## Services that cannot simply be copied

- Stock data: a saved quote will become stale. Obtain a permitted feed/widget or show a link to the selected market-data source. Show timestamp/delay on all displayed quotes. Historical calculations need split/dividend handling and must not imply accuracy from unadjusted prices.
- SEC filings: use public SEC submissions data during the build; data.sec.gov does not support browser CORS. Keep SEC document links rather than depend on Q4-generated PDF/Excel conversions. Follow SEC identification and rate guidance. See [SEC APIs](https://www.sec.gov/search-filings/edgar-application-programming-interfaces) and [developer resources](https://www.sec.gov/about/developer-resources).
- Forms and alerts: static hosting does not process submissions, manage subscribers or deliver emails. A separate service is required for equivalent functionality. The public site cannot expose the existing subscriber list; an authorized Q4 export is needed, including preferences, consent and unsubscribe/suppression status. Never place subscriber information or service credentials in the public repository.
- Event recordings: the overview links an April 2025 earnings webcast at events.q4inc.com and a February 2026 meeting at virtualshareholdermeeting.com. A link does not prove a recording can be downloaded or will survive Q4 cancellation. Obtain available company recordings or retain valid external destinations.
- Q4 administration: server code, CMS records, private uploads, subscriber records and contractual services are not recoverable from a public-page clone. The replacement should provide its own maintainable content workflow.

## Implementation and acceptance sequence

1. Complete the bilingual page and asset inventory, including all archive years, detail pages and existing URL aliases. Reconcile news against GlobeNewswire and record unmatched exceptions.
2. Build a portable static site with shared header/footer, existing section structure, responsive layout, and JSON/Markdown content. Generate actual pages so links work on direct loading and search engines can read the content.
3. Run it locally and compare desktop/mobile views. Check menus, language switching, year filters, search, downloads and PDF fallbacks. Verify all internal links and ensure company-owned assets load locally.
4. Add verified news and SEC ingestion. Integrate selected stock/form/email services only when configured; never display fake success, live prices, or active subscription controls.
5. Prepare GitHub deployment and a complete old-to-new URL map. Test legacy .aspx paths on the actual host; GitHub Pages is not an ASP.NET server and server-level redirects are not supplied by copying old URLs. Where necessary use generated compatibility pages or an appropriate redirect layer.
6. Verify custom-domain routing, HTTPS, root-domain paths, archive completeness and form/email behavior before moving traffic. Keep Q4 available through cutover and maintain a rollback route.

No repository was published, DNS changed, Q4 service cancelled, or email sent. The Desktop folder named by the user and this workspace were initially empty. Assessment files were saved in the active project at /Users/bennycheung/Documents/ChatGPT/CURRENC Website/audit/.
