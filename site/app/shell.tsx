'use client';
import { sitePath } from '@/lib/site-path';
import { useState, useId, type SyntheticEvent } from 'react';
import { ArrowUpRight, ChevronDown, Menu, Search, X } from 'lucide-react';
import {
  DropdownMenu,
  DropdownMenuTrigger,
  DropdownMenuContent,
  DropdownMenuItem,
} from '@/components/ui/dropdown-menu';
import { Checkbox } from '@/components/ui/checkbox';
import { groups } from '@/data/navigation';
import { labels } from '@/data/chinese';
import {
  EMAIL_ALERT_ACCESS_KEY,
  idleSubmission,
  submitWeb3Form,
  type SubmissionStatus,
} from '@/lib/web3forms';
export function Header({ zh = false }: { zh?: boolean }) {
  const tr = (s: string) => (zh ? labels[s] || s : s);
  const href = (s: string) => sitePath(zh ? '/zh/' + s : '/' + s);
  const [mobile, setMobile] = useState(false);
  const [search, setSearch] = useState(false);
  return (
    <>
      <a className="skip" href="#main">
        Skip to content
      </a>
      <header className="header">
        <div className="header-inner">
          <a
            href={sitePath(zh ? '/chinese' : '/')}
            aria-label="CURRENC Group home"
          >
            <img
              className="logo"
              src={sitePath('/assets/logo.svg')}
              alt="curren·c"
            />
          </a>
          <nav className="desktop-nav" aria-label="Main navigation">
            <a href={sitePath(zh ? '/chinese' : '/')}>{tr('Overview')}</a>
            {groups.map((g) => (
              <DropdownMenu key={g.title}>
                <DropdownMenuTrigger className="nav-trigger">
                  {tr(g.title)}
                  <ChevronDown size={12} />
                </DropdownMenuTrigger>
                <DropdownMenuContent className="nav-dropdown">
                  {g.items.map(([name, path]) => (
                    <DropdownMenuItem
                      key={path}
                      render={<a href={href(path)} />}
                    >
                      {tr(name)}
                    </DropdownMenuItem>
                  ))}
                </DropdownMenuContent>
              </DropdownMenu>
            ))}
          </nav>
          <div className="header-actions">
            <button
              aria-label="Search website"
              onClick={() => setSearch(!search)}
            >
              <Search size={19} />
            </button>
            <a href={sitePath(zh ? '/' : '/chinese')} className="language">
              {zh ? 'ENG' : '简'}
            </a>
            <button
              className="mobile-toggle"
              aria-label={mobile ? 'Close menu' : 'Open menu'}
              aria-expanded={mobile}
              onClick={() => setMobile(!mobile)}
            >
              {mobile ? <X /> : <Menu />}
            </button>
          </div>
        </div>
        {search && (
          <form className="search-bar" action={sitePath('/search')}>
            <input
              name="q"
              autoFocus
              placeholder="Search investor information"
              aria-label="Search query"
            />
            <button type="submit">
              Search <Search size={16} />
            </button>
          </form>
        )}
        {mobile && (
          <nav className="mobile-nav">
            <a href={sitePath(zh ? '/chinese' : '/')}>{tr('Overview')}</a>
            {groups.map((g) => (
              <div key={g.title}>
                <strong>{tr(g.title)}</strong>
                {g.items.map(([n, p]) => (
                  <a key={p} href={href(p)}>
                    {tr(n)}
                  </a>
                ))}
              </div>
            ))}
          </nav>
        )}
      </header>
    </>
  );
}
export function AlertForm({ zh = false }: { zh?: boolean }) {
  const id = useId();
  const choices = [
    'News',
    'SEC Filings',
    'End of Day Stock Quote',
    'Events & Presentations',
  ];
  const [selected, setSelected] = useState<string[]>([]);
  const [consent, setConsent] = useState(false);
  const [status, setStatus] = useState<SubmissionStatus>(idleSubmission);

  async function handleSubmit(
    event: SyntheticEvent<HTMLFormElement, SubmitEvent>,
  ) {
    event.preventDefault();
    if (!selected.length) {
      setStatus({
        state: 'error',
        message: 'Please select at least one alert category.',
      });
      return;
    }
    if (!consent) {
      setStatus({
        state: 'error',
        message: 'Please confirm that you want to receive investor updates.',
      });
      return;
    }
    const form = event.currentTarget;
    setStatus({ state: 'sending', message: 'Sending your request…' });
    try {
      await submitWeb3Form(form, EMAIL_ALERT_ACCESS_KEY, {
        subject: 'CURRENC Investor Email Alert Signup',
        from_name: 'CURRENC Group Investor Relations',
        'Request Type': 'Subscribe to investor email alerts',
        'Alert Categories': selected.join(', '),
        Consent: 'Yes',
      });
      form.reset();
      setSelected([]);
      setConsent(false);
      setStatus({
        state: 'success',
        message:
          'Thank you. Your email alert request has been sent to Investor Relations for processing.',
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
    <form className="alert-form" onSubmit={handleSubmit}>
      <input
        className="form-honeypot"
        type="checkbox"
        name="botcheck"
        tabIndex={-1}
        autoComplete="off"
        aria-hidden="true"
      />
      <label htmlFor={id + '-email'}>
        {zh ? '电子邮件地址' : 'Email Address'}
      </label>
      <input
        id={id + '-email'}
        name="email"
        type="email"
        placeholder={zh ? '请输入电子邮件地址' : 'Enter your email address'}
        autoComplete="email"
        required
      />
      <fieldset className="alert-fieldset">
        <legend>
          {zh
            ? '选择您希望收到的更新'
            : 'Select the updates you would like to receive'}
        </legend>
        <div className="alert-options">
          {choices.map((choice, index) => (
            <label key={choice}>
              <Checkbox
                id={id + '-' + index}
                checked={selected.includes(choice)}
                onCheckedChange={(checked) =>
                  setSelected((current) =>
                    checked
                      ? [...current, choice]
                      : current.filter((item) => item !== choice),
                  )
                }
              />
              <span>{choice}</span>
            </label>
          ))}
        </div>
      </fieldset>
      <label className="form-consent" htmlFor={id + '-consent'}>
        <Checkbox
          id={id + '-consent'}
          checked={consent}
          onCheckedChange={setConsent}
        />
        <span>
          {zh
            ? '我同意 CURRENC Group 使用我的电子邮件地址发送所选的投资者更新。'
            : 'I consent to CURRENC Group using my email address to send the selected investor updates.'}
        </span>
      </label>
      <button className="button light" disabled={status.state === 'sending'}>
        {status.state === 'sending'
          ? zh
            ? '正在发送…'
            : 'Sending…'
          : zh
            ? '注册'
            : 'Sign Up'}{' '}
        <ArrowUpRight size={16} />
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
export function Footer({ zh = false }: { zh?: boolean }) {
  return (
    <footer>
      <div className="wrap footer-top">
        <div>
          <h3>{zh ? '联系我们' : 'Contact Us'}</h3>
          <p>
            Currenc Group Inc.
            <br />
            410 North Bridge Road
            <br />
            SPACES City Hall
            <br />
            Singapore 188726
          </p>
          <a href="mailto:investors@currencgroup.com">
            investors@currencgroup.com
          </a>
          <a
            className="social"
            href="https://www.linkedin.com/company/currencgroupinc/"
            target="_blank"
            rel="noreferrer"
            aria-label="CURRENC on LinkedIn"
          >
            <span aria-hidden="true" style={{ fontWeight: 700, fontSize: 22 }}>
              in
            </span>
          </a>
        </div>
        <div>
          <h3>{zh ? '快速链接' : 'Quick Links'}</h3>
          <a href={sitePath('/sec-filings')}>SEC Filings</a>
          <a href={sitePath('/faqs')}>Investor FAQs</a>
          <a href={sitePath('/information-request')}>
            Information Request Form
          </a>
          <a
            href="https://www.currencgroup.com/tokenization"
            target="_blank"
            rel="noreferrer"
          >
            Share Tokenization <ArrowUpRight size={14} />
          </a>
        </div>
        <div>
          <h3>{zh ? '邮件订阅' : 'Investor Email Alerts'}</h3>
          <AlertForm zh={zh} />
        </div>
      </div>
      <div className="wrap footer-bottom">
        <a href={sitePath('/')}>
          <img src={sitePath('/assets/logo.svg')} alt="CURRENC Group" />
        </a>
        <span>
          © {new Date().getFullYear()} Currenc Group. All rights reserved.
        </span>
        <a href={sitePath('/site-map')}>Site Map</a>
      </div>
    </footer>
  );
}
export function Quote() {
  return (
    <div className="quote">
      <div>
        <span>NASDAQ: CURR</span>
        <strong>—</strong>
      </div>
      <div>
        <span>Stock quote</span>
        <small>Preview · market data not connected</small>
      </div>
      <a href={sitePath('/stock')} aria-label="View stock information">
        <ArrowUpRight />
      </a>
    </div>
  );
}
