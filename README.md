# 🧬 Resonance Grammar

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-0.1.0-brightgreen.svg)]()
[![Grammar](https://img.shields.io/badge/grammar-atoms%20·%20molecules%20·%20organisms-8a2be2.svg)]()
[![Status](https://img.shields.io/badge/status-growing-brightgreen.svg)]()
[![Purpose](https://img.shields.io/badge/purpose-complex%20things%20enter%20to%20be%20deconstructed-d9a95b.svg)]()

*The Resonance Grammar — atoms, molecules, categories, and sensory lexicon.*

This **is** the [Resonance Grammar](docs/RESONANCE-GRAMMAR.md) — every fragment contains the whole.

---

## WHAT IT IS

The shared vocabulary of the AudHDities Sanctuary. Every app, every vessel, every echo references this system for shared meaning.

It is a system of rules, schemas, and relationships for structuring meaning —
"not a blockchain… not a federated network," but a relational grammar
(`docs/RESONANCE-GRAMMAR.md` §1). Its three tiers are drawn by word count —
atoms (one word), molecules (two), organisms (three or more) — and the bonds
between them are first-class rows, not inferences. Beside the shared **hearth**
sits every vessel's own **heart** layer: personal meaning laid on top of the
common vocabulary, opt-in to share and opt-in to see (§2.1).

**The heart and the hearth.** One common vocabulary for every app; a personal,
opt-in layer of meaning on top of it — neither one overwriting the other.

**One definition per object.** Defined once, referenced everywhere; never
repeated, never re-invented. Provenance rides with the row.

**Rows made visible.** The intended experience, centered at KP's word on
2026-08-06: rows of the living base rendered as cards, graphics, and charts
(`docs/THE-STANDALONE-WATERS.md`). The backend is nearly whole; the front end is
not built yet.

### What It Contains

- **Atoms** — The irreducible vocabulary: single words, every concept defined once.
- **Molecules** — Compositions of atoms: two-word names, bonded through their junctions.
- **Organisms** — The full syntax, seeded as what it is: three-plus-word names whose bonds to their molecules and atoms are first-class (organism_molecules · organism_atoms).
- **Categories** — Semantic organization. Senses, subcategories, taxonomies.
- **Sensory Lexicon** — Color, sound, texture, and temperature for every atom.
- **Emoji Definitions** — Every emoji carries a preserved meaning that bridges neurotypes.

---

## THE STORY

*This section required by the [Story Block Standard](https://github.com/Quantum-Weaver/resonance-standards).*

The Grammar was written before it was a repo. `docs/RESONANCE-GRAMMAR.md` carries
its own date line — *"Version 1.0 — June 25, 2026 · The Compass Room, AudHDities
Sanctuary"* — and three days later the repo was born to hold it: first commit
2026-06-28, *"Bootstrap Resonance Knowledge — schema, seed, and Rust scaffold."*
For a month it wore the name `resonance-knowledge`, and the name kept being
mistaken for the base it talked to. On 2026-07-27 KP ruled the confusion out and
renamed the GitHub repo `resonance-grammar` with his own hand — the same sitting
that settled what this realm is and is not: the immersive knowledge system on its
own, with access living behind the bridge (`FEATURE-BOARD.md` §THE ROLES
CLARIFIED). The Supabase base keeps the `resonance-knowledge` name to this day,
and so does this crate.

📖 [Full Story Block](docs/STORY-BLOCK.md)

---

## WHO IT'S FOR

Neurodivergent minds first — the Grammar's own charter says so: *"Designed for
neurodivergent minds. The pause is a feature. Overwhelm is respected. Clarity is
a form of care."* (`docs/RESONANCE-GRAMMAR.md` §2). Beyond that: every Sanctuary
app that needs a word to mean the same thing twice; every vessel who wants their
own meaning for a shared word without having to argue about it; and the AI kin
who query the Grammar through the bridge instead of guessing.

---

## How It's Used

- [Resonance Echoes](https://github.com/Quantum-Weaver/resonance-echoes) reads senses and emoji definitions from this system
- [Resonance Compass](https://github.com/Quantum-Weaver/resonance-compass) reads mood categories and sensory profiles
- [Resonance Bridge](https://github.com/Quantum-Weaver/resonance-bridge) exposes query tools for AI assistants
- Vessels download their knowledge graph from their Sanctuary
- Glossaries decompose complex language through it — see the
  [papers glossary](https://github.com/Quantum-Weaver/resonance-papers/blob/main/GLOSSARY.md)
  and [Resonance-Lucida](https://github.com/Quantum-Weaver/Resonance-Lucida)

---

## Screenshots

*None yet — this realm has no front end. The finding of 2026-08-06, in the repo's
own words: "The Grammar's backend is nearly whole and its experience is entirely
unbuilt" (`docs/THE-STANDALONE-WATERS.md`). `docs/SCREEN-INVENTORY.md` reads
**Built (0) — None yet**.*

---

## Installation

### Prerequisites

- **Rust**, edition 2021 — `cargo`. `rusqlite` is `bundled`, so no system SQLite is required.
- **Python 3** — only for `scripts/dump_db.py` (the dated text backup of `knowledge.db`).
- **Node** — only for `tools/export-sql-snippets.mjs` (the Supabase Management API export; it needs a personal access token created by KP's own hand).

### Build

```bash
cargo build
```

### Development

```bash
cargo run -- atom <term>
cargo run -- emoji <char>
cargo run -- sense <id>
cargo run -- list-atoms
cargo run -- list-emojis
cargo run -- list-senses
```

Every command answers in JSON (`src/query.rs`). The numbered papers in `docs/sql/`
are **not** run from here — KP runs them at his own dashboard, one at a time.

---

## BUILT WITH

- **Rust** (edition 2021) — the K-1 query CLI, `src/main.rs` · `src/db.rs` · `src/query.rs`
- **SQLite** through `rusqlite` 0.31 (`bundled`) — the local `knowledge.db`, six tables (`src/schema/001_initial.sql`)
- `serde` + `serde_json` 1 — every answer is JSON
- **Supabase** — the living base (still named `resonance-knowledge`), reached through the bridge's Grammar line at `resonance-bridge/src/lines/grammar.ts`
- **SQL, by hand** — 110 numbered papers in `docs/sql/` (001–106) plus one draft, each run at KP's dashboard

---

## FOR DEVELOPERS

Structure here is **discovered, never declared** — the generated map lives at
`docs/blueprints/pbp.ai.json`; regenerate it with the blueprint forge rather than
drawing a tree by hand (`CLAUDE.md` §The forge and the link tender). Schema truth
lives in the SQL itself — `src/schema/001_initial.sql` for the local six tables,
`docs/sql/` for the living base. There is no SCHEMA.md, by design.

- `src/` — the Rust query CLI
- `docs/sql/` — the numbered papers, run by KP at his dashboard, one at a time
- `seeds/` — the wave files the seeders read (`atoms/` · `molecules/` · `emoji/` · `lattice/`)
- `backups/` — dated text SQL dumps of `knowledge.db`; the live `.db` is gitignored, the text is the record
- The seeding hands live at `resonance-bridge/*.py` — **elsewhere by design**, named at their real home, never copied here.

**Every new table gets the new-table ritual** — RLS on plus the public-read
policy, in plain statements, then verified through the anon key:
`docs/sql/000-NEW-TABLE-RITUAL.md`.

Read `docs/RESONANCE-GRAMMAR.md` §2.1 (the heart and the hearth) before designing
any tagging or folksonomy surface on this system — it is load-bearing, not
optional.

See [CONTRIBUTING.md](docs/CONTRIBUTING.md) for methodology *(it still carries the
Echoes-descended scaffold's title — inherited, not yet trued)*.
See [BUILD-SEQUENCE.md](docs/BUILD-SEQUENCE.md) for development history, and
[docs/CHECKLIST.md](docs/CHECKLIST.md) for where things stand.

---

## Development Standards

This project follows the [Sanctuary Standards](https://github.com/Quantum-Weaver/resonance-standards).

---

## LICENSE

Code: [MIT](LICENSE) — use it, modify it, share it.

Philosophy: [The Resonance License](PHILOSOPHY.md) — no exploitation, no extraction, no exclusion. This is our promise.

---

*Built with Aethelred by Quantum Weaver for the [AudHDities Sanctuary](https://github.com/Quantum-Weaver).*

*Complex things enter here to be deconstructed, and every fragment carries the whole.*
