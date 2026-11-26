#!/usr/bin/env bash
# Install the YouTube Channel Master Skill into a skills directory.
#
# Usage:
#   ./install.sh [TARGET_SKILLS_DIR]
#
# Defaults:
#   Claude Code  -> ~/.claude/skills
#   Muse         -> ~/workspace/custom-skills
#
# Examples:
#   ./install.sh                      # auto-detect (Claude Code first)
#   ./install.sh ~/.claude/skills
#   ./install.sh ~/workspace/custom-skills

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ $# -ge 1 ]; then
  TARGET="$1"
elif [ -d "$HOME/.claude" ]; then
  TARGET="$HOME/.claude/skills"
else
  TARGET="$HOME/workspace/custom-skills"
fi

echo "Installing YouTube Channel Master Skill -> $TARGET"
mkdir -p "$TARGET"

# Master orchestrator skill (root SKILL.md)
mkdir -p "$TARGET/youtube-channel-master"
cp "$SCRIPT_DIR/SKILL.md" "$TARGET/youtube-channel-master/SKILL.md"

# Sub-skills
for skill in "$SCRIPT_DIR"/skills/*/; do
  name="$(basename "$skill")"
  rm -rf "$TARGET/$name"
  cp -r "$skill" "$TARGET/$name"
  echo "  installed: $name"
done

# Templates (kept alongside, not a skill)
mkdir -p "$TARGET/youtube-channel-master/templates"
cp "$SCRIPT_DIR"/templates/*.md "$TARGET/youtube-channel-master/templates/" 2>/dev/null || true

echo ""
echo "Done. Skills installed:"
ls "$TARGET" | sed 's/^/  - /'
echo ""
echo "First run: open your agent and say \"write my next video\" or \"audit my channel\"."
echo "See INSTALL.md for the full walkthrough."
