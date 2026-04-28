#!/usr/bin/env bash
set -e

SKILLS_DIR="$HOME/.claude/skills"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/skills"

echo "Installing founders skills..."
echo ""

# Create skills directory if it doesn't exist
mkdir -p "$SKILLS_DIR"

# Copy each skill
installed=0
for skill_dir in "$SOURCE_DIR"/*/; do
    skill_name=$(basename "$skill_dir")
    dest="$SKILLS_DIR/$skill_name"

    mkdir -p "$dest"
    cp "$skill_dir/SKILL.md" "$dest/SKILL.md"

    echo "  ✓ /$skill_name"
    ((installed++))
done

echo ""
echo "$installed skills installed to $SKILLS_DIR"
echo ""
echo "Available commands:"
echo "  /jobs        Steve Jobs — simplicity and taste"
echo "  /pg          Paul Graham — is this actually true?"
echo "  /ive         Jony Ive — does this feel inevitable?"
echo "  /bezos       Jeff Bezos — working backwards from the customer"
echo "  /altman      Sam Altman — calibrating ambition"
echo "  /spolsky     Joel Spolsky — developer empathy and leaky abstractions"
echo "  /woz         Steve Wozniak — elegance at the implementation level"
echo "  /naval       Naval Ravikant — leverage and the flywheel test"
echo "  /tobi        Tobi Lütke — systems thinking, does this compound?"
echo "  /andreessen  Marc Andreessen — is this a real market?"
echo "  /bret        Bret Victor — does this interface help users think?"
echo "  /brian       Brian Chesky — 11-star experience, craft at scale"
echo "  /andy        Andy Grove — outputs, bottlenecks, execution discipline"
echo ""
echo "Append --roast to any command for a monologue critique instead of Socratic dialogue."
echo "Restart Claude Code to pick up new skills."
