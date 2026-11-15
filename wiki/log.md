# Wiki Log

Append-only chronological record of operations on the wiki. Each entry begins with `## [YYYY-MM-DD] <op> | <description>` so it's parseable with `grep "^## \[" log.md | tail -N`.

Operations:
- `ingest` — a source was processed into the wiki.
- `query` — a question was answered against the wiki (typically only logged when the answer was filed back as synthesis).
- `lint` — a health check was run.
- `schema` — the schema was modified.
- `shard` — an index was sharded.

---

## [2026-11-15] schema | Added `deliverable` page type and tag taxonomy (8 tags + `fundamentals`, `course-logistics` added during first ingest); graph layer available but unused
## [2026-11-15] ingest | Batch: 13 EPM course sources (business case, D1–D3 instructions, D1 template, slides 0–4, PC1, PC2, exercise handout)
   pages: +13 sources, +5 entities, +17 concepts, +4 deliverables, +1 synthesis (smartxcharge-planning-anchors)
   flagged: deadline contradiction slides-0 vs delivery instructions (D1 20 vs 18 Nov; D2 4 vs 2 Dec; D3 files 16 vs 18 Dec) — see epm-course
   skipped: duplicate file "Delivery 1 Instructions (1).docx" (byte-identical to delivery-1-instructions)
   gaps: lectures T5–T12 (scope, scheduling, cost/EVM, risk, control, agile) not yet available; Template Risk Register workbook not provided
