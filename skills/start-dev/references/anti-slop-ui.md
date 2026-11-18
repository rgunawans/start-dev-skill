# Anti-Slop Code & UI/UX Discipline

## 1. Code Execution Anti-Slop
- **No Placeholders:** Never output `// TODO`, `// implement later`, `...existing code...`, or stubbed dummy methods. Every generated file must compile and run as-is.
- **Zero Filler Commentary:** Strip conversational intros/outros and redundant comments that restate the code (`// Save to database`). Comment only non-obvious business invariants or edge cases.
- **Defensive by Default:** Handle nullability, network/I/O failures, invalid inputs, and cancellation tokens explicitly.

## 2. UI/UX Anti-Slop Standards
- **Reject Generic AI Aesthetics:** Avoid default "AI template" tropes—excessive drop shadows, generic purple-blue gradients, unmotivated glassmorphism, or bloated card padding that hides actual data.
- **Intentional Hierarchy & Density:** Match information density to the user's domain (e.g., compact, scannable tables and crisp keyboard-friendly controls for operational/enterprise apps; calm whitespace for consumer flows).
- **Design Tokens:** Enforce consistent spacing scales, semantic colors (primary, surface, border, danger, success), and clear typographic contrast.
- **Complete State Coverage:** Never build only the "happy path." Every asynchronous view or form MUST explicitly implement:
  1. **Loading State** (skeleton or non-blocking spinner)
  2. **Empty State** (clear guidance + primary action)
  3. **Error State** (human-readable message + retry mechanism)
  4. **Validation & Disabled States** (prevent double-submission)