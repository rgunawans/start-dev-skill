# Clean Architecture, SOLID & Minimalist Engineering Rules

## 1. Dependency Rule (Strict Inward Flow)
- **Domain:** Pure business entities, domain events, enums, and core repository/service abstractions. ZERO dependencies on frameworks, ORMs, UI, or external SDKs.
- **Application:** Use cases, commands/queries, DTOs, and validation. Depends ONLY on `Domain`.
- **Infrastructure:** Database contexts, external APIs, file/hardware I/O, auth providers. Implements interfaces defined in `Domain` or `Application`.
- **Presentation (UI/API):** Thin entry points (Blazor components, WinForms presenters/viewmodels, Minimal APIs/Controllers). Delegates all business decisions to `Application`.

## 2. Vertical Slice & Context Hygiene
- Group application logic and UI components **by feature** (e.g., `Features/CheckIn/`, `Features/Invoicing/`) rather than sprawling horizontal folders.
- Keep files small, focused, and cohesive so AI agents can read a complete feature slice without exceeding context limits.

## 3. Practical SOLID Enforcement
- **S (Single Responsibility):** One class/handler = one cohesive reason to change. Never mix SQL/ORM queries inside UI event handlers or controllers.
- **O (Open/Closed):** Extend behavior via strategy/interface implementations rather than modifying core switch-case blocks.
- **L (Liskov Substitution):** Subtypes and mock/test implementations must honor base contracts without throwing `NotImplementedException`.
- **I (Interface Segregation):** Create narrow, client-specific interfaces (e.g., `IReadGuestRepository`, `ICheckInNotifier`) instead of monolithic `IRepository` bloat.
- **D (Dependency Inversion):** High-level modules depend on abstractions; wire concrete implementations exclusively at the Composition Root (`Program.cs` / DI container).

## 4. YAGNI & Anti-Bloat
- Do NOT create abstract factories, generic repositories over modern ORMs (like EF Core/Dapper), or event buses unless explicitly required by the problem domain.
- Write direct, readable, strongly-typed code.