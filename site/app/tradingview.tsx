"use client";

import { useEffect, useRef, useState } from 'react';

const symbolUrl = 'https://www.tradingview.com/symbols/NASDAQ-CURR/';
type WidgetKind = 'ticker' | 'quote' | 'chart';

export function TradingView({ kind, zh = false }: { kind: WidgetKind; zh?: boolean }) {
  const host = useRef<HTMLDivElement>(null);
  const [failed, setFailed] = useState(false);

  useEffect(() => {
    const mount = host.current;
    if (!mount) return;
    setFailed(false);
    // Each effect owns its container so a late vendor response cannot replace a newer widget.
    const container = document.createElement('div');
    container.className = 'tradingview-widget-container';
    const script = document.createElement('script');
    script.async = true;
    script.onerror = () => setFailed(true);
    if (kind === 'ticker') {
      const ticker = document.createElement('tv-single-ticker');
      ticker.setAttribute('symbol', 'NASDAQ:CURR');
      container.appendChild(ticker);
      script.type = 'module';
      script.src = 'https://widgets.tradingview-widget.com/w/en/tv-single-ticker.js';
    } else {
      const widget = document.createElement('div');
      widget.className = 'tradingview-widget-container__widget';
      container.appendChild(widget);
      script.src = kind === 'chart'
        ? 'https://s3.tradingview.com/external-embedding/embed-widget-advanced-chart.js'
        : 'https://s3.tradingview.com/external-embedding/embed-widget-symbol-info.js';
      script.textContent = JSON.stringify(kind === 'chart' ? {
        autosize: true, symbol: 'NASDAQ:CURR', interval: 'D',
        timezone: 'America/New_York', theme: 'light', style: '3',
        locale: zh ? 'zh_TW' : 'en', allow_symbol_change: false,
        calendar: false, support_host: 'https://www.tradingview.com',
      } : {
        symbol: 'NASDAQ:CURR', width: '100%', locale: zh ? 'zh_TW' : 'en',
        colorTheme: 'light', isTransparent: true,
      });
    }
    const observer = new MutationObserver(() => {
      const frame = container.querySelector('iframe');
      if (frame) frame.title = kind === 'chart' ? 'CURRENC stock chart by TradingView' : 'CURRENC stock quote by TradingView';
    });
    observer.observe(container, { childList: true, subtree: true });
    mount.appendChild(container);
    container.appendChild(script);
    return () => {
      observer.disconnect();
      script.onerror = null;
      container.remove();
    };
  }, [kind, zh]);

  return (
    <div className={`market-widget market-widget--${kind}`}>
      <div className="market-widget-host" ref={host} />
      {failed && <p role="status">{zh ? '暫時無法載入市場數據，請使用下方連結。' : 'Market data could not load. Please use the TradingView link below.'}</p>}
      {kind !== 'ticker' && <div className="tradingview-widget-copyright">
        <a href={symbolUrl} rel="noopener noreferrer" target="_blank"><span className="blue-text">{kind === 'chart' ? 'CURR chart' : 'CURR stock price'}</span></a><span className="trademark"> by TradingView</span>
      </div>}
      <noscript><a href={symbolUrl}>View CURR on TradingView</a></noscript>
    </div>
  );
}

export function Quote({ zh = false }: { zh?: boolean }) {
  return <div className="market-strip">
    <TradingView kind="ticker" zh={zh} />
    <div className="market-strip-copy">
      <span>{zh ? '納斯達克上市 · CURR' : 'NASDAQ listed · CURR'}</span>
      <small>{zh ? '延遲市場數據 · 美元' : 'Delayed market data · USD'}</small>
    </div>
    <a className="market-stock-link" href={zh ? '/zh/stock' : '/stock'}>{zh ? '股票資訊' : 'Stock information'} <span aria-hidden="true">↗</span></a>
    <a className="market-fallback" href={symbolUrl} target="_blank" rel="noopener noreferrer">{zh ? '在 TradingView 查看 CURR' : 'View CURR on TradingView'}</a>
  </div>;
}
