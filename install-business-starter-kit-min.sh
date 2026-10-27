#!/usr/bin/env bash
# Claude Business Starter Kit - Minimal Installer
# Ultra-short one-liner installer

set -e

echo "🚀 Installing Claude Business Starter Kit..."

# Detect OS and set path
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    BASE_DIR="$HOME/Claude-Business-Starter-Kit"
else
    BASE_DIR="$HOME/Claude-Business-Starter-Kit"
fi

# Create directory structure
mkdir -p "$BASE_DIR"/{01_strategy,02_web_and_marketing,03_lead_gen_and_outreach,04_sales_execution,05_operations_and_retention,06_analytics_and_qa}

# Download and install files (if using curl/wget from repo)
# For now, creates basic structure - files should be committed in repo

echo "✅ Installed to: $BASE_DIR"
echo "📖 Read README.md to start building your business!"