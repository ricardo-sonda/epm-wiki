# EPM Wiki

An LLM-curated knowledge base for the Engineering Project Management (EPM/GPE) course, 2026/2027, including the SmartXCharge group project. Published at **https://ricardo-sonda.github.io/epm-wiki/**.

- `wiki/` — the knowledge base (Markdown with `[[wikilinks]]`); start at `wiki/index.md`.
- `site/` — Quartz configuration and build script.
- Raw course materials are kept locally and are not published.

## Build

Pushing to `main` deploys automatically via GitHub Actions. To preview locally (Node 22+):

```bash
bash site/build.sh --serve   # http://localhost:8080
```
