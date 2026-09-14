import { AboutPage, NewsEventsPage, InvestorPage } from '../about-page';
import { notFound } from 'next/navigation';
import { Header, Footer } from '../shell';
import { InnerContent } from '../inner-content';
import { groups } from '@/data/navigation';
import { Home } from '../page';
const extra = [
  ['Site Map', 'site-map'],
  ['Search', 'search'],
  ['公司概况', 'chinese'],
  ['Notice of Extraordinary General Meeting of Shareholders', 'meeting-notice'],
];
const pages = [...groups.flatMap((g) => g.items), ...extra];
export function generateStaticParams() {
  return [...new Set(pages.map((p) => p[1].split('#')[0]))].map((slug) => ({
    slug,
  }));
}
export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug: string }>;
}) {
  const { slug } = await params;
  return {
    title:
      (pages.find((p) => p[1].split('#')[0] === slug)?.[0] ||
        'Investor Relations') + ' — CURRENC Group',
  };
}
export default async function Page({
  params,
}: {
  params: Promise<{ slug: string }>;
}) {
  const { slug } = await params;
  if (slug === 'chinese') return <Home zh />;
  if (['management', 'board', 'governance'].includes(slug))
    return <AboutPage slug={slug} />;
  if (['news', 'featured-news', 'events'].includes(slug))
    return <NewsEventsPage slug={slug} />;
  if (
    [
      'stock',
      'sec-filings',
      'faqs',
      'information-request',
      'email-alerts',
      'contacts',
    ].includes(slug)
  )
    return <InvestorPage slug={slug} />;
  const found = pages.find((p) => p[1].split('#')[0] === slug);
  if (!found) notFound();
  const group = groups.find((g) =>
    g.items.some((p) => p[1].split('#')[0] === slug),
  );
  const banner =
    group?.title === 'About us'
      ? 'about_us'
      : group?.title === 'News & Events'
        ? 'event_presentation'
        : group?.title === 'Financials'
          ? 'financials'
          : group?.title === 'Stock Info'
            ? 'stock_information'
            : 'investor_resources';
  return (
    <>
      <Header />
      <main id="main">
        <section
          className="inner-hero"
          style={{
            backgroundImage: `linear-gradient(90deg,rgba(24,42,55,.62),rgba(30,54,66,.45)),url('/assets/${banner}_banner.jpg')`,
          }}
        >
          <span className="eyebrow">CURRENC GROUP · INVESTOR RELATIONS</span>
          <h1>{slug === 'stock' ? 'Stock Information' : found[0]}</h1>
        </section>
        {group && (
          <nav className="section-nav" aria-label={group.title}>
            {group.items.map(([n, p]) => (
              <a
                key={p}
                href={'/' + p}
                className={p.split('#')[0] === slug ? 'active' : ''}
              >
                {n}
              </a>
            ))}
          </nav>
        )}
        <div className="wrap inner-content">
          <InnerContent slug={slug} />
        </div>
      </main>
      <Footer />
    </>
  );
}
