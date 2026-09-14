import { sitePath } from '@/lib/site-path';
import { Header, Footer } from './shell';
import { InnerContent } from './inner-content';
import { groups } from '@/data/navigation';
import { labels } from '@/data/chinese';
import './home.css';
import './about.css';
import './news-events.css';
import './investor-pages.css';
import { StockNavigation } from './stock-navigation';

function SectionPage({
  slug,
  zh = false,
  section = 0,
}: {
  slug: string;
  zh?: boolean;
  section?: number;
}) {
  const { items, title: sectionTitle } = groups[section];
  const name =
    slug === 'stock'
      ? 'Stock Information'
      : items.find(([, path]) => path === slug)?.[0] || sectionTitle;
  return (
    <div
      className={`home-site about-site${section === 1 ? ' news-events-site' : section >= 2 ? ` investor-site investor-site--${slug}` : ''}`}
    >
      <Header zh={zh} />
      <main id="main" lang={zh ? 'zh-Hans' : 'en'}>
        <section className={`about-hero about-hero--${slug}`}>
          <div className="wrap about-hero-inner">
            <div className="about-title">
              <span className="eyebrow">
                {zh ? labels[sectionTitle] : sectionTitle.toUpperCase()}
              </span>
              <h1>
                {zh
                  ? slug === 'stock'
                    ? '股票信息'
                    : labels[name] || name
                  : name}
              </h1>
            </div>
          </div>
        </section>
        <div className="about-navigation">
          {slug === 'stock' ? (
            <StockNavigation zh={zh} />
          ) : (
            <nav
              className="wrap about-nav"
              aria-label={zh ? labels[sectionTitle] : sectionTitle}
            >
              {items.map(([title, path]) => (
                <a
                  key={path}
                  href={sitePath((zh ? '/zh/' : '/') + path)}
                  aria-current={path === slug ? 'page' : undefined}
                >
                  {zh ? labels[title] || title : title}
                </a>
              ))}
            </nav>
          )}
        </div>
        <div className="wrap about-content">
          <InnerContent slug={slug} zh={zh} />
        </div>
      </main>
      <Footer zh={zh} />
    </div>
  );
}

export function AboutPage(props: { slug: string; zh?: boolean }) {
  return <SectionPage {...props} />;
}

export function NewsEventsPage(props: { slug: string; zh?: boolean }) {
  return <SectionPage {...props} section={1} />;
}

export function InvestorPage(props: { slug: string; zh?: boolean }) {
  const section = groups.findIndex((group) =>
    group.items.some(([, path]) => path.split('#')[0] === props.slug),
  );
  return <SectionPage {...props} section={section} />;
}
