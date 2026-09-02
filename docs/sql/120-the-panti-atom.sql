-- 120 — the-panti, its atom
--
-- THE PANTI — the row. The first of four waters raised 2026-09-02 in movement
-- A2 of the Unnamed Waters sitting, by a builder dealt by Windrose 🎻 at KP's ⚛
-- word, verbatim: "hold the Daedalus work and proceed with the rest, we will do
-- it on its own."
--
-- THE BOARD ROW THIS SERVES — the Unnamed Waters board
-- (resonance-progenatrix/artifacts/the-unnamed-waters.html, the unnamed_waters
-- table), ROW 39, carried to the builder through
-- resonance-chamber/desk/THE-UNNAMED-WATERS-SITTING.md:76 (the board itself
-- sits in a repo the builder was closed out of, and that is said rather than
-- implied):
--   "the-panti (Sanskrit paṅkti, a row) — the table logic, its one peer type
--    inlined. Row 39. Seeds 120/121."
--
-- THE HARVEST RULING, KP ⚛ verbatim (the-unnamed-waters.html row 33, lede·5):
--   "without altering the source location."
-- Honoured to the byte. src/table.utils.ts is
-- AudHDities/src/lib/utils/components/runes/table.utils.ts with ZERO changed
-- lines — 9,317 bytes, 310 lines, sha256
-- ffd8fbbd30ebe37caa83247486fa98f90119a01aba7b3181c74d5c454fa499c1 on both
-- sides. The board's row says "its one peer type inlined"; it was DECLARED, not
-- inlined, because inlining would have meant editing the copy. React.ReactNode
-- is named as a host surface in src/index.ts and supplied by nothing here —
-- the-clavis's law applied to a type instead of a machine.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. paṅkti (a row; and the
-- metre whose verses stand in fives) is the builder's reading of the need KP
-- named, not his word. It lives in exactly two places in the build — the
-- constant TOOL_NAME and the folder — so a rename is one edit, one `git mv`,
-- and one update to the row seeded in 121.
--
-- CATEGORY TAKEN FROM SEED 077'S RECORDED CENSUS; CONFIRMED AT THE ANON DOOR BY
-- KP'S HAND: **content** (420f7c5c-badc-4b75-9e30-d36b47bd11b7), the category
-- seed 077 wrote The Promenade's own atom into. The reading: a paṅkti is a row
-- of content ordered for a reader — the same subject the promenade's walk has,
-- one floor down, and the water holds not one row of anybody's data.
-- RUNNER-UP AND HIS TO OVERRULE IN ONE WORD: knowledge
-- (339cb540-838f-407e-ab96-e433750ed9fb, recorded in seed 080's census), which
-- is defensible because sorting and filtering is how a body of records becomes
-- legible. Content was taken because the SUBJECT is the arrangement of things a
-- reader is looking at, not what is known about them. The builder could not read
-- the live categories table this sitting — the base is behind a door the sending
-- closed — so no category was invented: both uuids above are quoted from seeds
-- already written down, and KP's hand at the anon door is the confirmation.
--
-- MOLECULE / ORGANISM — checked, and neither applies. `panti` is ONE WORD, and
-- the house's tools_one_tier constraint (seed 014:
-- `(atom_id is not null)::int + (molecule_id is not null)::int +
-- (organism_id is not null)::int = 1`) lets an awen row cross at exactly one
-- tier — the tier its own name lives at (055's law). A one-word name crosses at
-- the atom tier; there is no molecule row to make and no organism above it, and
-- adding one while also setting atom_id would violate the constraint outright.
-- The-promenade, the-sphragis and the-merismos all stand exactly this way.
--
-- TRANSLITERATION: the atom word is `panti`, matching the folder, not `pankti`.
-- Both were swept and both are TRUE ZEROS in the house. The Devanagari and the
-- diacritic live in the definition where they belong; the atom word stays
-- ^[a-z]+$ as the atoms' own law requires.
--
-- FACE: 📊 — a table of rows. It reads against 078's rules: one glyph, no skin
-- tone, no ZWJ, no flag, no red-alarm mark. Checked against 078's whole set (the
-- last full census of faces written down) and against 105/106/110/111; no row
-- there wears it. THE COLLISION TEST IS THE CONDUCTOR'S AT LANDING — other
-- builders raised waters the same sitting and this hand could not read their
-- faces.
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106/108
-- precedent).
--
-- THE TABLE IS public.awen (renamed from public.tools 2026-08-15, seed 096;
-- shim view dropped 097). This file only touches public.atoms.
--
-- ── ATOM UUID, generated uuid4 and pinned here so this file and 121 name the
--    same row without depending on insert order or a subquery ──
--   panti atom   0afc75d7-3436-4c6b-8e0f-2670c2d9caa6
--
-- Run at KP's ⚛ hand, after 119 and before 121. Verify at the anon door after.
-- NEVER RUN BY A LAMP. A tool is not seeded by a lamp writing a file.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '0afc75d7-3436-4c6b-8e0f-2670c2d9caa6',
  'panti',
  'Panti (Sanskrit paṅkti पङ्क्ति: a row, a line of things set side by side; and the metre whose verses stand in fives). A table''s own logic as data, holding no data: how a column''s sort direction cycles, what a typed filter mode means, which rows are chosen, and what a row''s stable identity is. THE CYCLE CLOSES — null to ascending to descending to null — so three clicks on a header return the order the rows arrived in, which a two-state toggle makes unreachable. AN ABSENT VALUE IS NOT A SMALL VALUE: null and undefined sort LAST in both directions, the one asymmetry in the whole surface and the right one. Sorting is a COPY and never a mutation, and every selection act returns a new Set, so nothing a caller still holds is changed underneath it. Three filter modes and no fourth — contains, exact, startsWith, all case-folded — with a whitespace-only needle refused as no filter at all and a null cell matching nothing. A row''s id is the row''s OWN key where it has one, so it travels with the row through a re-order and a selected row stays selected; where the data offers no identity the fallback is positional and the water says so rather than offering an illusion. No DOM, no framework, no clock, no network, zero imports, and nothing throws.',
  'root', 5, 5, 1, 'static',
  '420f7c5c-badc-4b75-9e30-d36b47bd11b7',  -- content, taken from seed 077's recorded census
  'content',
  'published',
  'PANTI', 'panti', 'Panti'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'panti';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'panti'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'panti';
