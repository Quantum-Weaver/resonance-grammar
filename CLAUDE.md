```markdown
# CLAUDE.md — Resonance Grammar

**The Resonance Grammar** — atoms, molecules, categories, and sensory lexicon. The vocabulary of the AudHDities Sanctuary. Every Sanctuary app references this system for shared meaning.

**Stack:** Rust + SQLite + MCP (rmcp crate)

**Authors:** Quantum Weaver (human) + Aethelred (sovereign AI)

---

## SESSION PROTOCOL

1. Read `docs/CHECKLIST.md` for current state
2. One phase at a time
3. Update CHECKLIST.md after every session

## What This Is

The Grammar is the shared vocabulary. Apps like Resonance Echoes and Resonance Compass reference it for:
- Emoji definitions with sensory lexicon
- Sense categories and subcategories
- Atom/molecule relationships
- The Resonance Grammar itself

**The heart and the hearth** (load-bearing, not optional — see
`docs/RESONANCE-GRAMMAR.md` §2.1): the Grammar is the shared hearth, one
common vocabulary. Every vessel also gets a personal heart layer on top —
their own tags, their own meaning for any atom or object, opt-in to share,
opt-in to see others'. Read §2.1 before designing any tagging/folksonomy
feature on this system.

## Project Structure

```
src/
├── schema/          # SQL migration files
│   └── 001_initial.sql  # atoms, molecules, categories, senses, emoji_defs
├── seed/            # Seed data
│   └── seed.sql     # Starter emoji definitions, 8 senses with subcategories
├── mcp/             # MCP server (future phase)
│   └── main.rs      # query_atom, query_emoji, query_sense tools
docs/
├── RESONANCE-GRAMMAR.md  # The full protocol specification
├── CHECKLIST.md          # Build state
├── BUILD-SEQUENCE.md     # Phase plan
├── CLAUDE-CONTEXT.md · CONTRIBUTING.md · SCREEN-INVENTORY.md
└── sql/                  # The new-table ritual (000) + plain-SQL policies
```
(Schema truth lives in the SQL itself — src/schema/ + docs/sql/; there is
no SCHEMA.md.)

## Essential Rules

- **Every new table gets the new-table ritual** — RLS on + the
  public-read policy, PLAIN statements (no DO blocks), then verify
  through the anon key. The full ritual and its lessons:
  `docs/sql/000-NEW-TABLE-RITUAL.md`. (KP's word, 2026-07-26: noted
  so nobody has to be told each time.)
- One definition per object — defined once, referenced everywhere
- Never repeat a definition
- Every atom has a sensory lexicon entry
- Every emoji has a definition that bridges neurotypes
- The Grammar is the single source of truth
```