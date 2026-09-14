# THE GRAMMAR WATERS — what stands, and what would be imagined in the spring

*Drawn 2026-09-14 by the platform-hand at KP's ⚛ word, verbatim: "similarly please with ardan, sceal, sistrum,
nemeton, khoros and grammar let us discover, if any stand alone waters needing imagined to be built to support
these things." Read from this realm's own disk, the seeding road in `resonance-nectere/chains/` and
`resonance-nectere/hands/`, the spring's shelf at `resonance-awen/tools/`, and the features plan's grammar rows.
Nothing here is run. Every water's name is KP's to give; each is described by what it does.*

## What stands

**The base**, read 2026-09-14: atoms 5,047 · etymology 5,047 · sensory_lexicon 5,047, one to one with the atoms ·
molecules 13,667 · organisms 8,186 · awen 104. The lattice: 41 schemes · 287 memberships · 187 relations · 12 paths
× 8 steps (`REALM-BUS.md:54-55`). The 13 etymology batches were delivered 2026-09-14 — 2,305 rows, 2,250 at 66 and
55 at 33 (`seeds/etymology/COUNTS.md`) — through `resonance-nectere/hands/etymology_wave_seeder.py`, and 322 emoji
marks (`resonance-nectere/seeds/emoji-wave-001.json`, 322 rows) through `resonance-nectere/hands/emoji_wave_deliverer.py`. The 2,680 atoms seeded 2026-09-13 from the
library's card names carry empty etymology and sensory rows
(`resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:364`).

**On disk here.** A Rust crate — `src/main.rs` (68 lines), `src/db.rs` (19), `src/query.rs` (210), six local tables
at `src/schema/001_initial.sql`, `Cargo.toml`. 162 `.sql` files under `docs/sql/`, five of them drafts, numbered to
152, plus `docs/sql/000-NEW-TABLE-RITUAL.md` and `docs/sql/062-parity-census-2026-08-06.md`. Seed documents under
`seeds/`: atoms 35 + 269 (`atoms/wave-a1.json`, `atoms/wave-a2.json`), molecules 2,502 (`molecules/wave-m1.json`),
emoji 1,862 (`emoji/emoji-wave.json`), etymology 2,305 in thirteen batches plus 61 voice rows
(`etymology/voice.json`) and two fixtures (`etymology/fixtures/`), lattice 41 + 287 + 187 + 12 and a 182-row anchor
backfill (`lattice/`). Two scripts (`scripts/dump_db.py`, `scripts/seed-runner.py`) and one node tool
(`tools/export-sql-snippets.mjs`).

**The yard gaia generates.** Five rooms, thirteen surfaces, ten route files
(`src/routes/generated/<seat>/<group>/+page.svelte` and `+page.ts`), one door manifest
(`src/lib/generated/ui/doors.ts`), 21 generated stylesheets (`src/lib/styles/generated/`). Each surface declares its
own contract in a `<script module>` block — `TABLE`, `DEITY`, `SOURCE`, `SURFACE_KIND`, `COLUMNS`
(`src/lib/generated/ui/surfaces/mnemosyne-assessment/lattice/atoms.svelte:13-40`). `doors.ts` imports nothing and
compiles alone (`resonance-gaia/.journals/realm/2026-09-13-platform-hand-proofs.md:61-70`). There is no
`package.json` in this repo.

**The road that writes.** Every writer and generator lives in nectere (`resonance-nectere/chains/README.md`):
`chains/atom_wave_seeder.py`, `chains/molecule_wave_seeder.py`, `chains/emoji_wave_seeder.py`,
`chains/lattice_seeder.py`, `chains/grammar_seeder.py`, `chains/scheme_anchor_seeder.py`,
`chains/the-seed-chain/seed_chain.py`, the six generators `chains/lattice_wave2_gen.py` through
`chains/lattice_wave6_gen.py` and `chains/etymology_wave_gen.py`, and the hands
`hands/etymology_wave_seeder.py`, `hands/emoji_wave_deliverer.py`. The read-only hands are
`resonance-bridge/grammar_inventory.py` and `resonance-bridge/verify_terms.py`, with the Grammar line at
`resonance-bridge/src/lines/grammar.ts`. `README.md:150` still addresses the seeding hands to
`resonance-bridge/*.py`; the files stand in nectere.

