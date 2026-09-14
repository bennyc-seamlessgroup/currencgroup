import { sitePath } from '@/lib/site-path';
import { ArrowRight, ArrowUpRight, Download } from 'lucide-react';
import { Header, Footer, Quote } from './shell';
import { companies } from '@/data/navigation';
import news from '@/data/news.json';
import './home.css';
export function Home({ zh = false }: { zh?: boolean }) {
  return (
    <div className="home-site">
      <Header zh={zh} />
      <main className="home-page" id="main" lang={zh ? 'zh-Hans' : 'en'}>
        <section className="hero">
          <div className="wrap hero-inner">
            <div className="hero-copy">
              <h1>
                {zh ? (
                  <>
                    投资者
                    <br />
                    关系
                  </>
                ) : (
                  <>
                    Investor
                    <br />
                    Relations
                  </>
                )}
              </h1>
              <p>
                {zh
                  ? '数字汇款金融科技先驱，以及人工智能辅助金融解决方案的新兴提供商'
                  : 'A fintech pioneer in digital remittance and an emerging provider of AI-assisted financial solutions'}
              </p>
            </div>
            <div className="home-hero-media" aria-hidden="true">
              <img src={sitePath('/assets/stock-manhattan-blue-hour.jpg')} alt="" fetchPriority="high" />
            </div>
          </div>
          <div className="home-market"><div className="wrap"><Quote /></div></div>
        </section>
        <section className="wrap overview section">
          <div className="home-overview-heading">
            <span className="eyebrow">CURRENC GROUP</span>
            <h2>{zh ? '公司概况' : 'Corporate Overview'}</h2>
          </div>
          <div className="home-overview-copy">
          <p>
            {zh
              ? 'Currenc Group Inc.（纳斯达克代码：CURR）是一家金融科技先驱企业，致力于通过AI技术重塑全球金融服务。公司在全球范围赋能金融机构，凭借一系列AI工具，提供全面的AI解决方案，旨在助力金融机构降本增效、并提升客户满意度。'
              : 'Currenc Group Inc. (Nasdaq: CURR) is a fintech pioneer dedicated to transforming global financial services through artificial intelligence (AI). The Company empowers financial institutions worldwide with comprehensive AI solutions, including the SEAMLESS AI Call Centre and other AI-powered tools designed to reduce costs, increase efficiency and boost customer satisfaction.'}
          </p>
          <p>
            {zh
              ? '公司的数字汇款平台还支持电子钱包、汇款公司及企业提供实时、全天候的全球支付服务，推动欠发达社区的金融普惠。'
              : 'The Company’s digital remittance platform also enables e-wallets, remittance companies, and corporations to provide real-time, 24/7 global payment services, advancing financial access across underserved communities.'}
          </p>
          <p>
            {zh
              ? 'Currenc持续拓展其在AI驱动投资及可持续基础设施领域的战略布局。Currenc Capital通过CURR-ARC AI 1 基金，专注于AI数据中心（AIDC)、金融科技和绿色能源等领域的高增长投资机会。同时，Currenc Power Corp以马来西亚为战略核心，聚焦高能效AI数据中心(AIDC)的开发与运营。'
              : 'Currenc Group has expanded its AI-driven investments and sustainable infrastructure. Currenc Capital focuses on high-growth opportunities in AI data centers, fintech, and green energy through the CURR-ARC AI Fund 1 while Currenc Power Corp develops and operates energy-efficient, AI Data Centers (AIDC) from its strategic base in Malaysia.'}
          </p>
          </div>
        </section>
        <section className="processing"><div className="wrap home-processing-inner">
          <h2>{zh ? '交易处理金额' : 'Processing Value'}</h2>
          <img
            src={sitePath('/assets/CURRENC-TPV-Chart.png')}
            alt="CURRENC total processing value in USD: 2018, 1.55 billion; 2019, 2.25 billion; 2020, 2.64 billion; 2021, 3.34 billion; 2022, 3.55 billion; 2023, 4.53 billion; 2024, 5.14 billion; 2025, 5.8 billion."
            loading="lazy"
          />
        </div></section>
        <section className="companies section">
          <div className="wrap">
            <h2>{zh ? '集团旗下公司' : 'Our Group of Companies'}</h2>
            <div className="company-grid">
              {companies.map((c, i) => (
                <article className="company" key={c.name}>
                  <div className="company-logo">
                    <img
                      src={sitePath('/assets/' + c.image)}
                      alt={c.name}
                      loading="lazy"
                    />
                  </div>
                  <h3>{c.name}</h3>
                  <p>
                    {zh
                      ? [
                          'AI驱动解决方案通过多语言支持、先进分析和一站式AI基础设施，改变金融机构的客户互动方式。',
                          '将企业股份转化为代币化数字资产，赋能上市公司应对恶意做空、释放全球流动性、实现AI驱动交易，并拓展全球投资者网络。',
                          '开发先进的AI数据中心，提供可扩展、高效节能的解决方案，以支持全球AI基础设施需求。',
                          '是亚洲和欧洲最具性价比的跨境支付生态系统，主要服务于头部电子钱包、银行和汇款公司。',
                        ][i]
                      : c.text}
                  </p>
                  <a href={sitePath(c.url)} target="_blank" rel="noreferrer">
                    Learn More <ArrowUpRight size={17} />
                  </a>
                </article>
              ))}
            </div>
          </div>
        </section>
        <section className="wrap feature">
          <div>
            <span className="eyebrow">FEATURED</span>
            <h2>
              {zh ? (
                <>
                  股份代币化
                  <br />
                  现已上线
                </>
              ) : (
                <>
                  Share Tokenization
                  <br />
                  Now Available
                </>
              )}
            </h2>
            <p>
              {zh
                ? 'CURRENC Group 已推出专属的股份代币化页面，为符合资格的股东提供有关方案详情、流程及后续步骤的信息。'
                : 'CURREN•C Group has launched a dedicated share tokenization page for eligible shareholders seeking more information on the offering, process, and next steps.'}
            </p>
          </div>
          <a
            className="button dark"
            href="https://www.currencgroup.com/tokenization"
            target="_blank"
            rel="noreferrer"
          >
            {zh ? '查看代币化详情' : 'View Tokenization Details'}{' '}
            <ArrowUpRight size={18} />
          </a>
        </section>
        <section className="news-section section">
          <div className="wrap">
            <div className="section-heading">
              <h2>{zh ? '新闻发布' : 'Latest News'}</h2>
              <a href={sitePath(zh ? '/zh/news' : '/news')}>
                {zh ? '过去的新闻' : 'View All News'} <ArrowRight size={18} />
              </a>
            </div>
            <div className="news-grid">
              {news.slice(0, 3).map((n) => (
                <article className="news-card" key={n.url}>
                  <time>
                    {new Date(n.date + 'T12:00:00').toLocaleDateString(
                      'en-US',
                      { month: 'long', day: 'numeric', year: 'numeric' },
                    )}
                  </time>
                  <h3>
                    <a href={sitePath(n.url)} target="_blank" rel="noreferrer">
                      {n.title}
                    </a>
                  </h3>
                  <a
                    className="read-more"
                    href={sitePath(n.url)}
                    target="_blank"
                    rel="noreferrer"
                  >
                    Read More <ArrowUpRight size={18} />
                  </a>
                </article>
              ))}
            </div>
          </div>
        </section>
        <section className="wrap section presentations-events">
          <div>
            <div className="section-heading">
              <h2>{zh ? '演示材料发布' : 'Latest Presentation'}</h2>
              <a
                href={sitePath(zh ? '/zh/events' : '/events')}
                aria-label="All presentations"
              >
                <ArrowRight />
              </a>
            </div>
            <a
              href={sitePath('/assets/CURRENC-Corp-Deck_Nov-10.pdf')}
              target="_blank"
              className="deck-cover"
            >
              <img src={sitePath('/assets/logo.svg')} alt="CURRENC Group" />
              <span>
                Corporate
                <br />
                Presentation
              </span>
              <small>November 2025</small>
              <Download />
            </a>
            <a
              className="text-link"
              href={sitePath('/assets/CURRENC-Corp-Deck_Nov-10.pdf')}
              download
            >
              {zh ? '下载 PDF' : 'Download PDF'} <Download size={17} />
            </a>
          </div>
          <div>
            <div className="section-heading">
              <h2>{zh ? '即将举行的活动' : 'Latest Events'}</h2>
              <a href={sitePath(zh ? '/zh/events' : '/events')} aria-label="All events">
                <ArrowRight />
              </a>
            </div>
            <article className="event">
              <time>February 25, 2026</time>
              <h3>Extraordinary General Meeting 2026</h3>
              <a
                href="https://virtualshareholdermeeting.com/CURR2026"
                target="_blank"
                rel="noreferrer"
              >
                Webcast <ArrowUpRight size={17} />
              </a>
            </article>
            <article className="event">
              <time>April 16, 2025</time>
              <h3>
                CURRENC Group Inc. Fiscal Year 2024 Earnings Conference Call
              </h3>
              <a
                href="https://events.q4inc.com/attendee/835144607"
                target="_blank"
                rel="noreferrer"
              >
                Webcast <ArrowUpRight size={17} />
              </a>
            </article>
            <a className="text-link" href={sitePath(zh ? '/zh/events' : '/events')}>
              {zh ? '过去的活动' : 'View All Events'} <ArrowRight size={17} />
            </a>
          </div>
        </section>
      </main>
      <Footer zh={zh} />
    </div>
  );
}

export default function Page() {
  return <Home />;
}
