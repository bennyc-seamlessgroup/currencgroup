import type { Metadata } from 'next';
import './globals.css';
import './tradingview.css';
export const metadata: Metadata = {
  title: 'CURRENC Group — Investor Relations',
  description:
    'CURRENC Group investor relations: company information, news, presentations, governance and financial filings.',
};
export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
