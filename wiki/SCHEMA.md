# Wiki Schema

This file is the configuration for this wiki. It documents the conventions, page types, tag taxonomy, and any workflow customizations. The LLM reads this first when entering the wiki, and its conventions override the defaults documented in the `llm-wiki` skill.

This file is **co-evolved with the user**. When the LLM notices a recurring pattern in your edits or feedback that isn't here, it will propose adding it. When something here stops fitting, prune it.

## Wiki location

- Wiki root: `wiki/`
- Raw sources: `raw/`
- Asset/image storage: `raw/assets/`

## Page types

This wiki uses these page types, each with a dedicated subdirectory:

- `source` (in `wiki/sources/`) — one summary page per ingested source.
- `entity` (in `wiki/entities/`) — pages about specific things: people, papers, products, places, organizations.
- `concept` (in `wiki/concepts/`) — pages about ideas, methods, frameworks, abstractions.
- `synthesis` (in `wiki/synthesis/`) — cross-cutting analyses, comparisons, query answers filed back.
- `deliverable` (in `wiki/deliverables/`) — one page per graded course deliverable or assignment (Delivery 1–3, PC1, PC2, PM template): requirements, deadlines, grading criteria, linked concepts, and status.

Add additional types here as the wiki evolves.

## Tag taxonomy

Keep this list small. Propose additions before using a new tag.

- `scope` — scope definition, WBS, requirements, deliverables breakdown.
- `schedule` — activities, sequencing, Gantt, critical path, milestones.
- `cost` — estimates, budgets, cost baselines, earned value.
- `risk` — risk identification, analysis, responses, registers.
- `stakeholders` — stakeholder identification, analysis, engagement, communication.
- `business-case` — project justification, financials, benefits, feasibility.
- `exercise` — worked problems, practice questions, and their solutions.
- `smartxcharge` — anything specific to the SmartXCharge case project.
- `fundamentals` — core PM theory from lectures T1–T4 (definitions, structures, life cycle, success).
- `course-logistics` — EPM course organisation: faculty, evaluation, dates, tests.

## Page sizing

- Soft cap: 400 lines / ~2,000 words. Consider splitting beyond this.
- Hard cap: 800 lines. Must split.

## Frontmatter requirements

Every page must have:
- `type`
- `title`
- `tags`
- `created`
- `updated`

Plus type-specific:
- `source` pages: `authors`, `url` (if applicable), `raw`, `ingested`
- Non-source pages: `sources` listing the source-summary pages drawn from

## Optional graph metadata

Pages may declare typed graph metadata under a top-level `graph:` key. This is the source of truth for the compiled knowledge graph under `wiki/graph/`. Markdown remains canonical; the graph is a regenerable index. Pages without `graph:` still appear as nodes (derived from `type`/`kind`) and still contribute `mentions` edges from body `[[wikilinks]]`.

```yaml
graph:
  node_id: person:praney-behl       # optional; default <node_type>:<slug>
  node_type: person                  # optional; default mapped from type/kind via ontology
  canonical: true                    # mark as canonical when multiple slugs alias the same entity
  aliases: [Praney, praney@example.com]
  relationships:
    - predicate: founded
      object: company:seedblocks
      source: praney-founder-context-dump   # source-page slug
      evidence: "Solo technical founder and sole director..."
      confidence: high               # high | medium | low
      status: current                # current | historical | proposed | disputed | superseded
      # optional:
      # valid_from: 2025-01-15
      # valid_to: 2026-03-01
      # notes: "..."
      # raw_ref: "raw/founder-dump.md#L42"
      # contradicts: edge-id-or-source-slug
      # supersedes: edge-id-or-source-slug
```

Required fields on every relationship: `predicate`, `object`, `source`, `evidence`, `confidence`, `status`. Predicates and the subject/object types they accept are declared in `wiki/graph/ontology.yaml`. Typed semantic edges must be supported by an explicit source — never emit one inferred from training data alone.

