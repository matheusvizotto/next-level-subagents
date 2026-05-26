#!/usr/bin/env bash
set -euo pipefail

# next-level-subagents installer
# Copies subagents from this repo into ~/.claude/agents/
# so Claude Code can discover and use them.

REPO_URL="https://github.com/matheusvizotto/next-level-subagents"
AGENTS_DIR="$HOME/.claude/agents"
TMP_DIR="$(mktemp -d)"

echo ""
echo "=========================================="
echo "  next-level-subagents installer"
echo "  by Matheus Vizotto"
echo "=========================================="
echo ""

if [ ! -d "$AGENTS_DIR" ]; then
  echo "-> Creating $AGENTS_DIR"
  mkdir -p "$AGENTS_DIR"
fi

echo "-> Fetching latest subagents from $REPO_URL"
git clone --depth 1 --quiet "$REPO_URL.git" "$TMP_DIR/repo"

echo ""
echo "-> Installing subagents:"
for agent_file in "$TMP_DIR/repo/agents/"*.md; do
  agent_name=$(basename "$agent_file")
  cp "$agent_file" "$AGENTS_DIR/$agent_name"
  echo "   $agent_name"
done

rm -rf "$TMP_DIR"

echo ""
echo "=========================================="
echo "  Install complete."
echo ""
echo "  Restart Claude Code (if open) so the"
echo "  new subagents load."
echo ""
echo "  Try it:"
echo "    claude"
echo "    > /agents"
echo ""
echo "  Or invoke directly:"
echo "    > reel-editor, edita esse video"
echo "=========================================="
echo ""
