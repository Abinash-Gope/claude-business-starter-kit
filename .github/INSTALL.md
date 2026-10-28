# Installation Guide — Claude Business Starter Kit

The **Claude Business Starter Kit** can be installed as an AI Agent Skill for **Claude Code** (and compatible agents), or as a standalone folder of markdown playbooks.

---

## 🚀 Option 1: Global Installation (Recommended)

Clone directly into your global Claude Code skills directory:

```bash
git clone https://github.com/Abinash-Gope/claude-business-starter-kit.git ~/.claude/skills/claude-business-starter-kit
```

---

## 🛠️ Option 2: Project-Level Installation

Install into your current project workspace only:

```bash
git clone https://github.com/Abinash-Gope/claude-business-starter-kit.git .claude/skills/claude-business-starter-kit
```

---

## 📁 Option 3: Standalone Playbooks Folder

If you just want the raw markdown guides:

```bash
git clone https://github.com/Abinash-Gope/claude-business-starter-kit.git ~/Claude-Business-Starter-Kit
```

---

## 💡 How to Use with Claude Code

1. Start Claude Code in any project directory:
   ```bash
   claude
   ```
2. Type `/business` or ask any business question:
   ```
   /business
   /business strategy
   "Help me design my SaaS pricing tiers and discount strategy"
   "Write a 4-step cold outreach email sequence for e-commerce brands"
   ```

Claude will automatically consult the relevant playbook and generate actionable copy, frameworks, and checklists.

---

## 🗑️ Uninstalling

To remove the skill completely, delete the installed skill folder:
- **macOS / Linux**: Delete the `claude-business-starter-kit` folder inside `~/.claude/skills/`
- **Windows**: Delete the `claude-business-starter-kit` folder inside `%USERPROFILE%\.claude\skills\`