# 1 Human - 100 Agents - 1 Billion$ — Book Development System

## Project Context

This repository is the knowledge base, research engine, and manuscript workspace for the book project **1 Human - 100 Agents - 1 Billion$**.
The working goal is to develop a high-conviction business book about how a single human can use AI agents to build leverage, systems, companies, and outsized economic outcomes.

The human author drives the vision, gathers ideas, makes editorial decisions, and shapes the argument.
The LLM helps ingest source material, maintain the wiki, structure insights, draft chapters, pressure-test claims, and keep the manuscript coherent as it grows.

This repo follows a **Kaparthy-style wiki workflow**:
- `raw/` stores source material
- `wiki/` turns source material into structured knowledge
- `outputs/` turns knowledge into publishable writing

---

## Repository Schema

### `raw/` — Immutable Source Material
- **Write-once, never edit.** Drop files in and leave them.
- Subfolders:
  - `notes/` — Raw idea dumps, voice note transcripts, scratch notes, thought fragments
  - `research/` — Articles, papers, essays, benchmarks, screenshots, market maps, examples
  - `references/` — Books, frameworks, quotes, source excerpts, canonical reference material
  - `examples/` — Company examples, agent workflows, experiments, business models, case snapshots
  - `interviews/` — Conversations with founders, operators, experts, readers, or collaborators
- Accepted formats: `.md`, `.txt`, `.pdf`, `.png`, `.jpg`, `.csv`, `.xlsx`, `.docx`
- **Rule:** Never modify files in `raw/`. If corrections are needed, add a new file with a `_corrected` suffix.

### `wiki/` — LLM-Compiled Knowledge Base
- **The LLM maintains this.** The human edits occasionally when needed.
- `index.md` — Master index linking to all wiki articles, auto-maintained
- Subfolders:
  - `book/` — Core book thesis, audience, promise, positioning, title ideas, central arguments
  - `chapters/` — Chapter briefs, outlines, argument maps, open questions, supporting material
  - `concepts/` — Definitions and deep dives on agents, leverage, automation, distribution, ops, economics
  - `examples/` — Structured writeups of case studies, anecdotes, company examples, and patterns
  - `frameworks/` — Repeatable models, mental models, diagrams, decision frameworks, operating systems
  - `claims/` — Important factual claims, statistics, references, and verification status
- **Wiki article rules:**
  - Each article is one `.md` file, named with kebab-case (e.g., `single-human-leverage.md`)
  - First paragraph is always a 2-3 sentence summary
  - Use `## Sections` for structure
  - End each article with `## Sources` listing which `raw/` files informed it
  - Cross-link related articles using relative markdown links
  - Include a `## Last Updated` line at the bottom with the date

### `outputs/` — Publishable Work Product
- Drafted, reviewed, and final writing assets for the book project.
- Subfolders:
  - `manuscript/` — Main chapter drafts and assembled manuscript sections
  - `outlines/` — Table of contents, chapter maps, book architecture, restructuring drafts
  - `proposals/` — Book proposal materials, synopsis, positioning docs, publisher-facing material
  - `assets/` — Diagrams, tables, figures, illustrations, and supporting visuals
  - `marketing/` — Back-cover copy, launch ideas, blurbs, excerpts, landing page copy
- **Rule:** Every draft in `outputs/` should begin with a short status line: `DRAFT`, `REVIEW`, or `FINAL`.

### `journal/` — Writing Log
- Chronological record of the project.
- One file per entry: `YYYY-MM-DD.md`
- Each entry should include:
  - **Context:** What happened today
  - **Progress:** What was written, researched, or decided
  - **Insights:** What became clearer
  - **Action Items:** What should happen next
  - **Open Questions:** What remains unresolved

---

## Chapter Development Model

Each major chapter should eventually have:
- A wiki brief in `wiki/chapters/`
- Supporting concept pages in `wiki/concepts/` and `wiki/frameworks/`
- Supporting stories or evidence in `wiki/examples/` and `wiki/claims/`
- A draft chapter file in `outputs/manuscript/`

Recommended chapter workflow:
1. Capture raw ideas and source material in `raw/`
2. Distill ideas into structured wiki pages
3. Create or update the chapter brief
4. Expand the brief into a chapter outline
5. Draft the chapter in `outputs/manuscript/`
6. Run claim checks, coherence checks, and rewrite passes

Recommended chapter filename pattern:
- Wiki brief: `NN-chapter-title.md`
- Manuscript draft: `NN-chapter-title-draft.md`

---

## LLM Operations

### Ingest (processing new source material)
When new files are added to `raw/`:
1. Read and understand the new material
2. Identify which wiki pages need to be created or updated
3. Update or create the relevant wiki articles
4. Update `wiki/index.md` to reflect any new pages
5. Add a journal entry summarizing what was ingested and why it matters

### Query (answering questions about the book)
When asked a question about the book, its thesis, or its content:
1. Search the wiki first for existing knowledge
2. If the wiki is insufficient, search `raw/`
3. Synthesize an answer with citations to wiki pages and raw sources
4. If the answer reveals a gap in the wiki, update the wiki

### Lint (health checks)
Periodically review the wiki and manuscript for:
- **Contradictions** between chapters or concepts
- **Stale thinking** that no longer matches the latest thesis
- **Orphaned pages** not linked from the index or related pages
- **Missing cross-links** between ideas that belong together
- **Unsupported claims** that need stronger evidence or verification
- **Narrative gaps** where a reader would ask, "but how?" or "why now?"
- **Repetition** where multiple chapters make the same point without adding value
- Report findings and fix issues where possible

### Draft (creating book material)
When creating book deliverables:
1. Pull from wiki knowledge first, not raw files directly
2. Write in clear, high-signal, opinionated prose
3. Optimize for reader momentum, clarity, and strong argumentation
4. Mark outputs as `DRAFT` until explicitly reviewed
5. Store work in the appropriate `outputs/` subfolder

### Refactor (restructuring the book)
When the book structure changes:
1. Update the master outline in `outputs/outlines/`
2. Update affected chapter briefs in `wiki/chapters/`
3. Relink concepts, examples, and claims to the new structure
4. Note major structural decisions in the journal
5. Preserve old drafts unless explicitly deprecated

---

## Conventions

- **Dates:** Always use `YYYY-MM-DD` format
- **File naming:** kebab-case for all files
- **Chapter ordering:** Use numeric prefixes for chapter-related files once the outline stabilizes
- **Language:** Sharp, ambitious, accessible, and business-oriented
- **Source discipline:** Distinguish clearly between verified claims, informed synthesis, and speculative ideas
- **Confidentiality:** Do not include private data, unpublished personal information, passwords, or sensitive business details without explicit intent
- **Commit messages:** Use conventional format: `type: description` (e.g., `wiki: add leverage framework`, `raw: add founder interview transcript`, `output: draft chapter 02`)

---

## Default Operating Principle

This repository should evolve from **idea capture -> knowledge base -> chapter drafts -> finished manuscript**.
When in doubt, preserve source material, improve the wiki, and keep the manuscript tightly connected to verifiable notes, evidence, and clearly articulated arguments.
