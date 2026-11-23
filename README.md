# `/start-dev` — Minimalist Anti-Slop & Clean Architecture Agent Skill

A lightweight, high-discipline **Agent Skill** that turns raw project ideas into a **SOLID, Clean Architecture blueprint** and a **ready-to-execute, anti-slop master prompt**—without heavy bureaucracy or context bloat.

## Why `/start-dev`?

Most AI coding workflows fail at one of two extremes:
- **Too Loose:** One-shot prompts produce spaghetti code, `// TODO` placeholders, and generic AI UI templates.
- **Too Heavy:** Multi-agent spec frameworks generate dozens of bloated markdown files before writing a single line of code.

`/start-dev` hits the **High-Discipline Minimalist** sweet spot:
1. **Rapid Discovery (4 Questions Max):** Gathers only critical architectural constraints.
2. **Clean Architecture + Vertical Slice:** Enforces strict inward dependencies and small, AI-friendly feature slices.
3. **SOLID & YAGNI:** Practical interface boundaries without over-engineered abstractions.
4. **Anti-Slop Code & UI:** Zero placeholders, explicit error/loading/empty states, and intentional visual hierarchy.

---

## Installation

### Option 1: Universal Skills CLI (Recommended)
Works across Antigravity IDE, GitHub Copilot, Cursor, Claude Code, and OpenClaw:

```bash
# Install globally across all projects
npx skills add rgunawans/start-dev-skill -g

# Or install into the current workspace only
npx skills add rgunawans/start-dev-skill
```

### Option 2: PowerShell (Zero Node.js Dependency)
Clone the repo and run `install.ps1`:

```powershell
git clone https://github.com/rgunawans/start-dev-skill.git
cd start-dev-skill

# Install globally for Antigravity, Copilot, Cursor, and Claude
.\install.ps1 -Global

# Or target a specific tool (antigravity | copilot | cursor | claude)
.\install.ps1 -Target antigravity -Global
```

---

## Usage

Open any new or existing project folder in your AI IDE and type:

```text
/start-dev
```

### Example Workflow

1. **You:** `/start-dev`
2. **Agent (Phase 1 — Rapid Discovery):** Asks 4 concise questions (*Core Objective, Tech Stack, UI/UX Direction, Hard Constraints*).
3. **You:**
   > 1. Event badge & guest check-in desktop app for on-site operators.
   > 2. .NET 10 WinForms + SQLite, local offline-first with optional REST sync.
   > 3. High-density operational UI, high contrast, fast keyboard/barcode scanner focus.
   > 4. Must support Sato barcode label printing and handle 5,000+ local records smoothly.
4. **Agent (Phase 2 — Blueprint & Master Prompt):** Outputs a Clean Architecture folder structure (`Domain`, `Application/Features/CheckIn`, `Infrastructure/Sqlite`, `Infrastructure/Printing`, `UI`), SOLID guardrails, and an atomic 4-step **Master Prompt** ready to execute immediately.

---

## License

MIT