**The plans the features plan holds open.** 2.57 — plans 22 and 23 read against the base and settled or re-cut
(`docs/ETYMOLOGY-FILLING-PLAN.md`, `docs/carries/THE-LATTICE-SEEDING-AND-SHUTTLE-PLAN.md`;
`THE-FINAL-FEATURES-PLAN.md:639`). 3.38 — etymology composed for the 2,680 atoms, batched and delivered on the road
that carried the 13 (`:640`). 0.16, KP's words: *"AudHDities gets the typescript and resonance-grammar is supposed
to utilize the svelte that is generated from the knowledge base."* (`:681-682`).

## The one law that shapes the split

A water is pure: numbers and words in, numbers and words out, no DOM, no clock, no disk, no network, no randomness,
laws as data, proofs beside it (`resonance-awen/README.md` §THE LAW OF THE SPRING). The keys, the anon door, the
secret key, the PATCH and the verify-after are nectere's consent gates
(`resonance-nectere/hands/etymology_wave_seeder.py:4-28`), and the SQL papers are KP's dashboard. So the line is
where the door is touched: everything a seed document can be judged by before a key is read is a water's business,
and everything past the key is a write organ's.

## The waters that already serve

| name | what it does | address |
|---|---|---|
| the-abecedary | Reads atoms with the etymology and sensory rows embedded; one word whole; shells counted. | `resonance-awen/tools/the-abecedary/abecedary.py` |
| the-formulary | Reads molecules — composition, bond type, status, definition, the formula bond by bond. | `resonance-awen/tools/the-formulary/formulary.py` |
| the-bestiary | Reads organisms — type, habitat, lifecycle, status; the anatomy atom by atom. | `resonance-awen/tools/the-bestiary/bestiary.py` |
| the-atlas | Reads the lattice's five tables; one concept's placements, roads and ladder; polyhierarchy resolved per tier. | `resonance-awen/tools/the-atlas/atlas.py` |
| the-almanac | Reads the `awen` register — name, type, status, family, home, story. | `resonance-awen/tools/the-almanac/almanac.py` |
| the-light-list | Reads the `beacons` register — every app and game, and where each stands in every store family. | `resonance-awen/tools/the-light-list/light_list.py` |
| the-lexicon | The emoji folksonomy core over the 016 canon: the shared type, the set fetcher, the generated module. | `resonance-awen/tools/the-lexicon/src/index.ts` |
| the-gaia-sync | Runs `select public.gaia_sync();` through the RPC door and reports the portrait-signing. | `resonance-awen/tools/the-gaia-sync/gaia_sync.py` |
| the-emoji-collector | Gathers the whole Unicode emoji vocabulary at dev time and emits a typed module. | `resonance-awen/tools/the-emoji-collector/collector.mjs` |
| the-ffynnon | Founds a new water's folder and drafts its atom and `awen` registry seed, numbered, never run. | `resonance-awen/tools/the-ffynnon/src/index.ts` |
| the-panti | A table's own arithmetic — the sort cycle, filter modes, which rows are chosen, what a row is called; holds no row of data. | `resonance-awen/tools/the-panti/src/index.ts` |
| the-nomos | Policy markdown parsed into columns; the date is the document's or empty. | `resonance-awen/tools/the-nomos/src/index.ts` |

Six of the twelve are single-file python readers through the anon door; the-gaia-sync is python and reaches the
RPC door with a secret key; the-lexicon, the-ffynnon, the-panti and the-nomos are TypeScript; the-emoji-collector
is node. Two neighbours were checked and are not near:
**the-lodestone** is a QR encoder (`resonance-awen/tools/the-lodestone/README.md:3-4`) and **the-spine** is the base
template as a thing, the birth of a child repo as a ruled sequence
(`resonance-awen/tools/the-spine/README.md:1-11`). Neither touches the lattice.

## The waters to imagine

