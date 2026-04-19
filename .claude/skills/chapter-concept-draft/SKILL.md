---
name: chapter-concept-draft
description: >
  Apply this skill exclusively when Marcel asks for a chapter concept draft,
  chapter brief, chapter outline, or chapter plan for the book "The 1 Human
  100 Agents Company" - the structured planning document that lives in
  wiki/chapters/ and gets expanded into a manuscript chapter later. Trigger
  on phrases like "draft a chapter brief", "write a chapter concept",
  "outline the next chapter", "create a wiki chapter for X", "plan chapter N",
  "chapter concept draft", or "next chapter brief for the wiki". Do NOT
  trigger for actual manuscript prose (that is chapter-manuscript), for
  deep-dive research concept pages under wiki/concepts/, for book outlines
  or tables of contents that span the whole book, or for raw research notes.
---

# Chapter Concept Draft: The 1 Human 100 Agents Company

Marcel's wiki/chapters/ folder holds **chapter briefs** - structured planning
documents that compile research, define the narrative arc, and lay out the
shape of a manuscript chapter before it is written. This skill produces
briefs that match the exact structure and quality of the existing gold
standard, [wiki/chapters/what-an-agent-is.md](../../wiki/chapters/what-an-agent-is.md).

A chapter brief is NOT the manuscript. It is NOT written in the book's voice.
It is a working document for the author and the LLM to share. Its job is to:

- Distill what the chapter will argue and why it matters
- Place it in the book's arc (what came before, what comes next)
- Define the narrative device that carries the reader through it
- Lay out the full section-by-section flow with enough detail that drafting
  the manuscript later becomes mechanical
- Cite the research and link back to the wiki so the brief is a live hub

---

## The Required Structure (Strict)

Every chapter brief must use this exact top-level structure. Match it
precisely - section order, heading levels, and section names all matter.
Marcel reads these in Obsidian and expects the same scaffolding every time.

```markdown
# {{Chapter Title}}

{{Opening paragraph: 2-4 sentences stating the core move / thesis of the
chapter. What does this chapter do for the reader? What is the key
insight the chapter is built around?}}

## Sections

### Chapter Purpose

{{One or two paragraphs. First paragraph: recap what the previous chapter
established and state what question this chapter now answers for the
reader. Second paragraph or closing sentence: the sentence "The chapter
should leave the reader thinking: '...'" - an actual quote in the
reader's own voice that captures the take-home. This is mandatory.}}

### A Note on Scope   *(optional - include only if the chapter touches
fast-moving tools, frameworks, or products that will date quickly)*

{{One or two paragraphs explaining what is deliberately in and out of scope
and why. Use this to flag that named products/frameworks are illustrative,
not endorsements, when relevant.}}

### Core Argument

{{One tight paragraph stating the chapter's thesis. Not a summary of the
flow - the argument itself, stripped to its logical core.}}

### Narrative Device

{{One paragraph. Which recurring character or example carries this chapter?
Always build on Hannah Schmidt unless there is a strong reason not to.
Name any supporting characters (Lukas the developer, Marco the sales rep,
etc.) and what role they play in THIS chapter specifically. Connect to
where Hannah was at the end of the previous chapter and where she needs
to be at the end of this one.}}

### Proposed Flow

{{The heart of the brief. Break the chapter into Parts (Part 1, Part 2, ...).
Each Part gets a #### heading and a descriptive name.}}

#### Part 1: {{Descriptive Part Name}}

{{Opening sentences: how this part opens. What the reader needs to
understand first. Then the substance - concrete examples, definitions,
tables, bolded sub-markers like **Hannah's example:**, **AI parallel:**,
or numbered sub-points. Include inline image references to diagrams in
outputs/assets/ where a diagram exists or should be created. Name
researchers explicitly (Jensen and Meckling, Russell and Norvig,
Wooldridge) with the year on first mention, since briefs cite even
though the manuscript won't.}}

{{Each Part should close with a punchline sentence or a transition to
the next Part.}}

#### Part 2: {{Name}}

{{...}}

{{Continue for as many Parts as the chapter needs - typically 2 to 6.}}

#### Closing Beat   *(or fold into the last Part)*

{{How the chapter ends. What is the last line's emotional/intellectual
landing. Name the bridge to the next chapter explicitly.}}

### Draft Location

- outputs/manuscript/{{kebab-case-title}}-draft.md (to be created)

### Related Pages

{{Bullet list of Markdown links to the wiki concept pages, hub pages,
anchor pages, and earlier chapter briefs that this chapter pulls from
or links to. This is mandatory and must be thorough - the brief is a
hub, not an island. Include at least every wiki page the research
section pulled from, plus the previous and next chapter briefs if they
exist.}}

### Deferred to Next Chapter

{{One or two sentences naming what is explicitly NOT covered here so the
author does not feel pressure to pack it in. Prevents scope creep at
drafting time.}}

## Sources

{{Bullet list. Must include:
- Every raw/ research note that informed this brief (as relative-path links)
- Every canonical external source cited in the Proposed Flow (papers,
  books, company engineering posts, standards documents) with full
  Markdown links to stable URLs where available
}}

## Last Updated

{{YYYY-MM-DD}}
```

