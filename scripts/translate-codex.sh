#!/usr/bin/env bash
# translate-codex.sh — Localize agency-agents agent definitions EN->JA using the Codex CLI.
#
# Why Codex: runs under the ChatGPT subscription (no per-token API billing, unlike Gemini/DeepL).
# Design (Ports & Adapters): the STAGE is "localize agent defs to JA"; the Tool ADAPTER is Codex
# (swap to another LLM CLI by changing translate_one()). Resumable: re-running skips finished files,
# so a rate-limit death mid-run is healed by simply re-running this script.
#
# Usage: scripts/translate-codex.sh [SRC_DIR] [DST_REPO_ROOT] [PARALLELISM]
set -uo pipefail

SRC="${1:-/tmp/cca-upstream}"
ROOT="${2:-$(cd "$(dirname "$0")/.." && pwd)}"
PAR="${3:-5}"
DST="$ROOT/agents"
LOG="$ROOT/scripts/translate.log"
mkdir -p "$DST"
: > "$LOG"

PROMPT='You are a professional EN->JA localizer for Claude Code AI agent definition files (Markdown with YAML frontmatter). Translate the document provided on stdin into natural, professional Japanese for a business/developer audience.
RULES:
- Translate: prose, headings, list items, and the VALUES of the frontmatter keys name, description, vibe ONLY.
- PRESERVE EXACTLY (never translate or alter): every YAML key; the VALUES of color, emoji, model, tools, maxTurns; all fenced code blocks and inline `code`; URLs; file paths; CLI commands and flags; identifiers and variable names; product/framework/tech names (e.g. React, PostgreSQL, Docker, Kubernetes, AR/VR/XR, TypeScript); markdown structure; emoji; and the --- frontmatter delimiters and key order.
- Keep technical precision. Do not summarize, add, or drop content.
- Output ONLY the translated Markdown document. No preamble, no explanation, and NO surrounding code fence.'

translate_one() {
  local f="$1" rel div base name out
  rel="${f#"$SRC"/}"
  div="${rel%%/*}"
  base="$(basename "$f")"
  case "$base" in
    "$div"-*) name="$base" ;;
    *)        name="$div-$base" ;;
  esac
  out="$DST/$name"

  # Resumable: a non-empty output that starts with frontmatter is considered done.
  if [ -s "$out" ] && head -1 "$out" | grep -q '^---'; then
    echo "skip $name" >> "$LOG"; return 0
  fi

  if codex exec "$PROMPT" -s read-only --skip-git-repo-check -o "$out.tmp" < "$f" >/dev/null 2>&1 && [ -s "$out.tmp" ]; then
    # Strip an accidental leading ```markdown / ``` fence and trailing ``` if present.
    if head -1 "$out.tmp" | grep -q '^```'; then
      sed -i '' '1d' "$out.tmp"
      # remove trailing fence line if last non-empty line is ```
      if [ "$(tail -1 "$out.tmp")" = '```' ]; then sed -i '' -e '$d' "$out.tmp"; fi
    fi
    if head -1 "$out.tmp" | grep -q '^---'; then
      mv "$out.tmp" "$out"; echo "ok   $name" >> "$LOG"
    else
      rm -f "$out.tmp"; echo "FAIL(no-frontmatter) $name" >> "$LOG"
    fi
  else
    rm -f "$out.tmp"; echo "FAIL(codex) $name" >> "$LOG"
  fi
}
export -f translate_one
export SRC DST PROMPT LOG

find "$SRC" -name "*.md" \
  | grep -vE "README|CONTRIBUTING|SECURITY|/examples/|/integrations/|/scripts/|/\.github/" \
  | xargs -P "$PAR" -I{} bash -c 'translate_one "$@"' _ {}

TOTAL=$(find "$SRC" -name "*.md" | grep -vE "README|CONTRIBUTING|SECURITY|/examples/|/integrations/|/scripts/|/\.github/" | wc -l | tr -d ' ')
OK=$(grep -c '^ok ' "$LOG" 2>/dev/null || echo 0)
SKIP=$(grep -c '^skip ' "$LOG" 2>/dev/null || echo 0)
FAILN=$(grep -c '^FAIL' "$LOG" 2>/dev/null || echo 0)
DONE=$(find "$DST" -name "*.md" | wc -l | tr -d ' ')
echo "=== DONE: total=$TOTAL ok=$OK skip=$SKIP fail=$FAILN present_in_agents=$DONE ===" | tee -a "$LOG"
