-- 126 — the-suchi, its atom
--
-- THE SUCHI — the index. The fourth of four waters raised 2026-09-02 in movement
-- A2 of the Unnamed Waters sitting, by a builder dealt by Windrose 🎻 at KP's ⚛
-- word, verbatim: "hold the Daedalus work and proceed with the rest, we will do
-- it on its own."
--
-- THE BOARD ROW THIS SERVES — the Unnamed Waters board
-- (resonance-progenatrix/artifacts/the-unnamed-waters.html, the unnamed_waters
-- table), ROW 44, carried to the builder through
-- resonance-chamber/desk/THE-UNNAMED-WATERS-SITTING.md:79 (the board itself sits
-- in a repo the builder was closed out of, and that is said rather than
-- implied):
--   "the-suchi (Sanskrit sūcī, an index) — the repo that reads itself; the
--    glob's result is the host surface, Vite is never called. Row 44.
--    Seeds 126/127."
--
-- THE HARVEST RULING, KP ⚛ verbatim (the-unnamed-waters.html row 33, lede·5):
--   "without altering the source location."
-- Honoured to the byte. Two files were copied from resonance-standards/src/lib/
-- with ZERO changed lines:
--   tree.ts     2,354 bytes   8c54e2a5b7132b8c5a3dba05826ada59145815e8b77c0598c1bd9e8f28e3a5a3
--   papers.ts   2,791 bytes   5780db09b040a07ca6da589966a227b7328f869906b611e3439370c0c291a37b
--
-- WHICH ROAD WAS TAKEN, SAID PLAINLY (the sending offered two and asked for a
-- plain answer): THE SECOND. Both originals call `import.meta.glob` AT MODULE TOP
-- LEVEL — tree.ts on its first line, papers.ts on its third — and assign the
-- result to a module constant everything else reads, so their exports are
-- CONSTANTS COMPUTED AT IMPORT TIME rather than functions that could be called
-- with a host's result. They cannot compile under tsc (import.meta.glob is a
-- Vite BUILD-TIME TRANSFORM, not a property; Vite replaces the call before the
-- code runs, so there is nothing to stub), and typing it would mean taking
-- vite/client as a dependency, which the law of the spring forbids. So the
-- verbatim copies stand in src/origin/, EXCLUDED FROM THE BUILD, and src/index.ts
-- is the byte-faithful re-expression of their logic over the host surface. The
-- copies are kept so the faithfulness can be DIFFED rather than trusted;
-- HARVEST.md lists every function beside its original and names the three
-- deliberate widenings, which are the only three.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. sūcī (a needle, and by
-- extension the list that points) is the builder's reading of the need KP named,
-- not his word. It lives in exactly two places in the build — the constant
-- TOOL_NAME and the folder — so a rename is one edit, one `git mv`, and one
-- update to the row seeded in 127.
--
-- CATEGORY TAKEN FROM SEED 077'S RECORDED CENSUS; CONFIRMED AT THE ANON DOOR BY
-- KP'S HAND: **content** (420f7c5c-badc-4b75-9e30-d36b47bd11b7), the category
-- seed 077 wrote The Promenade's own atom into. The reading: this water's subject
-- is a repo's own papers and how they are grouped and pointed at — documents
-- ordered for a reader, which is the promenade's subject on different ground.
-- RUNNER-UP AND HIS TO OVERRULE IN ONE WORD: knowledge
-- (339cb540-838f-407e-ab96-e433750ed9fb, recorded in seed 080's census), where
-- its two movement-siblings the-lakshana and the-drishti stand, and which is
-- defensible because an index is an epistemic object. Content was taken because
-- the SUBJECT is the papers themselves, not what is known about the code. The
-- builder could not read the live categories table this sitting — the base is
-- behind a door the sending closed — so no category was invented: both uuids
-- above are quoted from seeds already written down, and KP's hand at the anon
-- door is the confirmation.
--
-- MOLECULE / ORGANISM — checked, and neither applies. `suchi` is ONE WORD, and
-- the house's tools_one_tier constraint (seed 014) lets an awen row cross at
-- exactly one tier — the tier its own name lives at (055's law).
--
-- TRANSLITERATION: the atom word is `suchi`, matching the folder. The Devanagari
-- and the macron live in the definition where they belong; the atom word stays
-- ^[a-z]+$ as the atoms' own law requires.
--
-- FACE: 📑 — tabbed pages, which is what an index is before it is a list. It
-- reads against 078's rules: one glyph, no skin tone, no ZWJ, no flag, no
-- red-alarm mark. Checked against 078's whole set and against 105/106/110/111;
-- no row there wears it. The near neighbours 📇 (the-catalogue-raisonne), 🗺️
-- (the-atlas), 🌳 (the-structure-generator) and 📖 (the-almanac, the-seanchai)
-- are all TAKEN and none was reached for. THE COLLISION TEST IS THE CONDUCTOR'S
-- AT LANDING.
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill.
--
-- THE TABLE IS public.awen. This file only touches public.atoms.
--
-- ── ATOM UUID, generated uuid4 and pinned here so this file and 127 name the
--    same row without depending on insert order or a subquery ──
--   suchi atom   a0716d09-fd6a-4383-90a1-3ad78ad7f54f
--
-- Run at KP's ⚛ hand, after 125 and before 127. Verify at the anon door after.
-- NEVER RUN BY A LAMP. A tool is not seeded by a lamp writing a file.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  'a0716d09-fd6a-4383-90a1-3ad78ad7f54f',
  'suchi',
  'Suchi (Sanskrit sūcī सूची: a needle, and by extension the index — the list that points). A repo that reads itself: its own tree drawn from its own file paths, its own markdown grouped by its own folders, and EACH PAPER''S TITLE TAKEN FROM THE PAPER''S OWN FIRST HEADING — never a string typed beside it, never a lookup table, so a document renamed in its own first line is renamed everywhere at once. A folder becomes a group whose label is derived from the folder name; the repo root sorts first whatever it would do alphabetically. The house''s one-line italic gloss under a heading becomes the blurb where it is there and null where it is not — a badge line is not a gloss and neither is a bold one — and a file with no heading at all falls back to its own filename rather than being invented a title or dropped from the index. A paper that declares itself a MIRROR-class self-map is known by the phrase in its own text and never by its filename, so a future self-map inherits the rule by saying so. THE WATER OWNS NEITHER THE BUILD TOOL NOR THE GLOB: it declares the glob''s RESULT — path to raw text — as a host surface of one verb and supplies none of it, so the same repo handed over by a build-tool host or a filesystem host or an in-memory fixture yields byte-identical answers. A sūcī points at what is there; it is not the thing, and it holds no copy of the thing.',
  'root', 5, 5, 1, 'static',
  '420f7c5c-badc-4b75-9e30-d36b47bd11b7',  -- content, taken from seed 077's recorded census
  'content',
  'published',
  'SUCHI', 'suchi', 'Suchi'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'suchi';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'suchi'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'suchi';
