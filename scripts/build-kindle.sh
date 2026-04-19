#!/usr/bin/env bash
# Build a KDP-ready EPUB (and optional DOCX) from the manuscript.
#
# Usage:
#   scripts/build-kindle.sh              # builds timestamped EPUB
#   scripts/build-kindle.sh --docx       # also builds DOCX
#   scripts/build-kindle.sh --label foo  # suffixes filename (e.g. book-2026-04-19-1132-foo.epub)
#
# Output: outputs/publish/book-YYYY-MM-DD-HHMM[-label].epub
#         Every run produces a new timestamped file so prior versions are preserved.
#
# Requires: pandoc (brew install pandoc)

set -euo pipefail

# Locate repo root (script lives in scripts/)
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

MANUSCRIPT_DIR="outputs/manuscript"
ASSETS_DIR="outputs/assets"
DIST_DIR="outputs/publish"
METADATA="$MANUSCRIPT_DIR/metadata.yaml"
TIMESTAMP="$(date +%Y-%m-%d-%H%M)"

# Reading order. Edit this list as chapters are added.
# Front matter first, then chapters in book order, then back matter.
CHAPTERS=(
  "$MANUSCRIPT_DIR/about-the-author.md"
  "$MANUSCRIPT_DIR/what-a-company-is-and-what-it-does-draft.md"
)

# Optional cover image for EPUB (set to "" to skip). Recommended: 1600x2560 JPEG.
COVER_IMAGE=""

# ---- flags ----
BUILD_DOCX=0
LABEL=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --docx) BUILD_DOCX=1; shift ;;
    --label) LABEL="$2"; shift 2 ;;
    --label=*) LABEL="${1#*=}"; shift ;;
    -h|--help)
      sed -n '2,12p' "$0"; exit 0 ;;
    *) echo "Unknown arg: $1" >&2; exit 2 ;;
  esac
done

# Sanitize label: allow alphanumerics, dash, underscore
if [[ -n "$LABEL" ]]; then
  LABEL="$(printf '%s' "$LABEL" | tr -cs '[:alnum:]_-' '-' | sed 's/^-*//;s/-*$//')"
fi
SUFFIX="$TIMESTAMP${LABEL:+-$LABEL}"

command -v pandoc >/dev/null || { echo "pandoc not found. brew install pandoc" >&2; exit 1; }
[[ -f "$METADATA" ]] || { echo "Missing $METADATA" >&2; exit 1; }

# ---- prepare output ----
mkdir -p "$DIST_DIR"

BUILD_DIR="$(mktemp -d)"
trap 'rm -rf "$BUILD_DIR"' EXIT

MERGED="$BUILD_DIR/book.md"

# Concatenate chapters with a pagebreak between them.
# Strip leading "DRAFT"/"REVIEW"/"FINAL" status lines. Rewrite image paths
# from ../assets/ to the absolute repo-rooted path so pandoc can embed them.
: > "$MERGED"
for f in "${CHAPTERS[@]}"; do
  [[ -f "$f" ]] || { echo "Missing chapter: $f" >&2; exit 1; }
  # First line removal if it's a bare status marker
  awk 'NR==1 && /^(DRAFT|REVIEW|FINAL)[[:space:]]*$/ { next } { print }' "$f" \
    | sed -E "s|\\.\\./assets/|$ROOT/$ASSETS_DIR/|g" \
    >> "$MERGED"
  # Force a hard break before the next chapter (EPUB honors this as a page break)
  printf '\n\n\\newpage\n\n' >> "$MERGED"
done

# ---- pandoc common args ----
COMMON_ARGS=(
  --from=markdown+smart+raw_html
  --metadata-file="$METADATA"
  --toc --toc-depth=2
  --standalone
  --resource-path="$ROOT:$ROOT/$ASSETS_DIR:$ROOT/$MANUSCRIPT_DIR"
)

# ---- EPUB ----
EPUB_OUT="$DIST_DIR/book-$SUFFIX.epub"
EPUB_ARGS=(
  --to=epub3
  --split-level=1
  -o "$EPUB_OUT"
)
if [[ -n "$COVER_IMAGE" && -f "$COVER_IMAGE" ]]; then
  EPUB_ARGS+=(--epub-cover-image="$COVER_IMAGE")
fi

echo "Building EPUB -> $EPUB_OUT"
pandoc "${COMMON_ARGS[@]}" "${EPUB_ARGS[@]}" "$MERGED"

# ---- DOCX (optional) ----
if [[ $BUILD_DOCX -eq 1 ]]; then
  DOCX_OUT="$DIST_DIR/book-$SUFFIX.docx"
  echo "Building DOCX -> $DOCX_OUT"
  pandoc "${COMMON_ARGS[@]}" --to=docx -o "$DOCX_OUT" "$MERGED"
fi

echo "Done."
ls -lh "$DIST_DIR"
