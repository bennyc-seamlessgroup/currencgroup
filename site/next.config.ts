import type { NextConfig } from 'next';
const pagesPath = process.env.NEXT_PUBLIC_BASE_PATH || '';
const nextConfig: NextConfig = { output: 'export', assetPrefix: pagesPath };
export default nextConfig;