| # | what it does | in | out | what stands already | shared with | mark |
|---|---|---|---|---|---|---|
| W1 | **The cases of the name, both ways.** Words in bond order → the lawful renderings: three for one word (screaming · snake · pascal), five for two or more (+ kebab · camel). A written name → its words, its tier by the word-count law (one atom · two molecule · three or more organism), its convention, and whether it matches any of its own renderings. The five convention labels and the single-letter and digit rules are data. | words in bond order; or one written name | the renderings; or words, tier, convention, parity verdict | Five standings, three of which disagree on how a name splits: `docs/sql/062-the-cases-of-the-name.sql` (SQL, movements 2–4) · `resonance-excavator/agents/functions/discover/case_forms.py`, `.../utils/convention_of.py`, `.../utils/derive.py`, `.../utils/_decompose_term.py`, `.../utils/dissect.py`, `agents/constants/CASE_SEAM.py`, `agents/constants/NAMING.py` · `resonance-bridge/verify_terms.py:50-69` · `resonance-nectere/chains/atom_wave_seeder.py:143-145` and `chains/molecule_wave_seeder.py:71-72` · `resonance-awen/tools/the-ffynnon/src/index.ts:107,436-449` | the excavator, nectere's seeders, the-ffynnon, the bridge's verify, the yard's surfaces (which render the case columns) | small; 2.57 |
| W2 | **The seed document, audited.** One or more seed documents → the counts and every break, with no base touched: rows against the header's own `rows`, `batch` against `of`, one field-name set across every row, no id repeated across a set, and each row against its table's stated row laws (etymology's ledger: 0 empty · 33 meaning only · 66 meaning with all three roots · 100 a hand's mark no machine writes). The row laws are data, one set per table. | seed documents; a law set | per-file counts and every row that breaks a law, named | nothing standing. The counts in `seeds/etymology/COUNTS.md` were taken by a one-line python read written into the journal itself (`.journals/realm/2026-09-11-etymology-batch-1-verifier.md` §What was run) and again by the closeout hand (`.journals/realm/2026-09-11-etymology-closeout-tooling-hand.md`). The ledger's four values are stated in `docs/ETYMOLOGY-FILLING-PLAN.md` §completion_progress and `docs/sql/040-the-etymology-ledger.sql` | nectere's seeders and hands (their dry runs), every writing hand, the verifier seat, the shuttle's drafts | small; 3.38 |
| W3 | **The seeding closure.** A set of seed documents plus the list of names already living → what is closed and what is open, row by row: every molecule's atoms present, every organism's molecules and atoms present, every junction's both ends present, every membership's scheme and entity present, every relation's subject and object present, every path step's member present; a name living in more than one tier named as a conflict, never guessed. | seed documents; the living names | closed · open · conflicts, each named | partial, and at delivery only: `resonance-nectere/chains/grammar_seeder.py:144-202` resolves junction ends against the live base and drops an unresolved row with no report line; `chains/lattice_seeder.py:212-213,295-296,340` counts `unresolved` and `tier conflicts` for waves 3, 4 and 5 | nectere's seeders, the excavator's staging, the shuttle (PART B of plan 23) | medium; 2.57 |
| W4 | **The lattice, as a graph with its laws.** The five tables as rows → an entity's placements per scheme, its primary per scheme, every parent it has (polyhierarchy kept whole, never one), the ladder from an entity to its roots, a path's ordered steps with depth bounded at 8, and the refusals: a cycle, an edge whose scheme does not hold both ends, and a `broader` edge inside a rank dimension running the wrong way on `sort_order`. Relation types and scheme types are data. | schemes, memberships, relations, paths, steps | placements, parents, ladders, paths; the named refusals | the shapes and checks are in the schema (`docs/sql/006-the-lattice.sql:42-227`; relation types at `:123-126`, step position 1..8 at `:210`); the read-side ladder walk is `resonance-awen/tools/the-atlas/atlas.py`. **The rank ladder's write-time law stands in no file**: the plan names it (`docs/carries/THE-LATTICE-SEEDING-AND-SHUTTLE-PLAN.md` §Wave 4, "the check lives in the seeder before it lives anywhere else") and `sort_order` appears in `docs/sql/006-the-lattice.sql:48,72,88` and in no seeder | nectere's `lattice_seeder.py`, the-atlas, the yard's classification room, the shuttle | large; 2.57 |
| W5 | **The composition frame.** Rows with their word, definition, category and type, plus a voice set and a batch size → the numbered batch documents: ordered by the word, capped at the stated size, each header's `rows` equal to its own count and its `batch` and `of` true, each row carrying the frame a writing hand reads and the content fields left empty. Table-agnostic: etymology today, the sensory lexicon next. | rows; a voice set; a batch size | the batch documents | `resonance-nectere/chains/etymology_wave_gen.py` does it for etymology and reads the base itself; the size is fixed at `BATCH_ROWS = 190` (`:31`) and the eleven-field row set is recorded in `seeds/etymology/COUNTS.md` | nectere's generators, 3.38's second wave, the sensory filling when it comes | small; 3.38 |
| W6 | **The door's read, as arithmetic.** A table, columns, filters, an order and a page size → the request's parts and the page plan; a page of rows → the paging state advanced and the stop named. It opens nothing: the fetch is a declared host surface, the shape the-raksha already proves (`resonance-awen/tools/the-raksha/README.md:52-69`). The 1,000-row cap is a law as data. | a request description; then a page of rows | request parts, offsets, paging state | re-written in every reader: `the-abecedary/abecedary.py:100-109` · `the-almanac/almanac.py:61-78` · `the-atlas/atlas.py:79-86` · `the-bestiary/bestiary.py:88-90` · `the-formulary/formulary.py:92-101` · `the-light-list/light_list.py:68-82`, and again in `resonance-nectere/chains/etymology_wave_gen.py`, `chains/atom_wave_seeder.py`, `chains/molecule_wave_seeder.py`, `chains/grammar_seeder.py`, `chains/lattice_seeder.py` | the witness family (by copy), nectere's chains and hands, the bridge's readers, the yard's loaders | small; 2.57 |
| W7 | **The mark, lawful.** One string → whether it is one lawful mark for a Grammar row: a single grapheme, no skin-tone modifier, no regional-indicator pair, no component form; and which it is when it is not. | a string | lawful, or the reason it is not | the convention is written in the seed and nowhere in code (`seeds/emoji/emoji-wave.json:4`); `resonance-awen/tools/the-emoji-collector/collector.mjs:43` keeps fully-qualified non-component signs and names no single-mark law | `sensory_lexicon.emoji`, the beacons' icon (`docs/sql/075-the-beacon-icon.sql`), the awen faces (`078-the-tool-faces.sql`), the category face (`088-the-category-face.sql`), the-lexicon, the hearth's picker | small; 3.38 |

