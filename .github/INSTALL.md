# Installation Guide

## Quick Install (One Command)

The fastest way to get the Claude Business Starter Kit:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/Abinash-Gope/claude-business-starter-kit/main/install-business-starter-kit.sh)
```

## Manual Install

```bash
# Clone the repository
git clone https://github.com/Abinash-Gope/claude-business-starter-kit.git
cd claude-business-starter-kit

# Run the installer
bash install-business-starter-kit.sh

# Or copy files manually
cp -r * /path/to/your/workspace/
```

## What's Installed?

After installation, you'll have:

```
Claude-Business-Starter-Kit/
├── README.md                    # Master checklist & navigation
├── 01_strategy/                 # 5 playbooks (niche, competition, ICP, offers, pricing)
├── 02_web_and_marketing/        # 5 playbooks (website, landing page, content, ads, funnel)
├── 03_lead_gen_and_outreach/    # 5 playbooks (prospecting, leads, cold email, personalization, proposals)
├── 04_sales_execution/          # 4 playbooks (scripts, objections, follow-ups, case studies)
├── 05_operations_and_retention/ # 4 playbooks (CRM, onboarding, automation, retention)
└── 06_analytics_and_qa/         # 3 playbooks (metrics, CRO, QA checklists)
```

## Getting Started

1. Open `README.md` for the master task checklist
2. Start with `01_strategy/01_niche_research.md` to validate your business idea
3. Follow the modules in order

## Requirements

- Bash shell (Linux/macOS/Git Bash on Windows)
- Git (optional, for cloning)
- Text editor (VS Code recommended)

## Troubleshooting

**Windows Users**: Use Git Bash or WSL
```bash
# Using Git Bash
bash install-business-starter-kit.sh

# Or using PowerShell (download manually)
curl -L -o install.sh https://raw.githubusercontent.com/Abinash-Gope/claude-business-starter-kit/main/install-business-starter-kit.sh
bash install.sh
```

**Permission Denied**:
```bash
chmod +x install-business-starter-kit.sh
./install-business-starter-kit.sh
```

## Uninstall

Simply delete the installed folder:
```bash
rm -rf ~/Claude-Business-Starter-Kit
```