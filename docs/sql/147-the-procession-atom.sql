-- 147 — the-procession, its atom
--
-- THE ORDER THIS FILE KEEPS: atom seed BEFORE awen row, and as its own
-- numbered file, in 077-the-promenade-atom.sql's exact shape and 144's
-- (the-pandulipi) most recent reading of it. The awen row stands as
-- 148-the-procession-seeded.sql and runs after this one.
--
-- THE PROCESSION — Latin procedere, to go forward: a body of people moving
-- forward in ordered ranks, one after another, at a walking pace. Founded
-- 2026-09-03 by Heron 🎻 (Fable, claude-fable-5-1) at KP's ⚛ word, verbatim:
--   "we know we have a gallery tool, this would become 'the-gallery-deck' if
--    it does not exist yet, but what would stand in awen would need to make
--    sure it follows what awen requires"
-- and, over that working name, his ⚛ ruling the same sitting:
--   "procession is a better name"
-- and its first consumer, his ⚛ word:
--   "once it is a standalone tool in awen, resonance-awen will become its
--    first consumer and we will use the awen table from the knowledge base
--    to map the cards to live data"
--
-- THE FINDING THAT MADE IT A WATER: the void's intake held a React demo,
-- "The Procession of Rooms" (resonance-void/intake/app/src/gallery-demo/),
-- built from Kimi's pattern of 2026-09-01
-- (resonance-chamber/desk/DESIGN-PATTERN-Sanctuary-Gallery.md). A sweep of
-- the spring on 2026-09-03 found the-gallery (rows in, cards out, searched),
-- the-promenade (one vista at a time, the reader's explicit act) and
-- the-epagoge (the leading-in) — kin, and none of them a corridor of pinned
-- decks with a dwell. The Sovereign Library, read by title through the
-- courier: procession, deck (bare), sticky, pin, corridor, dwell — absent.
-- That absence ships in the build as the constant NOTHING_STOOD.
--
-- THE NAME IS HIS ⚛ OWN, and it lives in exactly two places in the build:
-- the constant TOOL_NAME and the folder. A rename is one edit, one `git mv`,
-- and one update to this row and 148's.
--
-- ── CATEGORY ─────────────────────────────────────────────────────────
-- **content** (420f7c5c-badc-4b75-9e30-d36b47bd11b7).
--
-- THE UUID IS THE LIVE ONE, read from the 2026-08-24 export
-- (resonance-grammar/exports/grammar-export-2026-08-24.json, categories,
-- sort_order 14) and the same one 144 confirmed through the bridge on
-- 2026-09-02. This builder holds no key to the base and ran no query.
--
-- WHY CONTENT, AND BY THE PROMENADE'S OWN PRECEDENT (077:9-18): a procession
-- walks a corridor of the house's rooms — its realms, its kin, its artifacts,
-- its waters — and the category's own description is "The stuff itself —
-- documents, fragments, lyrics, recordings. What the house holds." The
-- promenade, its nearest kin, was set there for exactly this reason, and
-- 077's rejections hold here too: `play` (a procession is not a game) and
-- `sensory` (perception's channels, not a walk through what the house holds).
--
-- RUNNER-UP, AND HIS TO OVERRULE IN ONE WORD: **communication**
-- (839cc74b-baee-47cc-b6eb-617a83393e36) — a procession is how the house
-- shows itself to a visitor — set down because 076's correction holds: a
-- category is what the THING is, never what it is used for, and the thing is
-- the ordered rooms.
--
-- MOLECULE / ORGANISM — checked, and neither applies. `procession` is ONE
-- WORD; the tools_one_tier constraint (seed 014) lets an awen row cross at
-- exactly one tier, the tier its own name lives at (055's law). A one-word
-- name crosses at the ATOM tier. `gallery` and `deck` both stand as atoms
-- already (the export, 2026-08-24) and are NOT touched here; the working
-- name the-gallery-deck would have been a molecule of them, and it was set
-- down by his word before a row was drafted.
--
-- SHAPE TAKEN FROM THE-PANDULIPI'S OWN ROW (144/145, the most recent water
-- seeded in this shape): atom_type root · weight 5 · affinity 5 · valence 1 ·
-- state static · status published · the three cases.
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106/108/
-- 128/144 precedent).
--
-- THE TABLE IS public.awen (renamed from public.tools 2026-08-15, seed 096;
-- shim view dropped 097). This file only touches public.atoms.
--
-- ── ATOM UUID, generated uuid4 and pinned here so this file and 148 name
--    the same row without depending on insert order or a subquery ──
--   procession atom   3599f543-afa2-4af5-9b28-928039f2e2f3
--
-- Run at KP's ⚛ hand, before 148. Verify at the anon door after.
-- NEVER RUN BY A LAMP: the seed is drafted and numbered; the crossing is his.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '3599f543-afa2-4af5-9b28-928039f2e2f3',
  'procession',
  'Procession (Latin procedere, to go forward): rooms walked one after another at the walker''s own pace. Not a grid, which says "choose quickly"; not a carousel, which says "keep moving"; a procession says "dwell here." As a shape: sections become decks, and within a deck the room in view comes to rest at the centre of the view and the rooms already walked lift upward above it — smaller, dimmer, still there, at most a few deep — until the deck is complete and the corridor holds a breath, the dwell, before the next section. The order is the declaration''s and never a rank; the corridor cannot see the reader; every room is a landmark; a room without a window keeps its sigil; and under reduced motion the settle is identity. The dress owns every pixel. The shape and the numbers are the water''s.',
  'root', 5, 5, 1, 'static',
  '420f7c5c-badc-4b75-9e30-d36b47bd11b7',  -- content: "The stuff itself — documents, fragments, lyrics, recordings. What the house holds, as distinct from how."
  'content',
  'published',
  'PROCESSION', 'procession', 'Procession'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'procession';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'procession'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'procession';
