#!/bin/bash
# Claude Business Starter Kit - Minimal Installer
set -e
echo "🚀 Installing Claude Business Starter Kit..."
BASE_DIR="$HOME/Claude-Business-Starter-Kit"
mkdir -p "$BASE_DIR"
curl -sSL https://raw.githubusercontent.com/Abinash-Gope/claude-business-starter-kit/main/01_strategy/01_niche_research.md -o "$BASE_DIR/README.md" && echo "✅ Installed to $BASE_DIR" || echo "Please use full installer"