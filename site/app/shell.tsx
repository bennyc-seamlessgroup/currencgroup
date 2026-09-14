'use client';
import { useState, useId } from 'react';
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
export function Header({ zh = false }: { zh?: boolean }) {
  const tr = (s: string) => (zh ? labels[s] || s : s);
  const href = (s: string) => (zh ? '/zh/' + s : '/' + s);
  const [mobile, setMobile] = useState(false);
  const [search, setSearch] = useState(false);
  return (
    <>
      <a className="skip" href="#main">
        Skip to content
      </a>
      <header className="header">
        <div className="header-inner">
          <a href={zh ? '/chinese' : '/'} aria-label="CURRENC Group home">
            <img className="logo" src="/assets/logo.svg" alt="curren·c" />
          </a>
          <nav className="desktop-nav" aria-label="Main navigation">
            <a href={zh ? '/chinese' : '/'}>{tr('Overview')}</a>
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
            <a href={zh ? '/' : '/chinese'} className="language">
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
          <form className="search-bar" action="/search">
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
            <a href={zh ? '/chinese' : '/'}>{tr('Overview')}</a>
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
export function AlertForm() {
  const id = useId();
  return (
    <div className="alert-form">
      <label htmlFor={id + '-email'}>Email Address</label>
      <input
        id={id + '-email'}
        type="email"
        placeholder="Enter your email address"
        disabled
      />
      <div className="alert-options">
        {[
          'News',
          'SEC Filings',
          'End of Day Stock Quote',
          'Events & Presentations',
        ].map((s, i) => (
          <label key={s}>
            <Checkbox disabled id={id + '-' + i} />
            <span>{s}</span>
          </label>
        ))}
      </div>
      <button className="button light" disabled>
        Sign Up <ArrowUpRight size={16} />
      </button>
      <p className="preview-note">
        Preview only — email alerts are not connected.
      </p>
    </div>
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
          <a href="/sec-filings">SEC Filings</a>
          <a href="/faqs">Investor FAQs</a>
          <a href="/information-request">Information Request Form</a>
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
          <AlertForm />
        </div>
      </div>
      <div className="wrap footer-bottom">
        <a href="/">
          <img src="/assets/logo.svg" alt="CURRENC Group" />
        </a>
        <span>
          © {new Date().getFullYear()} Currenc Group. All rights reserved.
        </span>
        <a href="/site-map">Site Map</a>
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
      <a href="/stock" aria-label="View stock information">
        <ArrowUpRight />
      </a>
    </div>
  );
}
