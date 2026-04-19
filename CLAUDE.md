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

## Who This Book Is For

This book is written for:
- Entrepreneurs building or scaling companies
- People who want to become entrepreneurs
- Solo entrepreneurs and small operators looking for leverage
- Business owners who want to redesign how their company works
- Leaders who believe AI agents will change how execution, delegation, and scale work inside firms

This book is not written as an academic text, even when it draws on serious ideas. It is written for practical readers who want better mental models, clearer strategic options, and usable ways to rethink their business.

---

## Book Writing Style

The writing style for this book should be:
- Direct, clear, and business-oriented
- Personal and experience-based whenever appropriate
- Written with frequent direct address to the reader to build connection and momentum
- Insightful and ambitious without sounding academic or abstract for its own sake
- Grounded in real operating questions faced by entrepreneurs, solo entrepreneurs, and business builders

Writing guidelines:
- Speak from lived experience often, especially when making a strategic point or introducing a hard-earned lesson
- Address the reader directly using `you` when it improves clarity, relevance, or energy
- Prefer strong, simple language over academic phrasing
- Use concepts from other thinkers when useful, but name them explicitly and attach a citation
- When borrowing a framework, idea, or term from someone else, mention the person by name in the prose, not only in the sources section
- Keep the tone practical, credible, and forward-looking
- Avoid writing as if the audience were scholars; write as if the audience were ambitious operators

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
- **Citation rule:** Whenever a raw note references a URL, paper, book, article, or publication, include it as a Markdown link whenever possible.

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
  - For hub-and-spoke research clusters, use folders to reflect hierarchy instead of keeping all pages flat
  - The hub page of a cluster should live at `.../topic/index.md`
  - Level-2 anchor pages should live in subfolders with their own `index.md`
  - Spoke pages should live inside the folder of the anchor they belong to
  - First paragraph is always a 2-3 sentence summary
  - Use `## Sections` for structure
  - End each article with `## Sources` listing which `raw/` files informed it
  - Cross-link related articles using relative markdown links
  - Link URLs, papers, books, and publications using Markdown links, not plain URLs
  - Include a `## Last Updated` line at the bottom with the date

### Hub-and-Spoke Folder Pattern

When a topic grows into a research cluster, organize it like this:

```text
wiki/concepts/topic/
  index.md
  anchor-a/
    index.md
    spoke-1.md
    spoke-2.md
  anchor-b/
    index.md
    spoke-3.md
  anchor-c/
    index.md
    spoke-4.md
```

Rules for this pattern:
- The top-level `index.md` is the hub
- Each anchor folder groups one major sub-question
- Spokes should sit underneath the anchor they explain
- Cross-links should favor nearby relative paths so the hierarchy remains obvious in Obsidian and in git
- The hub pages are the primary synthesis pages and should be the main place where higher-level understanding is updated over time
- Anchor pages should synthesize one major sub-question and point down into the supporting spokes
- Spoke pages should carry the detailed explanatory and source-grounded supporting material that feeds the synthesis above

### Deepest-Level Research Page Structure

The deepest content pages in a hub-and-spoke cluster should be more detailed than hubs and anchor pages. These are the pages where the reader should actually learn the underlying concept in enough depth to use it later in chapter writing.

Required structure for deepest-level research pages:
- Short opening summary paragraph
- `## Sections`
- `### Core Idea`
- `### Details`
- `### Source Links`
- `### Why It Matters`
- `### Related Pages`
- `## Sources`
- `## Last Updated`

Rules for deepest-level research pages:
- `Core Idea` should explain the concept in one compact high-signal paragraph
- `Details` should be meaningfully in-depth, not just a short expansion of the core idea
- `Details` should usually be multiple paragraphs and should explain the logic, implications, distinctions, and practical relevance of the concept
- `Details` should give enough context that the page is genuinely educational on its own, even before the reader opens the source links
- `Source Links` should point directly to the actual external sources, publications, papers, books, canonical summaries, or official references
- `Related Pages` should connect the spoke back to its anchor, sibling ideas, and nearby structural pages
- `Sources` should still list the internal `raw/` notes that informed the page
- Hubs and anchor pages can stay shorter and more navigational, but deepest-level pages should carry the explanatory weight
- Hubs should be the main synthesis layer where the project's current understanding, working definitions, and evolving conclusions are refined over time

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

During ingest:
- Preserve outbound references to URLs, papers, books, and publications as Markdown links
- Prefer the original source URL, DOI link, publisher page, or canonical landing page over secondary references
- When a publication has both a title and URL, use descriptive anchor text rather than pasting the raw link

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

**Manuscript rule (hard requirement):** Any work on files inside `outputs/manuscript/` — creating, drafting, editing, rewriting, or reviewing chapter prose — MUST invoke the `chapter-manuscript` skill *before* writing or editing. That folder is the book itself; everything in it goes through the voice, style, and structural rules defined in the skill. The `wiki/` tree is research and does not trigger the skill. The `outputs/manuscript/` tree does, every time. Other `outputs/` subfolders (outlines, proposals, assets, marketing) do not trigger this skill either — manuscript-only.

During drafting:
- Prefer a practical business-book voice over an academic voice
- Use direct address where it strengthens the relationship with the reader
- Bring in the author's own experience as evidence, framing, and credibility
- When using another person's concept, name them in the sentence and include a citation

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
- **Language:** Sharp, ambitious, accessible, practical, and business-oriented
- **Source discipline:** Distinguish clearly between verified claims, informed synthesis, and speculative ideas
- **Linking:** Always format URLs, papers, articles, books, and publications as Markdown links whenever a stable destination exists
- **Attribution:** When using a concept from another person, name them directly in the text and include a citation
- **Audience fit:** Default to entrepreneurs, aspiring entrepreneurs, solo entrepreneurs, and owners reshaping their businesses
- **Confidentiality:** Do not include private data, unpublished personal information, passwords, or sensitive business details without explicit intent
- **Commit messages:** Use conventional format: `type: description` (e.g., `wiki: add leverage framework`, `raw: add founder interview transcript`, `output: draft chapter 02`)

---

## Current Research Priorities

### First Research Question

The first research track for this book is: **What is a company, really?**

This research should explore:
- Legal definitions of a company and the firm
- Economic theories of the firm
- The company as a coordination system for capital, labor, information, and decision-making
- The company as an interface for delegation and accountability
- How agent-based organizations may preserve or transform those functions

The goal is not just to define a company abstractly, but to build a strong foundation for the book's thesis that one human coordinating many agents may become a viable organizational form.

---

## Handling the Author's Local Edits

Marcel edits manuscript and wiki files directly. Treat every change he makes locally as **deliberate** — a stylistic choice, a tonal adjustment, a phrasing he prefers, or an intentional structural move. Do not revert, "restore," or silently rewrite his edits back to the LLM-generated version.

**Exception — always fix:** genuine grammatical errors, spelling mistakes, broken punctuation, obviously dropped words, and mechanical typos in his edits. These are not deliberate choices; these are slips. Fix them quietly as part of whatever you are doing next in that file. Do not call attention to them and do not frame the fix as a correction of his writing — just clean them up.

Rule of thumb: if a change looks like a preference, keep it. If it looks like a missing word, a doubled article ("a only an"), a wrong form ("primary" for "primarily"), or a dropped verb, fix it.

## Default Operating Principle

This repository should evolve from **idea capture -> knowledge base -> chapter drafts -> finished manuscript**.
When in doubt, preserve source material, improve the wiki, and keep the manuscript tightly connected to verifiable notes, evidence, and clearly articulated arguments.