---

## Voice and Register

The brief is a **planning document**, not book prose. Write it like you are
briefing a smart collaborator who will do the actual drafting later.

- Third-person and instructional voice ("Open by observing...", "Walk
  through each practice...", "Close Part 2 with the strategic insight...").
- Imperatives are fine ("Quote Anthropic...", "Name the key researchers...").
- Full sentences. No bullet soup unless the content is genuinely list-shaped
  (like a tour of definitions across fields, or a numbered walkthrough of
  management practices).
- The book's own style rules (no contractions, no em-dashes, second person)
  DO NOT apply here. The brief is internal scaffolding. Use normal
  punctuation and clear declarative sentences. The manuscript skill will
  re-voice the content when the chapter is actually drafted.

---

## Citation Discipline (Mandatory)

Chapter briefs are where the research lives. The manuscript will suppress
author names and use superscripts, but the brief must be citation-rich.

### In the Proposed Flow

- Name researchers directly when their work underpins a claim. Format:
  "Russell and Norvig (1995)", "Jensen and Meckling (1976)",
  "Wooldridge and Jennings (1995)", "Coase (1937)".
- On first mention of a framework, give the originator and the year.
- Quote primary sources inline when the exact wording matters (e.g.
  Anthropic's "all intelligence lives in the model; the harness just
  manages turns" - quote it verbatim and link to the post).
- Name companies/institutions when attributing industry positions
  (Anthropic, OpenAI, Google, MIT, Stanford).

### In the Sources section

- Every external source cited in the Proposed Flow must also appear in
  Sources with a full Markdown link to the stable URL - publisher page,
  DOI, arXiv, or the engineering blog post URL. Do NOT just drop a bare
  paper title.
- Every raw/ note that informed the brief must be listed as a
  relative-path Markdown link.
- If a source is a book, include publisher and edition. If a paper,
  include journal, volume, and year. If a standard, include the
  maintaining body and version.

### Cross-linking back to the wiki (also mandatory)

The `### Related Pages` section is not decoration. It is the navigation
layer that makes the brief useful inside Obsidian. Include:

- The wiki hub page(s) for the concepts this chapter covers
  (e.g. `../concepts/agents/index.md`).
- Every anchor page and every spoke page in the relevant hub-and-spoke
  cluster that the chapter draws from.
- The previous chapter's brief and the next chapter's brief if they exist.
- Any concept pages from *other* clusters that this chapter bridges to
  (e.g. a chapter on agents citing `../concepts/company/...` pages).

Use relative paths so the links work in Obsidian and in git.

---

## Before You Draft: What to Read

Briefs compile existing research into a narrative shape. Before writing a
new brief, read (in this order):

1. **The book's current outline or table of contents** to understand
   where this chapter fits. Check `wiki/book/`, `outputs/outlines/`, or
   `CLAUDE.md` for the working arc.
2. **The previous and next chapter briefs** in `wiki/chapters/`. Match
   their level of detail, carry forward the narrative device, honour any
   promises they made ("in the next chapter we will..."), and do not
   pre-empt what comes after.
3. **Every wiki concept page in the relevant hub-and-spoke cluster(s)**
   under `wiki/concepts/`. The brief should pull the synthesis from these
   pages, not re-derive it from raw sources.
4. **The relevant raw/research notes** for direct quotes, citation
   details, and any primary material the wiki has not yet absorbed.
5. **The gold-standard exemplar,** [what-an-agent-is.md](../../wiki/chapters/what-an-agent-is.md),
   to calibrate depth, voice, and section balance.

If research is missing for the chapter you are being asked to brief,
flag the gap to Marcel before writing rather than filling it with
speculation.

---

## Depth Calibration

Use the gold-standard brief as the yardstick.

- Total length: roughly 3,000 to 6,000 words for a typical chapter.
- Opening paragraph: 2-4 sentences, no more.
- Chapter Purpose: 150-300 words, must contain the "reader should leave
  thinking..." quote.
- Core Argument: one tight paragraph, 80-150 words.
- Narrative Device: one paragraph, 80-150 words.
- Proposed Flow: the bulk of the brief (70-80% of word count). Each Part
  should carry enough detail - concrete examples, named research, quoted
  phrases, specific tool calls or scenarios - that the manuscript writer
  has unambiguous material to work from.
- Related Pages: at least 5-10 entries for a substantive chapter. A brief
  with only 1-2 related pages is under-linked.
- Sources: at least the raw/research notes plus 2-4 external canonical
  references for any chapter making substantive claims.

If the brief is significantly shorter than this, the chapter is
under-researched; go back and read more wiki pages before continuing.

---

## Hannah Continuity

Hannah Schmidt is the running example across every chapter of the book.
The brief must place this chapter on her timeline:

- What is the state of Hannah's company at the start of this chapter?
  (Day 1? First hires? 11 customers? A full agent fleet?)
- What new situation, decision, or challenge does she hit in this chapter?
- Who else appears? (Lukas the programmer, Marco the sales rep, named
  customers, competitors.) Only introduce a new named character if the
  chapter genuinely needs them - do not sprinkle characters for colour.
- How does the chapter advance her story so the next chapter's brief has
  somewhere to pick up?

If the previous chapter left Hannah in a specific state (e.g. "standing
at Day 1 with incorporation papers and a plan"), the current chapter
must pick up from that exact state or explicitly say how much time has
passed.

---

## What to Avoid

| Do not | Do instead |
|---|---|
| Write in the book's reader-facing voice | Write in instructional/planning voice |
| Quote research by paraphrase only | Name authors and years directly |
| Drop bare source titles without links | Full Markdown links to stable URLs |
| Skip the Related Pages section | Always include 5-10+ cross-links |
| Make up findings that the wiki does not yet support | Flag research gaps to Marcel |
| Pre-empt concepts reserved for later chapters | Use "Deferred to Next Chapter" section |
| Produce a brief under 2,000 words for a real chapter | Match the gold-standard depth |
| Introduce new named characters without need | Reuse Hannah, Lukas, Marco unless the chapter demands someone new |

---

## Final Sanity Check

Before handing the brief back to Marcel, verify:

1. The top-level structure matches the template exactly - same section
   names, same order, same heading levels.
2. Chapter Purpose ends with a quoted "reader should leave thinking..."
   sentence in the reader's voice.
3. Every research claim in Proposed Flow names a researcher or institution.
4. Every external citation in Proposed Flow reappears in `## Sources`
   with a full link.
5. `### Related Pages` has at least 5 entries and includes the previous
   and next chapter briefs if they exist.
6. Hannah's state at the start of the chapter is consistent with where
   the previous brief left her.
7. `### Deferred to Next Chapter` explicitly names what is out of scope.
8. `## Last Updated` has today's date in YYYY-MM-DD.

If any of these fail, fix before shipping.