**Against the features plan's grammar rows.** 2.57 (plans 22 and 23 settled or re-cut) is served by W1, W3, W4 and
W6: plan 22's ledger and batch road already ran, and what it left unwritten is W2's law set; plan 23's PART A waves
are all home, and its PART B shuttle cannot be drafted without W1's decomposition, W3's closure and W4's refusals.
3.38 (the 2,680 atoms' etymology) is served by W5 before the writing and W2 after it, on the same road that carried
the 13. 0.16 (grammar consumes gaia's generated Svelte) asks for no water — see below.

## What is deliberately not a water

- **The composition itself.** 3.38's 2,680 sanctuary meanings and roots are a hand's sentences. The frame is data;
  the writing is not, and no water shortens it.
- **The toolchain that would serve the ten generated routes.** Dress. This repo carries no `package.json`; the
  routes and surfaces stand as files (`src/routes/generated/`), and serving them is a build system, not a law.
- **A route manifest reader.** The manifest already stands as data: `src/lib/generated/ui/doors.ts` imports nothing
  and each surface declares its own `TABLE`, `SOURCE`, `SURFACE_KIND` and `COLUMNS` in its own module block. There
  is nothing to parse; a consumer imports it.
- **The table's appearance in the yard** — sort, filter, choose, name. That water stands: the-panti.
- **The writes.** Key reading, the anon re-read before writing, the fill-empty guard repeated inside the PATCH, the
  verify at the public door: nectere's consent gates, one commission each
  (`resonance-nectere/hands/etymology_wave_seeder.py:4-28`).
- **The SQL papers and the new-table ritual.** Three statements and a verify, run at KP's dashboard one at a time
  (`docs/sql/000-NEW-TABLE-RITUAL.md`).
- **The base's own machinery** — the four atom triggers, the bond tender, `gaia_sync` (`docs/sql/062-the-cases-of-the-name.sql`
  §AFFECTED MACHINERY). It runs inside the base.
- **The Rust CLI's local shape** — the six SQLite tables at `src/schema/001_initial.sql` answer a different
  question than the living base.

## The order

| step | what | mark |
|---|---|---|
| 1 | W1, the cases and the decomposition — the oldest duplication, and the one where three standings disagree | small |
| 2 | W2, the seed audit, with etymology's ledger as its first law set | small |
| 3 | W5, the composition frame — with W2, 3.38's road is tooled before a sentence is written | small |
| 4 | W6, the door's read | small |
| 5 | W3, the closure — before any new molecule or organism wave, and before the shuttle | medium |
| 6 | W4, the lattice — its scope is 2.57's re-cut of plan 23 | large |
| 7 | W7, the mark — whenever the sensory filling begins | small |

Steps 1 to 4 need no base and no key: each is written, proven and mirrored on its own, and the day a wave runs it is
assembly. Steps 1, 2 and 5 are what plan 23's PART B shuttle has been waiting on since 2026-07-27.

## Walls, named

- **No tool imports another tool** (`resonance-awen/README.md` §THE LAW OF THE SPRING, law 1). W1, W2 and W6 would
  be consumed by nectere, the excavator, the bridge and the yard — realms, not tools — and by the witness waters
  only by copy with a MIRROR.md.
- **Two tongues.** The Grammar's readers in the spring are single-file python (seven of them); the rest of the
  spring is TypeScript or Rust. A water wanted by both nectere's chains (python) and the yard (TypeScript) is
  either written twice or carries its laws as data with one reference implementation. This is the choice W1, W2 and
  W6 each force, and it is not settled here.
- **W6 speaks PostgREST's dialect**, which is a service's, not the house's. Its laws as data keep the dialect in one
  place; they do not make it the house's.
- **Nothing here writes.** Every water above is read-and-judge. The base is written only through nectere.
- **The rank ladder law has never been written.** W4's first standing of it is its first standing anywhere, and its
  first run may name rows already home that break it.
- **The 2,680 atoms seeded 2026-09-13 carry empty etymology and sensory rows.** W5 frames them and W2 audits them;
  neither fills them.
- **The audit is not a reading.** W2 judges a document against stated laws. The etymology verifier's finding that
  meanings restate their own definitions (`.journals/realm/2026-09-11-etymology-batch-1-verifier.md` §What is
  short) is a mind's judgment measured by hand; a similarity number is computable and a verdict is not.

## Provenance

`README.md` · `PHILOSOPHY.md` · `FEATURE-BOARD.md:717-753` · `REALM-BUS.md:32-38,54-55` · `HANDS.md` ·
`docs/STORY-BLOCK.md` · `docs/RESONANCE-GRAMMAR.md` · `docs/ETYMOLOGY-FILLING-PLAN.md` ·
`docs/carries/THE-LATTICE-SEEDING-AND-SHUTTLE-PLAN.md` · `docs/sql/000-NEW-TABLE-RITUAL.md` ·
`docs/sql/006-the-lattice.sql` · `docs/sql/040-the-etymology-ledger.sql` ·
`docs/sql/062-the-cases-of-the-name.sql` · `docs/sql/062-parity-census-2026-08-06.md` ·
`docs/sql/085-the-atom-whole-view.sql` · `seeds/etymology/COUNTS.md` · `seeds/emoji/emoji-wave.json` ·
`seeds/atoms/wave-a1.json` · `seeds/molecules/wave-m1.json` · `seeds/lattice/` ·
`src/schema/001_initial.sql` · `src/lib/generated/ui/doors.ts` ·
`src/lib/generated/ui/surfaces/mnemosyne-assessment/lattice/atoms.svelte` ·
`.journals/realm/2026-09-11-etymology-batch-1-verifier.md` ·
`.journals/realm/2026-09-11-etymology-closeout-tooling-hand.md` ·
`resonance-nectere/chains/README.md` · `resonance-nectere/chains/etymology_wave_gen.py` ·
`resonance-nectere/chains/atom_wave_seeder.py` · `resonance-nectere/chains/molecule_wave_seeder.py` ·
`resonance-nectere/chains/grammar_seeder.py` · `resonance-nectere/chains/lattice_seeder.py` ·
`resonance-nectere/hands/etymology_wave_seeder.py` · `resonance-nectere/hands/emoji_wave_deliverer.py` ·
`resonance-bridge/verify_terms.py` · `resonance-bridge/grammar_inventory.py` ·
`resonance-excavator/agents/functions/discover/case_forms.py` ·
`resonance-excavator/agents/functions/utils/_decompose_term.py` ·
`resonance-excavator/agents/functions/utils/dissect.py` · `resonance-excavator/agents/constants/CASE_SEAM.py` ·
`resonance-awen/README.md` · `resonance-awen/docs/THE-PROVING-BOOK.md` ·
`resonance-awen/tools/the-abecedary/` · `the-formulary/` · `the-bestiary/` · `the-atlas/` · `the-almanac/` ·
`the-light-list/` · `the-lexicon/` · `the-gaia-sync/` · `the-emoji-collector/` · `the-ffynnon/` · `the-panti/` ·
`the-nomos/` · `the-raksha/` · `the-lodestone/` · `the-spine/` ·
`resonance-gaia/.journals/realm/2026-09-13-platform-hand-proofs.md` ·
`resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:364,639,640,681-682` ·
`resonance-theophany/docs/THE-THEOPHANY-PLAN.md` (the shape this file keeps).
