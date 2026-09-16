'use client';
import { sitePath } from '@/lib/site-path';
import { useState, useEffect, type SyntheticEvent } from 'react';
import {
  ArrowRight,
  ArrowUpRight,
  Download,
  FileText,
  Mail,
  MapPin,
} from 'lucide-react';
import {
  Accordion,
  AccordionItem,
  AccordionTrigger,
  AccordionContent,
} from '@/components/ui/accordion';
import {
  Select,
  SelectTrigger,
  SelectValue,
  SelectContent,
  SelectItem,
} from '@/components/ui/select';
import {
  Table,
  TableHeader,
  TableBody,
  TableRow,
  TableHead,
  TableCell,
} from '@/components/ui/table';
import { profiles } from '@/data/profiles';
import { chineseProfiles, chineseFaqs } from '@/data/chinese';
import { faqs } from '@/data/faqs';
import { groups } from '@/data/navigation';
import news from '@/data/news.json';
import featuredNews from '@/data/featured-news.json';
import governance from '@/data/governance.json';
import committees from '@/data/committees.json';
import filings from '@/data/filings.json';
import { AlertForm } from './shell';
import { Checkbox } from '@/components/ui/checkbox';
import { TradingView } from './tradingview';
import {
  EMAIL_ALERT_ACCESS_KEY,
  INFORMATION_REQUEST_ACCESS_KEY,
  idleSubmission,
  submitWeb3Form,
  type SubmissionStatus,
} from '@/lib/web3forms';
type News = { date: string; title: string; url: string; sourceDate?: string };
const fmt = (date: string) =>
  new Date(date + 'T12:00:00').toLocaleDateString('en-US', {
    month: 'long',
    day: 'numeric',
    year: 'numeric',
  });
