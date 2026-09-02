-- 108 — the-merismos, its atom
--
-- THE FAULT THIS FILE MENDS: a hand wrote 2026-09-02 an awen row for
-- the-merismos in one file (then numbered 108) with the atom insert folded
-- into the SAME file, ahead of the awen insert but not as its own stratum.
-- The house's order is atom seed before awen row, AND as its own numbered
-- file, in 077-the-promenade-atom.sql's exact shape. This file is that atom
-- stratum, split out; the awen row now stands as 110-the-merismos-seeded.sql,
-- after this one.
--
-- THE MERISMOS — the splits. The third authorship water, built 2026-09-02
-- beside the-clavis and the-lok the same sitting, at KP's ⚛ word ("go …
-- fleet away my friend") and on his own framing of the gap: "Clavis and lok
-- give unforgeable authorship. They say nothing about who gets what."
--
-- KP'S VISION, VERBATIM, WHICH THE ROW SERVES:
--   "every musician in a band or an orchestra records their part sovereignly;
--    an engineer finishes the project; and all credentials combine so the
--    Sanctuary system can pay everyone involved no matter how small the role —
--    opt-in always: 'no force or deceptive theft.'"
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. μερισμός (merismós) is
-- this hand's reading of the need he named, not his word. It lives in exactly
-- two places in the build — the constant TOOL_NAME and the folder — so a
-- rename is one edit, one `git mv`, and one update to this row.
--
-- CATEGORY CHECKED BEFORE WRITING (seed 077's law), read from the live
-- categories table (25 rows, no gap): **economics**
-- (9898f84d-c15b-46f4-86ea-699dafbc8877), whose live definition reads —
-- "Value in motion — gifts, resources, assets, residuals. The house's economy
-- of circulation, never extraction." It names residuals, which is exactly
-- the pool this water's shares reach through. RUNNER-UP AND HIS TO OVERRULE
-- IN ONE WORD: governance (ba101ebf-34fd-44d3-956f-0639e3367e73 — "The laws
-- and charters that order the house — sovereignty, standards, consent,
-- enforcement. Rule as care, not control."), which is defensible because
-- opt-in consent is half this water's law. Economics was taken because the
-- SUBJECT is apportionment among contributors and consent is the ward
-- around it, not the thing itself. No category named "exchange" exists in
-- the live 25 — checked, not assumed.
--
-- MOLECULE / ORGANISM — checked, and neither applies. KP's word tonight
-- widened the order to atom → molecule → organism (if any) → awen row, the
-- molecule (not the atom) carrying the awen row's link where one exists.
-- Checked against the live shape before writing this file: `merismos` is
-- ONE WORD, and the house's tools_one_tier constraint (seed 014:
-- `(atom_id is not null)::int + (molecule_id is not null)::int +
-- (organism_id is not null)::int = 1`) lets an awen row cross at exactly one
-- tier — the tier its own name lives at (055's law). A one-word name
-- crosses at the atom tier; there is no molecule row to make and no
-- organism above it, and adding one while also setting atom_id would
-- violate the constraint outright (sum would be 2, not 1). The-promenade
-- and the-sphragis — the two live precedents checked at the anon door's own
-- 2026-08-24 export — both stand exactly this way: atom_id set,
-- molecule_id and organism_id null. So: "if any" resolves to none here.
--
-- SHAPE TAKEN FROM THE-SPHRAGIS'S OWN ROW, read from the live shelf this
-- sitting rather than remembered: tool_type `emit` · folksonomy_type `Awen`
-- · status `imagined` at birth. `home` is filled in 110 (the 105/106
-- precedent); the sphragis's own home is still null and is his to fill.
--
-- FACE: 🪙 — a coin, chosen at KP's word. It reads against 078's rules: one
-- glyph, no skin tone, no ZWJ, no flag, no red-alarm mark, and no other row
-- wears it (checked against 078's whole set, which is the last full census
-- of faces written down).
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("merismos") —
-- the awen row (110) carries atom_id and no molecule. One tier exactly.
--
-- Etymology and sensory rows are NOT written here: the atoms table's
-- triggers make both on insert, arriving empty for a later fill (the
-- 077/059/106 precedent).
--
-- THE TABLE IS public.awen (renamed from public.tools 2026-08-15, seed 096;
-- shim view dropped 097). This file only touches public.atoms.
--
-- ── ATOM UUID, generated uuid4 and pinned here so this file and 110 name
--    the same row without depending on insert order or a subquery ──
--   merismos atom   6c6553b9-abe9-44d6-b0e4-99eacea62533
--
-- Run at KP's ⚛ hand, after 107 and before 110. Verify at the anon door after.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '6c6553b9-abe9-44d6-b0e4-99eacea62533',
  'merismos',
  'Merismos (Greek μερισμός: apportionment, a dividing into parts). The splits, as data: a Merismos is columns — parts, roles, basis points, and each part''s own yes with the moment it was given — dividing the artist''s share and nothing else. Points are basis points and must sum to exactly 10000, so a role too small to be a percent is still an integer that cannot round to zero. Opt-in always, in KP''s own words "no force or deceptive theft": a part without consent is NAMED in every report and no path consents on anyone''s behalf. A description of shares, never a promise of money — nothing in it moves a cent, holds a balance or names a payout. It divides an amount a consumer declares by the largest-remainder method, so integer cents sum to the amount exactly and deterministically; a split that does not close is told in plain words and left exactly as declared. Standalone by law: zero imports, no DOM, no disk, no clock, and nothing throws.',
  'root', 5, 5, 1, 'static',
  '9898f84d-c15b-46f4-86ea-699dafbc8877',  -- economics: "Value in motion — gifts, resources, assets, residuals. The house's economy of circulation, never extraction."
  'economics',
  'published',
  'MERISMOS', 'merismos', 'Merismos'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'merismos';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'merismos'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'merismos';
