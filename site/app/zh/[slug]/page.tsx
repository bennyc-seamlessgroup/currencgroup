import { AboutPage, NewsEventsPage, InvestorPage } from '../../about-page';
import { notFound } from 'next/navigation';
import { Header, Footer } from '../../shell';
import { InnerContent } from '../../inner-content';
import { groups } from '@/data/navigation';
import { labels } from '@/data/chinese';
const pages = [
  ...groups.flatMap((g) => g.items),
  ['Site Map', 'site-map'],
  ['Search', 'search'],
];
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
  const name =
    pages.find((p) => p[1].split('#')[0] === slug)?.[0] || 'Overview';
  return { title: (labels[name] || name) + ' — CURRENC Group' };
}
export default async function Page({
  params,
}: {
  params: Promise<{ slug: string }>;
}) {
  const { slug } = await params;
  if (['management', 'board', 'governance'].includes(slug))
    return <AboutPage slug={slug} zh />;
  if (['news', 'featured-news', 'events'].includes(slug))
    return <NewsEventsPage slug={slug} zh />;
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
    return <InvestorPage slug={slug} zh />;
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
      <Header zh />
      <main id="main" lang="zh-Hans">
        <section
          className="inner-hero"
          style={{
            backgroundImage: `linear-gradient(90deg,rgba(24,42,55,.62),rgba(30,54,66,.45)),url('/assets/${banner}_banner.jpg')`,
          }}
        >
          <span className="eyebrow">CURRENC GROUP · 投资者关系</span>
          <h1>{labels[found[0]] || found[0]}</h1>
        </section>
        {group && (
          <nav className="section-nav" aria-label={labels[group.title]}>
            {group.items.map(([n, p]) => (
              <a
                key={p}
                href={'/zh/' + p}
                className={p.split('#')[0] === slug ? 'active' : ''}
              >
                {labels[n] || n}
              </a>
            ))}
          </nav>
        )}
        <div className="wrap inner-content">
          <InnerContent slug={slug} zh />
        </div>
      </main>
      <Footer zh />
    </>
  );
}
