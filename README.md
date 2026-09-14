# CURRENC Group investor relations website

The website source is in [`site/`](site/). See its [README](site/README.md) for local setup, content updates, and the current feature status.

Run locally from `site/` with `npm install` and `npm run dev`. The static build is generated with `npm run build` into `site/dist/client/`.

The `audit/` directory keeps migration records and downloaded source references. `scripts/` contains the import and validation tools used to prepare the site. Generated builds and dependencies are excluded from Git.

This repository contains the source project. GitHub Pages publishes the static site from `main` at https://bennyc-seamlessgroup.github.io/currencgroup/. The public domain and production forms/email services are not configured yet.