function Filter({
  label,
  value,
  values,
  onChange,
}: {
  label: string;
  value: string;
  values: string[];
  onChange: (s: string) => void;
}) {
  return (
    <div className="filter">
      <span>{label}</span>
      <Select value={value} onValueChange={(v) => onChange(v || values[0])}>
        <SelectTrigger aria-label={label}>
          <SelectValue />
        </SelectTrigger>
        <SelectContent>
          {values.map((v) => (
            <SelectItem key={v} value={v}>
              {v}
            </SelectItem>
          ))}
        </SelectContent>
      </Select>
    </div>
  );
}
function NewsList({ items }: { items: News[] }) {
  const years = [...new Set(items.map((n) => n.date.slice(0, 4)))]
    .sort()
    .reverse();
  const [year, setYear] = useState(years[0] || 'All');
  const [query, setQuery] = useState('');
  const shown = items.filter(
    (n) =>
      (year === 'All' || n.date.startsWith(year)) &&
      n.title.toLowerCase().includes(query.toLowerCase()),
  );
  return (
    <>
      <div className="filters">
        <Filter
          label="Select Year"
          value={year}
          values={['All', ...years]}
          onChange={setYear}
        />
        <input
          className="news-search"
          aria-label="Search headlines"
          placeholder="Search headlines…"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
        />
      </div>
      <p className="result-count" role="status" aria-live="polite">
        {shown.length} {shown.length === 1 ? 'announcement' : 'announcements'}
        {year !== 'All' ? ' · ' + year : ''}
      </p>
      <div className="news-list announcement-list">
        {shown.map((n) => (
          <article key={n.url + n.date}>
            <time dateTime={n.date}>{fmt(n.date)}</time>
            <a
              href={sitePath(n.url)}
              target={n.url.startsWith('http') ? '_blank' : undefined}
              rel="noreferrer"
            >
              <h3>{n.title}</h3>
              <ArrowUpRight size={21} />
            </a>
            {n.sourceDate && n.sourceDate !== n.date && (
              <small>Original publication: {fmt(n.sourceDate)}</small>
            )}
          </article>
        ))}
        {shown.length === 0 && <p>No announcements match your search.</p>}
      </div>
    </>
  );
}
function Profiles({
  board = false,
  zh = false,
}: {
  board?: boolean;
  zh?: boolean;
}) {
  const list = zh ? chineseProfiles : profiles;
  const people = board ? list.slice(0, 5) : [list[0], list[4], list[5]];
  return (
    <div
      className={
        'leadership-list ' + (board ? 'board-list' : 'management-list')
      }
    >
      {people.map((p) => {
        const paragraphs = p.bio.split('\n');
        const portrait = board ? p.image : p.managementImage || p.image;
        return (
          <article className="leader-card" key={p.name}>
            <div className="leader-portrait">
              <img
                src={sitePath('/assets/' + portrait)}
                alt={p.name}
                loading="lazy"
              />
            </div>
            <div className="leader-copy">
              <h2>{p.name}</h2>
              {!board && <p className="leader-role">{p.role}</p>}
              <p className="leader-intro">{paragraphs[0]}</p>
              {paragraphs.length > 1 && (
                <BiographyDetails
                  name={p.name}
                  paragraphs={paragraphs.slice(1)}
                  zh={zh}
                />
              )}
            </div>
          </article>
        );
      })}
    </div>
  );
}
function BiographyDetails({
  name,
  paragraphs,
  zh,
}: {
  name: string;
  paragraphs: string[];
  zh: boolean;
}) {
  const [open, setOpen] = useState(false);
  return (
    <Accordion
      className="biography"
      value={open ? ['bio'] : []}
      onValueChange={(v) => setOpen(v.length > 0)}
    >
      <AccordionItem value="bio">
        <AccordionTrigger
          className="biography-toggle"
          aria-label={
            (open ? 'Close biography: ' : 'Read full biography: ') + name
          }
        >
          {zh
            ? open
              ? '收起履历'
              : '完整履历'
            : open
              ? 'Close biography'
              : 'Read full biography'}
        </AccordionTrigger>
        <AccordionContent className="biography-body" keepMounted>
          {paragraphs.map((text, i) => (
            <p key={i}>{text}</p>
          ))}
        </AccordionContent>
      </AccordionItem>
    </Accordion>
  );
}
function Governance({ zh = false }: { zh?: boolean }) {
  const committeeNames = zh
    ? ['审计委员会', '薪酬委员会', '提名及公司治理委员会']
    : committees.committees;
  return (
    <div className="governance-page">
      <section
        className="committee-section"
        aria-labelledby="committee-heading"
      >
        <h2 id="committee-heading">
          {zh ? '委员会组成' : 'Committee Composition'}
        </h2>
        <div
          className="committee-table-frame"
          role="region"
          aria-label={zh ? '委员会组成表' : 'Committee composition table'}
          tabIndex={0}
        >
          <Table className="committee-table">
            <caption className="sr-only">
              {zh ? '委员会组成表' : 'Committee Composition Table'}
            </caption>
            <TableHeader>
              <TableRow>
                <TableHead scope="col">{zh ? '董事' : 'Director'}</TableHead>
                {committeeNames.map((n) => (
                  <TableHead scope="col" key={n}>
                    {n}
                  </TableHead>
                ))}
              </TableRow>
            </TableHeader>
            <TableBody>
              {committees.members.map((member) => (
                <TableRow key={member.name}>
                  <TableHead scope="row">{member.name}</TableHead>
                  {member.roles.map((role, i) => (
                    <TableCell key={i}>
                      {role ? (
                        <span
                          className={
                            'committee-role ' +
                            (role === 'Chair' ? 'chair' : 'member')
                          }
                        >
                          {zh ? (role === 'Chair' ? '主席' : '成员') : role}
                        </span>
                      ) : (
                        <span aria-label={zh ? '未列出职务' : 'No role listed'}>
                          —
                        </span>
                      )}
                    </TableCell>
                  ))}
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </div>
        <p className="committee-key">
          {zh
            ? '主席：委员会主席 · 成员：委员会成员'
            : 'Chair: Committee Chair · Member: Committee Member'}
        </p>
      </section>
      <section
        className="governance-documents"
        aria-labelledby="governance-documents-heading"
      >
        <h2 id="governance-documents-heading">
          {zh ? '公司治理文件' : 'Governance Documents'}
        </h2>
        <div className="governance-document-grid">
          {governance.map((g) => (
            <a
              key={g.file}
              href={sitePath('/assets/' + g.file)}
              target="_blank"
              rel="noreferrer"
            >
              <FileText className="governance-file-icon" size={26} />
              <span>
                <strong>Currenc Group {g.title}</strong>
                <small>{zh ? 'PDF 文件' : 'PDF document'}</small>
              </span>
              <Download size={20} />
            </a>
          ))}
        </div>
      </section>
    </div>
  );
}
function FAQs({ zh = false }: { zh?: boolean }) {
  const list = zh ? chineseFaqs : faqs;
  const [openItems, setOpenItems] = useState<string[]>([list[0].q]);
  const all = openItems.length === list.length;
  return (
    <>
      <button
        className="text-link display-all"
        onClick={() => setOpenItems(all ? [] : list.map((item) => item.q))}
      >
        {zh
          ? all
            ? '收起全部'
            : '显示全部'
          : all
            ? 'Collapse All'
            : 'Display All'}
      </button>
      <Accordion
        multiple
        value={openItems}
        onValueChange={setOpenItems}
        className="profile-list"
      >
        {list.map((f) => (
          <AccordionItem key={f.q} value={f.q}>
            <AccordionTrigger className="profile-heading">
              {f.q}
            </AccordionTrigger>
            <AccordionContent className="profile-body">
              {f.a.split('\n').map((t, i) => (
                <p key={i}>{t}</p>
              ))}
              {f.q.includes('Annual Report') && (
                <a href={sitePath('/sec-filings')}>View SEC Filings</a>
              )}
            </AccordionContent>
          </AccordionItem>
        ))}
      </Accordion>
    </>
  );
}
function Events() {
  const [year, setYear] = useState('All');
  return (
    <>
      <div className="events-intro">
        <div>
          <h2>Upcoming & Recent Events</h2>
          <p className="empty-copy">There are no upcoming events scheduled.</p>
        </div>
        <div>
          <h2>Featured Presentation</h2>
          <a
            className="document-card"
            href={sitePath('/assets/CURRENC-Corp-Deck_Nov-10.pdf')}
            target="_blank"
          >
            <FileText size={34} />
            <span>
              <strong>Corporate Presentation</strong>
              <small>November 11, 2025 · PDF</small>
            </span>
            <ArrowUpRight />
          </a>
        </div>
      </div>
      <div className="pdf-preview">
        <object
          data="/assets/CURRENC-Corp-Deck_Nov-10.pdf#view=FitH"
          type="application/pdf"
          aria-label="Corporate presentation PDF"
        >
          <p>
            Your browser cannot display this PDF.{' '}
            <a href={sitePath('/assets/CURRENC-Corp-Deck_Nov-10.pdf')}>
              Open the presentation
            </a>
            .
          </p>
        </object>
      </div>
      <a
        className="text-link"
        href={sitePath('/assets/CURRENC-Corp-Deck_Nov-10.pdf')}
        download
      >
        Download Presentation <Download size={17} />
      </a>
      <h2 className="archive-title">Archived Events & Presentations</h2>
      <Filter
        label="Select Year"
        value={year}
        values={['All', '2026', '2025']}
        onChange={setYear}
      />
      <div className="news-list event-archive">
        {(year === 'All' || year === '2026') && (
          <article>
            <time>February 25, 2026</time>
            <h3>Extraordinary General Meeting 2026</h3>
            <a
              className="text-link"
              href="https://virtualshareholdermeeting.com/CURR2026"
              target="_blank"
              rel="noreferrer"
            >
              Webcast <ArrowUpRight size={18} />
            </a>
            <a className="text-link" href={sitePath('/meeting-notice')}>
              Meeting notice <ArrowRight size={18} />
            </a>
          </article>
        )}
        {(year === 'All' || year === '2025') && (
          <>
            <article>
              <time>November 11, 2025</time>
              <h3>Corporate Presentation</h3>
              <a
                className="text-link"
                href={sitePath('/assets/CURRENC-Corp-Deck_Nov-10.pdf')}
                target="_blank"
              >
                Open PDF <ArrowUpRight size={18} />
              </a>
            </article>
            <article>
              <time>April 16, 2025</time>
              <h3>
                CURRENC Group Inc. Fiscal Year 2024 Earnings Conference Call
              </h3>
              <a
                className="text-link"
                href="https://events.q4inc.com/attendee/835144607"
                target="_blank"
                rel="noreferrer"
              >
                Webcast <ArrowUpRight size={18} />
              </a>
            </article>
            <article>
              <time>March 16, 2025</time>
              <h3>37th Annual Roth Conference</h3>
              <a
                className="text-link"
                href="https://event.summitcast.com/view/YsA9Ty4sRyad4m3F6KNZ7x/frxix4ozRhFSDR4hZEGvuW"
                target="_blank"
                rel="noreferrer"
              >
                Webcast <ArrowUpRight size={18} />
              </a>
            </article>
          </>
        )}
      </div>
    </>
  );
}
function Stock({ zh = false }: { zh?: boolean }) {
  return (
    <>
      <div className="notice">
        {zh
          ? '報價及圖表由 TradingView 提供，市場數據有延遲，價格以美元顯示。'
          : 'Quotes and charts by TradingView. Market data is delayed; prices are in USD.'}
      </div>
      <section id="stock-quote" className="stock-section">
        <h2>Stock Quote</h2>
        <TradingView kind="quote" zh={zh} />
      </section>
      <section id="stock-chart" className="stock-section">
        <h2>Stock Chart</h2>
        <TradingView kind="chart" zh={zh} />
      </section>
      <section id="historical" className="stock-section">
        <h2>Historical Stock Quote</h2>
        <p className="market-preview-note">
          Preview only · historical lookup is not connected. You can explore
          past prices in the chart above.
        </p>
        <div className="form-row">
          <label>
            Date
            <input type="date" disabled />
          </label>
          <button className="button dark" disabled>
            Look Up
          </button>
        </div>
        <Table>
          <TableHeader>
            <TableRow>
              {['Date', 'Open', 'High', 'Low', 'Close', 'Volume'].map((x) => (
                <TableHead key={x}>{x}</TableHead>
              ))}
            </TableRow>
          </TableHeader>
          <TableBody>
            <TableRow>
              {Array.from({ length: 6 }, (_, i) => (
                <TableCell key={i}>—</TableCell>
              ))}
            </TableRow>
          </TableBody>
        </Table>
      </section>
      <section id="calculator" className="stock-section">
        <h2>Investment Calculator</h2>
        <p className="market-preview-note">
          Preview only · investment calculations are not connected.
        </p>
        <div className="form-row">
          <label>
            Amount ($)
            <input disabled placeholder="Investment amount" type="number" />
          </label>
          <label>
            Start Date
            <input type="date" disabled />
          </label>
          <label>
            End Date
            <input type="date" disabled />
          </label>
        </div>
        <button className="button dark" disabled>
          Calculate Investment
        </button>
      </section>
    </>
  );
}
function RequestForm() {
  const [consent, setConsent] = useState(false);
  const [status, setStatus] = useState<SubmissionStatus>(idleSubmission);
  const fields = [
    ['First Name', 'first_name', 'text', true],
    ['Last Name', 'last_name', 'text', true],
    ['Email Address', 'email', 'email', true],
    ['Company', 'company', 'text', false],
    ['Title', 'title', 'text', false],
    ['Address', 'address', 'text', false],
    ['City', 'city', 'text', false],
    ['State / Province', 'state_province', 'text', false],
    ['Postal Code', 'postal_code', 'text', false],
    ['Country', 'country', 'text', true],
    ['Phone', 'phone', 'tel', false],
  ] as const;

  async function handleSubmit(
    event: SyntheticEvent<HTMLFormElement, SubmitEvent>,
  ) {
    event.preventDefault();
    if (!consent) {
      setStatus({
        state: 'error',
        message:
          'Please consent to the use of your information so we can respond.',
      });
      return;
    }
    const form = event.currentTarget;
    setStatus({ state: 'sending', message: 'Sending your request…' });
    try {
      await submitWeb3Form(form, INFORMATION_REQUEST_ACCESS_KEY, {
        subject: 'CURRENC Investor Information Request',
        from_name: 'CURRENC Group Investor Relations',
        'Request Type': 'Investor information request',
        Consent: 'Yes',
      });
      form.reset();
      setConsent(false);
      setStatus({
        state: 'success',
        message:
          'Thank you. Your request has been sent to CURRENC Investor Relations.',
      });
    } catch (error) {
      setStatus({
        state: 'error',
        message:
          error instanceof Error
            ? error.message
            : 'The request could not be sent. Please try again.',
      });
    }
  }

  return (
    <div className="request-form">
      <p>To request investor information, please complete the form below.</p>
      <form onSubmit={handleSubmit}>
        <input
          className="form-honeypot"
          type="checkbox"
          name="botcheck"
          tabIndex={-1}
          autoComplete="off"
          aria-hidden="true"
        />
        <div className="form-grid">
          {fields.map(([label, name, type, required]) => (
            <label key={name}>
              <span>
                {label}
                {required && <span aria-hidden="true"> *</span>}
              </span>
              <input
                name={name}
                type={type}
                required={required}
                autoComplete={
                  name === 'email'
                    ? 'email'
                    : name === 'phone'
                      ? 'tel'
                      : undefined
                }
              />
            </label>
          ))}
        </div>
        <label>
          <span>
            Comments / Information Requested <span aria-hidden="true">*</span>
          </span>
          <textarea name="message" rows={6} required />
        </label>
        <label
          className="form-consent form-consent--request"
          htmlFor="information-request-consent"
        >
          <Checkbox
            id="information-request-consent"
            checked={consent}
            onCheckedChange={setConsent}
          />
          <span>
            I consent to CURRENC Group using the information above to respond to
            my request.
          </span>
        </label>
        <button className="button dark" disabled={status.state === 'sending'}>
          {status.state === 'sending' ? 'Sending…' : 'Submit Request'}{' '}
          <ArrowRight size={17} />
        </button>
        {status.state !== 'idle' && (
          <p
            className={`form-status form-status--${status.state}`}
            role={status.state === 'error' ? 'alert' : 'status'}
          >
            {status.message}
          </p>
        )}
      </form>
    </div>
  );
}

function UnsubscribeForm() {
  const [status, setStatus] = useState<SubmissionStatus>(idleSubmission);
  async function handleSubmit(
    event: SyntheticEvent<HTMLFormElement, SubmitEvent>,
  ) {
    event.preventDefault();
    const form = event.currentTarget;
    setStatus({ state: 'sending', message: 'Sending your request…' });
    try {
      await submitWeb3Form(form, EMAIL_ALERT_ACCESS_KEY, {
        subject: 'CURRENC Investor Email Alert Unsubscribe Request',
        from_name: 'CURRENC Group Investor Relations',
        'Request Type': 'Unsubscribe from all investor email alerts',
      });
      form.reset();
      setStatus({
        state: 'success',
        message:
          'Your unsubscribe request has been sent to Investor Relations for processing.',
      });
    } catch (error) {
      setStatus({
        state: 'error',
        message:
          error instanceof Error
            ? error.message
            : 'The request could not be sent. Please try again.',
      });
    }
  }
  return (
    <form onSubmit={handleSubmit}>
      <input
        className="form-honeypot"
        type="checkbox"
        name="botcheck"
        tabIndex={-1}
        autoComplete="off"
        aria-hidden="true"
      />
      <input
        name="email"
        type="email"
        aria-label="Unsubscribe email address"
        placeholder="Email address"
        autoComplete="email"
        required
      />
      <button className="button dark" disabled={status.state === 'sending'}>
        {status.state === 'sending' ? 'Sending…' : 'Unsubscribe'}
      </button>
      {status.state !== 'idle' && (
        <p
          className={`form-status form-status--${status.state}`}
          role={status.state === 'error' ? 'alert' : 'status'}
        >
          {status.message}
        </p>
      )}
    </form>
  );
}
function SearchPage() {
  const [query, setQuery] = useState('');
  useEffect(
    () => setQuery(new URLSearchParams(window.location.search).get('q') || ''),
    [],
  );
  const pages = groups
    .flatMap((g) => g.items)
    .map(([title, url]) => ({ title, url: '/' + url }));
  const records = [...pages, ...news];
  const results = query.trim()
    ? records.filter((x) => x.title.toLowerCase().includes(query.toLowerCase()))
    : [];
  return (
    <>
      <label className="search-page-label">
        Search investor information
        <input
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder="Enter a company topic or headline"
        />
      </label>
      <p className="result-count">
        {query
          ? results.length + ' results'
          : 'Search pages and news announcements.'}
      </p>
      <div className="search-results">
        {results.map((x, i) => (
          <a
            key={x.url + i}
            href={sitePath(x.url)}
            target={x.url.startsWith('http') ? '_blank' : undefined}
            rel="noreferrer"
          >
            {x.title}
            <ArrowUpRight size={18} />
          </a>
        ))}
      </div>
    </>
  );
}
export function InnerContent({
  slug,
  zh = false,
}: {
  slug: string;
  zh?: boolean;
}) {
  switch (slug) {
    case 'management':
      return <Profiles zh={zh} />;
    case 'board':
      return <Profiles board zh={zh} />;
    case 'faqs':
      return <FAQs zh={zh} />;
    case 'news':
      return <NewsList items={news} />;
    case 'featured-news':
      return <NewsList items={featuredNews} />;
    case 'events':
      return <Events />;
    case 'stock':
      return <Stock zh={zh} />;
    case 'governance':
      return <Governance zh={zh} />;
    case 'contacts':
      return (
        <div className="contacts-grid">
          <div>
            <Mail size={30} />
            <h2>Currenc Group Investor Relations</h2>
            <a className="text-link" href="mailto:investors@currencgroup.com">
              investors@currencgroup.com <ArrowUpRight size={18} />
            </a>
          </div>
          <div>
            <MapPin size={30} />
            <h2>Corporate Headquarters</h2>
            <p>
              Currenc Group Inc.
              <br />
              410 North Bridge Road
              <br />
              SPACES City Hall
              <br />
              Singapore 188726
            </p>
          </div>
        </div>
      );
    case 'information-request':
      return <RequestForm />;
    case 'email-alerts':
      return (
        <div className="email-page">
          <h2>Stay informed</h2>
          <p>Select the investor updates you would like to receive.</p>
          <AlertForm zh={zh} />
          <div className="unsubscribe" id="unsubscribe">
            <h3>Unsubscribe</h3>
            <p>Manage your investor email subscriptions.</p>
            <UnsubscribeForm />
          </div>
        </div>
      );
    case 'site-map':
      return (
        <div className="sitemap">
          <div>
            <h2>
              <a href={sitePath('/')}>Overview</a>
            </h2>
          </div>
          {groups.map((g) => (
            <div key={g.title}>
              <h2>{g.title}</h2>
              {g.items.map(([n, p]) => (
                <a href={sitePath('/' + p)} key={p}>
                  {n}
                  <ArrowRight size={16} />
                </a>
              ))}
            </div>
          ))}
        </div>
      );
    case 'search':
      return <SearchPage />;
    case 'meeting-notice':
      return (
        <article className="article">
          <time>February 16, 2026</time>
          <p>
            Currenc Group Inc. will host its Extraordinary General Meeting of
            Shareholders on February 25, 2026 at 10:00 a.m. Eastern Standard
            Time (EST) in a virtual format.
          </p>
          <p>You may access the meeting on the day of the event by visiting:</p>
          <a
            className="button dark"
            href="https://www.virtualshareholdermeeting.com/CURR2026"
            target="_blank"
            rel="noreferrer"
          >
            Access Shareholder Meeting <ArrowUpRight size={17} />
          </a>
          <p>
            The bank, broker, or other nominee that holds your Currenc Group
            Inc. ordinary shares will provide you with proxy materials, which
            will include a unique control number. You will need this unique
            control number to access the virtual meeting platform and to vote
            during the meeting.
          </p>
          <p>
            Only shareholders of record as of January 15, 2026 (the “Record
            Date”) are entitled to attend and vote at the meeting.
          </p>
          <p>
            Additional information regarding the meeting and the matters to be
            voted upon is available in the Company’s proxy statement and related
            meeting materials.
          </p>
          <a className="text-link" href={sitePath('/news')}>
            View All News <ArrowRight size={17} />
          </a>
        </article>
      );
    case 'chinese':
      return <Chinese />;
    case 'sec-filings':
      return <Filings />;
    default:
      return null;
  }
}
function Chinese() {
  return (
    <article className="article" lang="zh-Hans">
      <h2>公司概况</h2>
      <p>
        Currenc Group
        Inc.（纳斯达克股票代码：CURR）是一家金融科技先驱，致力于通过人工智能（AI）变革全球金融服务。公司为全球金融机构提供全面的人工智能解决方案，包括
        SEAMLESS AI
        呼叫中心和其他人工智能工具，旨在降低成本、提高效率并提升客户满意度。
      </p>
      <p>
        公司的数字汇款平台使电子钱包、汇款公司和企业能够提供实时、全天候的全球支付服务，推动金融服务覆盖更多社区。
      </p>
      <h2>旗下公司</h2>
      <div className="sitemap">
        {[
          ['Seamless AI', 'https://seamlesslab.ai/'],
          ['Currenc Capital', 'https://currenc.capital/'],
          ['Currenc Power Corp', 'https://currencpower.com/'],
          ['Tranglo', 'https://www.tranglo.com/'],
        ].map(([n, u]) => (
          <a href={u} key={u} target="_blank" rel="noreferrer">
            {n}
            <ArrowUpRight size={17} />
          </a>
        ))}
      </div>
      <h2>投资者信息</h2>
      <div className="sitemap">
        {[
          ['投资者新闻', 'news'],
          ['活动与演示', 'events'],
          ['公司治理', 'governance'],
          ['证券交易委员会文件', 'sec-filings'],
          ['投资者联系', 'contacts'],
        ].map(([n, u]) => (
          <a href={sitePath('/' + u)} key={u}>
            {n}
            <ArrowRight size={17} />
          </a>
        ))}
      </div>
    </article>
  );
}
function Filings() {
  const latestFilingDate = filings[0]?.date;
  const [year, setYear] = useState('2026');
  const [form, setForm] = useState('All');
  const years = [...new Set(filings.map((f) => f.date.slice(0, 4)))]
    .sort()
    .reverse();
  const forms = [...new Set(filings.map((f) => f.form))].sort();
  const rows = filings.filter(
    (f) =>
      (year === 'All' || f.date.startsWith(year)) &&
      (form === 'All' || form === f.form),
  );
  return (
    <>
      <div className="section-heading">
        <h2>SEC Filings</h2>
        <a
          href="https://www.sec.gov/edgar/browse/?CIK=1862935&owner=exclude"
          target="_blank"
          rel="noreferrer"
        >
          View on SEC EDGAR <ArrowUpRight size={18} />
        </a>
      </div>
      <div className="filters">
        <Filter
          label="Select Year"
          value={year}
          values={['All', ...years]}
          onChange={setYear}
        />
        <Filter
          label="Filing Type"
          value={form}
          values={['All', ...forms]}
          onChange={setForm}
        />
      </div>
      <p className="result-count">
        {rows.length} {rows.length === 1 ? 'filing' : 'filings'} · SEC archive
        through {latestFilingDate ? fmt(latestFilingDate) : 'the latest update'}
      </p>
      <Table>
        <TableHeader>
          <TableRow>
            <TableHead>Date</TableHead>
            <TableHead>Form</TableHead>
            <TableHead>Description</TableHead>
            <TableHead>Document</TableHead>
          </TableRow>
        </TableHeader>
        <TableBody>
          {rows.map((f) => (
            <TableRow key={f.url}>
              <TableCell>{fmt(f.date)}</TableCell>
              <TableCell>
                <strong>{f.form}</strong>
              </TableCell>
              <TableCell>{f.description}</TableCell>
              <TableCell>
                <a href={sitePath(f.url)} target="_blank" rel="noreferrer">
                  View <ArrowUpRight size={16} />
                </a>
              </TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
      {!rows.length && <p>No filings match these filters.</p>}
      <p className="result-count">
        For filings published after{' '}
        {latestFilingDate ? fmt(latestFilingDate) : 'this archive'}, visit SEC
        EDGAR.
      </p>
    </>
  );
}
