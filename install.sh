#!/usr/bin/env bash
# ==============================================================================
# Claude Business Starter Kit - One-Line Skill Installer
# https://github.com/Abinash-Gope/claude-business-starter-kit
# ==============================================================================
set -e

REPO_URL="https://github.com/Abinash-Gope/claude-business-starter-kit.git"
TARBALL_URL="https://github.com/Abinash-Gope/claude-business-starter-kit/archive/refs/heads/main.tar.gz"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}====================================================${NC}"
echo -e "${BLUE}   🚀 Installing Claude Business Starter Kit Skill   ${NC}"
echo -e "${BLUE}====================================================${NC}"

MODE="global"

# Parse optional arguments
for arg in "$@"; do
    case $arg in
        --project|-p)
            MODE="project"
            shift
            ;;
        --standalone|-s)
            MODE="standalone"
            shift
            ;;
        --help|-h)
            echo "Usage: install.sh [OPTIONS]"
            echo ""
            echo "Options:"
            echo "  --global (default)   Install globally to ~/.claude/skills and ~/.claude/commands"
            echo "  --project, -p        Install into the current directory (.claude/skills/)"
            echo "  --standalone, -s     Install standalone playbooks to ~/Claude-Business-Starter-Kit"
            exit 0
            ;;
    esac
done

if [ "$MODE" = "project" ]; then
    SKILL_DIR="$(pwd)/.claude/skills/claude-business-starter-kit"
    COMMAND_DIR="$(pwd)/.claude/commands"
elif [ "$MODE" = "standalone" ]; then
    SKILL_DIR="$HOME/Claude-Business-Starter-Kit"
    COMMAND_DIR=""
else
    # Default: Global Claude Code skill
    SKILL_DIR="$HOME/.claude/skills/claude-business-starter-kit"
    COMMAND_DIR="$HOME/.claude/commands"
fi

echo -e "📁 Target Directory: ${YELLOW}$SKILL_DIR${NC}"

# Ensure parent directory exists
mkdir -p "$(dirname "$SKILL_DIR")"

# Remove existing installation if present
if [ -d "$SKILL_DIR" ]; then
    echo -e "🔄 Updating existing installation..."
    rm -rf "$SKILL_DIR"
fi

# Clone or download repository
if command -v git >/dev/null 2>&1; then
    echo -e "📦 Cloning via git..."
    git clone --depth 1 "$REPO_URL" "$SKILL_DIR" >/dev/null 2>&1 || {
        echo -e "${YELLOW}⚠️ Git clone failed. Falling back to archive download...${NC}"
        mkdir -p "$SKILL_DIR"
        curl -sSL "$TARBALL_URL" | tar -xz -C "$SKILL_DIR" --strip-components=1
    }
else
    echo -e "📦 Downloading repository archive..."
    mkdir -p "$SKILL_DIR"
    curl -sSL "$TARBALL_URL" | tar -xz -C "$SKILL_DIR" --strip-components=1
fi

# Install Slash Command if in Claude mode
if [ -n "$COMMAND_DIR" ]; then
    mkdir -p "$COMMAND_DIR"
    if [ -f "$SKILL_DIR/.claude/commands/business.md" ]; then
        cp "$SKILL_DIR/.claude/commands/business.md" "$COMMAND_DIR/business.md"
        echo -e "⚡ Installed slash command: ${GREEN}$COMMAND_DIR/business.md${NC}"
    fi
fi

echo ""
echo -e "${GREEN}✅ Claude Business Starter Kit successfully installed!${NC}"
echo ""
echo -e "💡 ${BLUE}How to use:${NC}"
echo -e "  1. Run Claude Code in your terminal:"
echo -e "     ${YELLOW}claude${NC}"
echo -e "  2. Type the slash command or ask any business question:"
echo -e "     ${YELLOW}/business${NC}"
echo -e "     ${YELLOW}\"Help me validate my SaaS niche and calculate TAM\"${NC}"
echo -e "     ${YELLOW}\"Write a 4-step cold email sequence for marketing agencies\"${NC}"
echo -e "     ${YELLOW}\"Design a Good-Better-Best pricing model for my service\"${NC}"
echo ""