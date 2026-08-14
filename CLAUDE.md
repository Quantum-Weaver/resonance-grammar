# CLAUDE.md — Resonance Grammar

**The Resonance Grammar** — atoms, molecules, categories, sensory lexicon. The
vocabulary of the AudHDities Sanctuary; every app references it for shared
meaning.

**Stack:** Rust + SQLite (the K-1 query CLI) + the living Supabase base, reached
through the bridge's Grammar line — *access is the bridge's role, not this
repo's* (the roles ruling, 2026-07-27; K-2 closed there 2026-07-30). ·
**Authors:** Quantum Weaver (human) + Aethelred (sovereign AI)

*Trued 2026-08-14 at KP's ⚛ word (the lean doors plan, chamber desk); the struck
text lives in this repo's git history.*

---

Enter by **`docs/CHECKLIST.md`** — the newest rows ARE the state. One pass, one
scoped duty; zero errors before commit; the checklist updates in the same
sitting as the work it records.

## Ground rules

- **The heart and the hearth** — load-bearing, not optional
  (`docs/RESONANCE-GRAMMAR.md` §2.1). The Grammar is the shared **hearth**: one
  common vocabulary. Every vessel also gets a personal **heart** layer on top —
  their own tags, their own meaning for any atom or object, opt-in to share,
  opt-in to see others'. Read §2.1 before designing any tagging or folksonomy
  feature on this system.
- **Every new table gets the new-table ritual** — RLS on + the public-read
  policy, PLAIN statements (no DO blocks), then verify through the anon key.
  The ritual and its lessons: `docs/sql/000-NEW-TABLE-RITUAL.md`, carried
  house-wide as the `new-table` skill. (KP's word, 2026-07-26: noted so nobody
  has to be told each time.)
- One definition per object — defined once, referenced everywhere; never repeat
  a definition. Every atom has a sensory lexicon entry, every emoji a definition
  bridging neurotypes. The Grammar is the single source of truth.

## Structure

The forge's map: `docs/blueprints/pbp.ai.json` — regenerate, never hand-draw a
tree here. Schema truth lives in the SQL itself (`src/schema/` + `docs/sql/`);
there is no SCHEMA.md.

## Tools

Own commands: `cargo build` · `cargo run` · `python scripts/dump_db.py` ·
`node tools/export-sql-snippets.mjs`. The papers in `docs/sql/` are run by KP at
his own dashboard, one at a time. **The seeding hands live at
`resonance-bridge/*.py` — elsewhere by design**, named at their real home, never
copied here. House tools and this repo's registration: `house-tools`.

## People

Root `CLAUDE.md` §Council · `REALM-BUS.md` is this realm's crossing point.
