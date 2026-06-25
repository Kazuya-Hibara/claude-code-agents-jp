#!/usr/bin/env bash
# translate-docs-codex.sh — Localize the strategy/ division DOCS (runbooks, playbooks,
# QUICKSTART, EXECUTIVE-BRIEF) EN->JA. These have NO YAML frontmatter (they are docs,
# not agents), so they go to docs/ — not agents/. Resumable: skips non-empty outputs.
set -uo pipefail
SRC="${1:-/tmp/cca-upstream/strategy}"
ROOT="${2:-$(cd "$(dirname "$0")/.." && pwd)}"
PAR="${3:-4}"
DST="$ROOT/docs/strategy"
mkdir -p "$DST"

PROMPT='Translate this Markdown document into natural, professional Japanese for a business/developer audience. PRESERVE EXACTLY (never translate or alter): fenced code blocks and inline `code`; URLs; file paths; CLI commands and flags; identifiers; product/framework/tech names; markdown structure (headings, tables, lists); emoji. Keep technical precision; do not summarize, add, or drop content. Output ONLY the translated Markdown document — no preamble, no explanation, and NO surrounding code fence.'

one() {
  local f="$1" rel out
  rel="${f#"$SRC"/}"
  out="$DST/$rel"
  mkdir -p "$(dirname "$out")"
  [ -s "$out" ] && { echo "skip $rel"; return 0; }
  if codex exec "$PROMPT" -s read-only --skip-git-repo-check -o "$out.tmp" < "$f" >/dev/null 2>&1 && [ -s "$out.tmp" ]; then
    if head -1 "$out.tmp" | grep -q '^```'; then sed -i '' '1d' "$out.tmp"; [ "$(tail -1 "$out.tmp")" = '```' ] && sed -i '' -e '$d' "$out.tmp"; fi
    mv "$out.tmp" "$out"; echo "ok   $rel"
  else
    rm -f "$out.tmp"; echo "FAIL $rel"
  fi
}
export -f one; export SRC DST PROMPT
find "$SRC" -name "*.md" | xargs -P "$PAR" -I{} bash -c 'one "$@"' _ {}
echo "=== docs done: $(find "$DST" -name '*.md' | wc -l | tr -d ' ') files ==="
