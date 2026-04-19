---
name: publish-kindle-epub
description: >
  Apply this skill exclusively when Marcel asks to export, build, generate, or
  publish a Kindle / KDP EPUB of the book manuscript. Trigger on phrases like
  "export the book to epub", "build a kindle version", "generate a new epub",
  "publish an epub", "make a KDP export", or any request to produce a new
  timestamped EPUB of the manuscript. Do NOT trigger for editing manuscript
  prose, drafting chapters, or non-export tasks — those are handled by
  chapter-manuscript.
---

# Publish Kindle EPUB

Marcel's book is drafted in Markdown under `outputs/manuscript/` and uses PNG
diagrams from `outputs/assets/`. The canonical export target for Kindle Direct
Publishing is **EPUB3**. KDP auto-converts EPUB to its internal KFX/AZW3 format.

When Marcel asks for an export, do this:

## Steps

1. **Run the build script from repo root.**
   ```bash
   scripts/build-kindle.sh
   ```
   Optional flags:
   - `--docx` — also emit a DOCX (KDP fallback).
   - `--label <name>` — append a suffix to the filename (e.g. `--label pre-review`
     produces `book-2026-04-19-1132-pre-review.epub`). Use this when Marcel
     names the export explicitly. If he does not name it, omit the flag.

2. **Output location.** All EPUBs land in `outputs/publish/` and are named
   `book-YYYY-MM-DD-HHMM[-label].epub`. Never overwrite previous versions —
   every run produces a new timestamped file so Marcel can diff, revert, or
   compare versions.

3. **After the build, verify:**
   - File exists under `outputs/publish/`.
   - Size is reasonable (> 50 KB with images; a near-empty EPUB means a
     chapter was missing).
   - Optionally spot-check with `unzip -l <file>.epub | head` to confirm
     `content.opf`, `nav.xhtml`, chapter files, and media are present.

4. **Report back to Marcel with:**
   - The full path of the new EPUB.
   - Any chapters included and any expected chapters that were skipped.
   - Whether a DOCX was also produced.

## Updating the reading order

The script reads chapters from the `CHAPTERS=(...)` array in
`scripts/build-kindle.sh`. When Marcel drafts a new chapter under
`outputs/manuscript/`, add its path to that array in book order before
exporting. Front matter first, chapters in order, back matter last. If Marcel
asks for an export and a chapter clearly belongs but isn't listed, add it and
flag the change in your reply.

## Metadata

Book-level metadata (title, author, language, rights, subject) lives in
`outputs/manuscript/metadata.yaml`. Edit it there — do not inline it into the
script. If Marcel mentions a title change, subtitle change, or adds a cover,
update the YAML file (and set `COVER_IMAGE` in the script if a cover file is
provided).

## Cover images

KDP recommends a **1600×2560 JPEG** cover. If Marcel has a cover file, set
`COVER_IMAGE=` at the top of `scripts/build-kindle.sh` to its repo-relative
path. If not, leave it empty — covers can also be uploaded separately in the
KDP dashboard and are not required for the EPUB itself.

## Troubleshooting

- **"pandoc not found"** — tell Marcel to run `brew install pandoc`.
- **Missing image in output** — check the chapter Markdown uses
  `../assets/<file>.png` (relative from `outputs/manuscript/` to
  `outputs/assets/`). The script rewrites that path automatically; any other
  pattern will not be rewritten.
- **Pandoc warns about title** — confirm `metadata.yaml` has a `title:` field.
- **Chapter missing from the build** — confirm it's listed in `CHAPTERS=(...)`
  in the script.

## Hard rules

- Never delete or overwrite previous EPUBs in `outputs/publish/`. They are the
  version history.
- Never commit EPUB/DOCX files to git unless Marcel explicitly asks. They are
  build artifacts and should be gitignored.
- Do not invent new export formats (MOBI, AZW3, KPF) unless Marcel asks.
  EPUB3 is the target.
