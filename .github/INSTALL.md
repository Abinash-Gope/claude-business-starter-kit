# Installation Guide — Claude Business Starter Kit

The **Claude Business Starter Kit** can be installed as an AI Agent Skill for **Claude Code** (and compatible agents), or as a standalone folder of markdown playbooks.

---

## 🚀 Option 1: Install as a Claude Code Skill (Recommended)

### **Global Installation (Available in all your projects)**
Installs to `~/.claude/skills/claude-business-starter-kit` and activates the `/business` slash command in `~/.claude/commands/`:

**macOS / Linux / WSL:**
```bash
curl -fsSL https://raw.githubusercontent.com/Abinash-Gope/claude-business-starter-kit/main/install.sh | bash
```

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/Abinash-Gope/claude-business-starter-kit/main/install.ps1 | iex
```

### **Project-Level Installation (Current workspace only)**
Installs directly into `.claude/skills/claude-business-starter-kit` in your current working directory:

```bash
curl -fsSL https://raw.githubusercontent.com/Abinash-Gope/claude-business-starter-kit/main/install.sh | bash -s -- --project
```

---

## 🛠️ Option 2: Manual Installation

```bash
# Clone directly into Claude's global skills directory
git clone https://github.com/Abinash-Gope/claude-business-starter-kit.git ~/.claude/skills/claude-business-starter-kit

# Copy the /business slash command
mkdir -p ~/.claude/commands
cp ~/.claude/skills/claude-business-starter-kit/.claude/commands/business.md ~/.claude/commands/business.md
```

---

## 📁 Option 3: Standalone Playbooks Folder

If you just want the raw markdown guides in `~/Claude-Business-Starter-Kit`:

```bash
curl -fsSL https://raw.githubusercontent.com/Abinash-Gope/claude-business-starter-kit/main/install.sh | bash -s -- --standalone
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

To remove the skill completely:

```bash
# Remove global skill
rm -rf ~/.claude/skills/claude-business-starter-kit
rm -f ~/.claude/commands/business.md

# Remove standalone folder (if used)
rm -rf ~/Claude-Business-Starter-Kit
```