## Index structure

(Update this section when sharding.)

Currently flat: a single `wiki/index.md` listing all pages.

When the wiki passes ~150 pages or `index.md` exceeds 300 lines, shard into `wiki/indexes/<type>.md` and update this section.

## Retrieval

- Search is section-level hybrid by default: `uv run --script skills/llm-wiki/scripts/wiki_search.py "query" --json`.
- Semantic backend: local FastEmbed + sqlite-vec (`BAAI/bge-small-en-v1.5`, 384 dimensions). No wiki or query text leaves the machine.
- First semantic use downloads model artifacts to `~/.cache/llm-wiki/fastembed/`; set `FASTEMBED_CACHE_PATH` to override the model cache.
- Semantic setup verified: 2026-11-15
- `wiki/.wiki-cache/` holds regenerable retrieval artifacts: `search-index.json` (parse cache) and `embeddings.sqlite` (section metadata + sqlite-vec vectors). Safe to delete; never edit by hand; gitignored.
- The vector index is content-hashed: only new or changed sections are re-embedded, deleted sections are removed, and model/schema changes rebuild it automatically.
- Dependency-free lexical path: `python skills/llm-wiki/scripts/wiki_search.py "query" --no-embed` (direct Python bypasses PEP 723 dependency resolution). A missing or failed local backend also falls back to lexical search without failing the command.

## Graph layer

The wiki has an optional compiled graph layer under `wiki/graph/`:

- `wiki/graph/ontology.yaml` — declares node types and predicates. **Tracked.** Edit this when you introduce new predicates or domain types.
- `wiki/graph/nodes.jsonl`, `wiki/graph/edges.jsonl` — generated. Track in git only if you want graph diffs in PRs.
- `wiki/graph/graph.sqlite` — generated. Gitignored by default.
- `wiki/graph/graph.graphml` — generated. Track only if you want to diff it.

Generation is reproducible from markdown via `scripts/wiki_graph_extract.py`. The graph can be deleted at any time and rebuilt without losing knowledge — markdown is canonical.

## Workflow customizations

- Graph layer: available but unused. `wiki/graph/` and `ontology.yaml` exist, but ingests do not add `graph:` frontmatter unless the user opts in. Graph lint/extract are optional.

## User preferences

(Empty initially. As the user expresses style preferences — "always include a 'Why this matters' section on concept pages", "never use bullet lists in summaries", "prefer comparative tables for synthesis pages" — capture them here so they persist across sessions.)

## Lint cadence

- Structural lint: after every 5 ingests.
- Semantic lint: weekly or after every 20 ingests.
- Gap-finding: monthly.
- Graph lint + extract: after every ingest that adds typed `graph.relationships`.

Adjust based on the wiki's growth rate.

## Skill evolution

Optional: capture verified task experience with `/wiki:learn` and propose tested procedural improvements with `/wiki:evolve`. Existing pages and workflows do not change. Raw experience JSON lives under the configured raw root's `experiences/` directory and is immutable. Consolidate observations into ordinary source/concept pages with evidence, applicability, model/tool versions and counterexamples. Optional pattern fields are `kind: experience-pattern` and `status: hypothesis|supported|superseded`.

`wiki/.evolution/` holds durable experiment snapshots, evidence, diffs and measured outcomes; it is not a cache. Wiki search, lint, stats and graph extraction exclude it. Keep searchable summaries in normal synthesis pages linked to the source/pattern pages and index. Private records must not be published with shared skills.

Candidate edits remain isolated until reviewed, selected on validation tasks, independently measured on untouched final-test tasks, and explicitly applied within the user's authorization. Failed edits leave the active skill unchanged while their records persist. Do not repeat a rejected proposal without new evidence or changed conditions. Keep factual wiki access during normal work; do not inject experiment history into task execution. Correct unsupported lessons without deleting their raw evidence. Follow the installed skill's `references/evolution-workflow.md` for the runner contract, cost limits and recovery.
