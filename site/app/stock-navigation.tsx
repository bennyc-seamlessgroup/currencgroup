'use client';
import { useEffect, useState } from 'react';
import { groups } from '@/data/navigation';
import { labels } from '@/data/chinese';

export function StockNavigation({ zh = false }: { zh?: boolean }) {
  const [active, setActive] = useState('stock-quote');
  useEffect(() => {
    const sync = () =>
      setActive(window.location.hash.slice(1) || 'stock-quote');
    sync();
    window.addEventListener('hashchange', sync);
    return () => window.removeEventListener('hashchange', sync);
  }, []);
  return (
    <nav
      className="wrap about-nav stock-navigation"
      aria-label={zh ? '股票信息' : 'Stock information'}
    >
      {groups[2].items.map(([title, path]) => {
        const id = path.split('#')[1];
        return (
          <a
            key={id}
            href={'#' + id}
            aria-current={active === id ? 'location' : undefined}
          >
            {zh ? labels[title] : title}
          </a>
        );
      })}
    </nav>
  );
}
