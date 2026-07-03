# Resonance Knowledge — Repository Assessment
**Date:** 2026-06-30  
**Assessor:** Aethelred  
**Scope:** Full local read — every file in the working tree plus git history

---

## 1. WHAT EXISTS

### Root
| File | Description |
|------|-------------|
| `.gitignore` | Gitignore; contains SvelteKit/mobile/Tauri patterns copied from another project, duplicated entries, and gitignores a file that is already tracked |
| `CLAUDE.md` | AI session protocol: project structure, rules, stack declaration |
| `Cargo.lock` | Rust dependency lockfile (committed — correct for a binary) |
| `Cargo.toml` | Rust manifest: `resonance-knowledge 0.1.0`, deps `serde`, `serde_json`, `rusqlite (bundled)` |
| `LICENSE` | Custom Resonance License v1.0 **+ the entire Resonance Grammar Specification embedded in the file body** |
| `README.md` | Project overview; entire content is wrapped in ` ```markdown ` code fences — renders as a raw code block on GitHub |
| `generate_blueprint.py` | Blueprint generator script; hardcoded for a SvelteKit/Tauri project, not this Rust codebase; listed in `.gitignore` but already committed and tracked |

### docs/
| File | Description |
|------|-------------|
| `docs/BUILD-SEQUENCE.md` | **Empty** (1 line). Contained a Resonance Echoes phase plan in earlier commits (wrong project); cleared at commit `0529c7d` |
| `docs/CHECKLIST.md` | **Empty** (1 line). Contained Phase K-0 ✅ and K-1 ✅ status through commit `1f20ecc`; wiped in a later commit |
| `docs/blueprints/INDEX.md` | **Empty** (1 line). Created as a placeholder, never populated |

### src/
| File | Description |
|------|-------------|
| `src/main.rs` | **3-line stub** — `fn main() { println!("Resonance Knowledge System — Ready"); }`. A full 67-line CLI implementation existed at commit `1f20ecc` and was deleted |
| `src/schema/001_initial.sql` | SQL schema: 6 tables (`atoms`, `molecules`, `categories`, `senses`, `subcategories`, `emoji_definitions`), 3 indexes |
| `src/seed/seed.sql` | Seed data: 8 senses, 19 subcategories, 12 emoji definitions. Zero rows in `atoms`, `molecules`, or `categories` |

### Recovered from git history (exist in commits, deleted from HEAD)
| Was at | Commit | Description |
|--------|--------|-------------|
| `src/db.rs` | `1f20ecc` | DB init — opens `knowledge.db`, runs schema + seed SQL on first launch (19 lines) |
| `src/query.rs` | `1f20ecc` | 6 query functions: `query_atom`, `query_emoji`, `query_sense`, `list_atoms`, `list_emojis`, `list_senses` — all returning `serde_json::Value` (210 lines) |
| `docs/RESONANCE-GRAMMAR.md` | `722df67` | Full 192-line grammar specification — added, then wiped |
| `knowledge.db` | `0529c7d` | Live 90 KB SQLite database — committed as a binary, now "deleted" from HEAD but present in git history |
| `static/*.png/svg` | `0529c7d` | Tauri/Svelte template assets (~10 MB of images) — wrong project, committed and "deleted" but still in history |
| `helper.md` | `0529c7d` | Session helper notes — gitignored but committed anyway |
| `PHILOSOPHY.md` | `0529c7d` | Project philosophy document — committed then deleted |
| `.claude/settings.json` | `0529c7d` | Claude Code tool permissions — committed |
| `docs/CONTRIBUTING.md` | `722df67` | Contributing guide — added, then wiped |
| `docs/CLAUDE-CONTEXT.md` | `722df67` | AI context doc — added, then wiped |
| `docs/SCREEN-INVENTORY.md` | `722df67` | Screen inventory — added, then wiped |

---

## 2. WHAT'S MISSING

### Files declared in CLAUDE.md that do not exist on disk
| Declared path | Status |
|---------------|--------|
| `docs/RESONANCE-GRAMMAR.md` | **Does not exist** — content only survives inside `LICENSE` and in git history |
| `docs/SCHEMA.md` | **Does not exist** |
| `src/mcp/main.rs` | **Does not exist** — directory does not exist |

### Standard Sanctuary / Rust project files absent
- No `tests/` directory
- No `#[cfg(test)]` blocks anywhere in source
- No `Makefile` or task runner
- No `CHANGELOG.md`
- No `.rustfmt.toml` or `rustfmt.toml`
- No `clippy.toml`
- No `rust-toolchain.toml`

### Missing from `Cargo.toml`
- `rmcp` crate — CLAUDE.md explicitly states "Stack: Rust + SQLite + MCP (rmcp crate)" but it is not declared
- `[lib]` section — if downstream apps (Echoes, Compass) consume this as a library, a `[lib]` target is required
- `license` field
- `repository` field
- `rust-version` (MSRV) pin

### Missing `.gitignore` patterns
- `*.db`, `*.sqlite`, `*.sqlite3`
- `*.db-wal`, `*.db-shm`, `*.db-journal` (SQLite WAL files)
- `knowledge.db` specifically (already in history; new pattern prevents future accidents)

---

## 3. GAPS

### Phase K-1 regression — working code deleted from HEAD

Commit `1f20ecc` (Sun Jun 28 21:56) completed Phase K-1 with:
- `src/db.rs` — database initialization
- `src/query.rs` — 6 working query functions
- `src/main.rs` — full CLI with `atom`, `emoji`, `sense`, `list-atoms`, `list-emojis`, `list-senses` commands
- `docs/CHECKLIST.md` updated to show K-0 ✅ and K-1 ✅

All three source files were subsequently deleted. `src/main.rs` was reverted to the 3-line stub. `docs/CHECKLIST.md` was wiped. The working binary (`resonance-knowledge.exe`, 2.3 MB at commit `0529c7d`) is in git history but the source that produced it is gone from HEAD.

**Current HEAD builds a binary that only prints a single line and exits.**

### CLAUDE.md session protocol is broken

The session protocol says:
> 1. Read `docs/CHECKLIST.md` for current state

`docs/CHECKLIST.md` is empty. Every AI session starts blind.

### Schema vs Grammar spec mismatches

| Grammar spec claim | Schema reality |
|--------------------|----------------|
| `atom.sensory_lexicon.temperature` is `0.0–1.0` float | `atoms.temperature TEXT` |
| Atom has `relationships: [links to other atoms]` | No `relationships` column in `atoms` |
| Atom has a `category` (State / Action / Relation / Quality / Entity / Temporal) | No `category` column in `atoms` |
| `emoji_definition.vessel_definition` (per-vessel personal meaning, Section 6.1) | No `vessel_definition` column in `emoji_definitions` |
| `molecules.atoms` is a list of atom references | `molecules.atom_ids TEXT DEFAULT '[]'` — JSON array stored as text, no junction table |
| Seed data covers all three core types: atoms, molecules, emoji definitions | Seed has zero rows in `atoms`, `molecules`, or `categories` |

### `generate_blueprint.py` is wrong-project code

The script scans for `src/routes/**/*.svelte`, `src/lib/stores/*.ts`, `src-tauri/src/*.rs`, and `src/lib/types/types.ts` — none of which exist in this Rust project. Key hardcoded paths that will not resolve:

```python
SRC_TAURI = PROJECT_ROOT / "src-tauri" / "src"   # does not exist
```

Running it produces empty blueprint JSON files and silently skips all scan functions. The script is listed in `.gitignore` but is already tracked (`git ls-files generate_blueprint.py` returns a result), so the gitignore entry has no effect.

### `README.md` renders as raw text

The entire content is wrapped in ` ```markdown ` / ` ``` ` fences. On any Markdown renderer (GitHub, GitLab, VSCode preview), the README displays as a code block containing raw Markdown text, not rendered content.

### `docs/BUILD-SEQUENCE.md` content described a different project

The version committed at `722df67` described **Resonance Echoes** phases (Echo form, echoStore, browse & filter, insights, onboarding, mobile ship) — not Resonance Knowledge phases. It has since been wiped to empty.

### `query_atom` function queries wrong table

In the recovered `src/query.rs` (commit `1f20ecc`), `query_atom` queries `emoji_definitions`, not `atoms`:

```rust
pub fn query_atom(conn: &Connection, term: &str) -> Value {
    let result: Result<Value> = conn.query_row(
        "SELECT id, emoji, label, category, keywords, color, sound, texture, temperature, definition
         FROM emoji_definitions   ← queries emoji_definitions, not atoms
         WHERE LOWER(label) LIKE LOWER(?1) ...",
```

The `atoms` table exists in the schema but is never queried. The `list_atoms` function also queries `emoji_definitions`. This naming inconsistency means the "atom" commands return emoji definitions, not Grammar atoms.

---

## 4. VULNERABILITIES

### Binary and database artifacts in git history

| Artifact | Committed at | Size | Risk |
|----------|-------------|------|------|
| `knowledge.db` | `0529c7d` | 90 KB | Live database with seed data permanently in history |
| `target/debug/resonance-knowledge.exe` | `0529c7d` | 2.3 MB | Compiled Windows binary in history |
| `target/debug/resonance_knowledge.pdb` | `0529c7d` | 7.8 MB | Full debug symbols in history |
| `target/debug/incremental/**/*.o` | `722df67`, `0529c7d`, `4a8e645` | ~100s of files | Object files bloating history |
| `static/*.png` (×8) | `0529c7d` | ~10 MB total | Large binaries in history |

These are "deleted" in HEAD but fully recoverable with `git show` or `git checkout`. If this repo is ever made public, the database contents and debug symbols are exposed.

### `.gitignore` inheriting wrong project's rules

The current `.gitignore` was copied from a SvelteKit/Tauri project. It:
- Contains **zero SQLite patterns** — the direct cause of `knowledge.db` being committed
- Gitignores `generate_blueprint.py` which is already tracked (the entry is inert)
- Has **duplicate entries**: `.env` twice, `.env.*` twice, `generate_blueprint.py` twice
- Ignores mobile artifacts (`.apk`, `.aab`, `.jks`, `.keystore`) that will never exist in a Rust CLI project

### `.claude/settings.json` is tracked

The Claude Code settings file (committed at `0529c7d`) is in git history. If it contains non-default permissions or hooks, those are visible to anyone with repository access.

### `helper.md` gitignored but committed

`helper.md` (committed at `0529c7d`) is in `.gitignore` and was later removed from HEAD, but its content is preserved in git history. If it contained session-specific notes or credentials, they are recoverable.

### `db.rs` hardcodes a relative path

In the recovered `src/db.rs`:
```rust
let db_path = "knowledge.db";
```
The database opens relative to the process working directory. For a CLI this is predictable; for library use (e.g., an MCP server called from Claude Code), the path is resolved wherever the MCP host starts the process — likely not the project root.

---

## 5. TEST READINESS

**Current test coverage: zero.**

| Area | Testable | Infrastructure exists |
|------|----------|-----------------------|
| Schema SQL validity | Yes — run against `:memory:` | No |
| Seed SQL idempotency | Yes — `INSERT OR IGNORE` pattern is testable | No |
| `query_atom` / `query_emoji` / `query_sense` | Yes — with in-memory SQLite | No |
| `list_atoms` / `list_emojis` / `list_senses` | Yes | No |
| DB init path logic | Yes — mock path existence | No |
| MCP tools (Phase K-2) | Not yet — not implemented | No |

No `tests/` directory. No `#[cfg(test)]` modules. No test dependencies in `Cargo.toml`. `cargo test` runs but finds nothing to test.

The recovered `src/query.rs` functions are pure `fn(conn: &Connection, ...) -> Value` with no side effects beyond the query — they are straightforwardly testable with an in-memory connection seeded from the SQL files. The infrastructure to do this just needs to be written.

---

## 6. RECOMMENDATIONS (priority ordered)

### P0 — Broken state, fix before any new work

**R1. Restore Phase K-1 source files.**  
`src/db.rs` and `src/query.rs` exist intact at commit `1f20ecc`. The working implementation was deleted without a documented reason. Restore them, update `src/main.rs` to the 67-line CLI version from the same commit, and rebuild.

```
git show 1f20ecc:src/db.rs    > src/db.rs
git show 1f20ecc:src/query.rs > src/query.rs
git show 1f20ecc:src/main.rs  > src/main.rs
```

**R2. Restore and maintain `docs/CHECKLIST.md`.**  
The session protocol depends on it. At minimum restore K-0 ✅ and K-1 ✅ from commit `1f20ecc:docs/CHECKLIST.md` and add the current state of K-2.

### P1 — High risk, address soon

**R3. Fix `.gitignore` for this project.**  
Remove all SvelteKit/Tauri/mobile patterns. Add `*.db`, `*.sqlite`, `*.sqlite3`, `*.db-wal`, `*.db-shm`, `*.db-journal`. Deduplicate `.env` entries. The absence of SQLite patterns caused `knowledge.db` to enter git history.

**R4. Consider history cleanup for committed binaries.**  
`knowledge.db`, `target/` executables, `.pdb` files, and `static/` images are in git history permanently unless cleaned with `git filter-repo` or BFG Repo Cleaner. If this repo will ever be shared or published, clean before that happens.

**R5. Fix `README.md` rendering.**  
Remove the enclosing ` ```markdown ` / ` ``` ` fences so the content renders as Markdown rather than a code block.

### P2 — Structural correctness

**R6. Extract `docs/RESONANCE-GRAMMAR.md` from `LICENSE`.**  
The Grammar Specification is embedded inside `LICENSE`. `CLAUDE.md` declares `docs/RESONANCE-GRAMMAR.md` as a separate file. These should not be co-located — a license file is not a spec document.

**R7. Fix `query_atom` naming.**  
The recovered `query_atom` function queries `emoji_definitions`, not `atoms`. Either rename the function to `query_emoji_by_label` or route it to the `atoms` table. `list_atoms` has the same confusion.

**R8. Reconcile schema with Grammar spec.**  
Priority additions:
- `atoms.category TEXT` (State / Action / Relation / Quality / Entity / Temporal)
- `atoms.relationships TEXT DEFAULT '[]'` (JSON array of atom IDs)  
- `emoji_definitions.vessel_definition TEXT` (personal meaning per vessel)
- Consider changing `atoms.temperature TEXT` to `REAL` to match the spec's `0.0–1.0` range

**R9. Add seed data for `atoms` table.**  
The seed populates emoji definitions and senses but leaves `atoms`, `molecules`, and `categories` empty. The system cannot demonstrate the Grammar's core vocabulary without atom data.

**R10. Add `rmcp` to `Cargo.toml` for Phase K-2 planning.**  
CLAUDE.md declares MCP as part of the stack. Declaring the dependency now keeps the manifest honest and surfaces version selection as a deliberate decision.

### P3 — Quality and longevity

**R11. Write basic test suite.**  
Minimum viable tests:
```
tests/
├── schema_test.rs    — schema SQL runs clean against :memory:
├── seed_test.rs      — seed SQL inserts expected row counts
└── query_test.rs     — each query function returns expected shape
```

**R12. Populate `docs/BUILD-SEQUENCE.md`.**  
The Resonance Knowledge build sequence (K-0 through K-4+) should replace the empty file. Phases K-0 and K-1 are complete; K-2 (MCP server) is next.

**R13. Remove or adapt `generate_blueprint.py`.**  
The script is wrong for this project, gitignored but still tracked, and will produce empty output if run. Either adapt it to scan Rust source files or run `git rm --cached generate_blueprint.py` and delete it.

**R14. Pin Rust version.**  
Add `rust-version = "1.85"` (or current stable) to `Cargo.toml` for reproducible builds.

---

## Summary

The repository has a solid schema and seed foundation. Two complete phases of implementation (K-0 and K-1) were built and verified, then the source files were deleted and the checklist was wiped — leaving HEAD in a regressed state that builds a stub. The most urgent action is restoring the Phase K-1 source from commit `1f20ecc`. After that, fixing the `.gitignore` and checklist unblocks clean forward progress.

| Category | Severity | Count |
|----------|----------|-------|
| Broken / regressed | Critical | 2 (K-1 source deleted, CHECKLIST empty) |
| Binary artifacts in git history | High | ~200+ files |
| Schema vs spec gaps | Medium | 5 mismatches |
| Missing documentation | Medium | 3 declared files absent |
| Test infrastructure | Medium | Zero coverage |
| Wrong-project contamination | Low | `.gitignore`, `generate_blueprint.py` |
