/** Local links work at / in preview and under the GitHub Pages project path. */
const basePath = process.env.NEXT_PUBLIC_BASE_PATH?.replace(/\/$/, '') || '';

export function sitePath(path: string): string {
  if (!basePath || !path.startsWith('/') || path.startsWith('//')) return path;
  if (path === '/') return `${basePath}/`;
  const match = path.match(/^([^?#]+)(.*)$/);
  if (!match) return `${basePath}${path}`;
  const [, pathname, suffix] = match;
  if (pathname.startsWith('/assets/')) return `${basePath}${path}`;
  return `${basePath}${pathname.endsWith('/') ? pathname : `${pathname}/`}${suffix}`;
}
