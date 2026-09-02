-- 114 — the-dath, its atom
--
-- THE DATH — colour, measured. The palette validator, built 2026-09-02 by a
-- builder dealt by Windrose 🎻 at KP's ⚛ word, verbatim: "hold the Daedalus
-- work and proceed with the rest, we will do it on its own." Movement A1 of
-- the Unnamed Waters sitting, board row 36
-- (resonance-chamber/desk/THE-UNNAMED-WATERS-SITTING.md:71).
--
-- ⚠ THE NAME COLLIDES, AND IT IS WRITTEN HERE RATHER THAN SMOOTHED OVER.
-- `dath` is ALREADY A LIVE NAME IN THE HOUSE, on the same subject:
--   resonance-cruthu/src/lib/dath/        — the studio's colour ground
--                                           (index.ts, shelf.svelte.ts)
--   resonance-cruthu/docs/PLAY.md:151     — names dath/shelf.svelte.ts
--   resonance-cruthu/RUN-LOG.md:14        — "the-dath gained a picker (HSV
--                                           square, hue and alpha strips…)",
--                                           2026-09-01, HYPHENATED EXACTLY AS
--                                           THIS FOLDER IS SPELLED.
-- The working name was the sitting's, and NAMING IS KP'S, so the collision is
-- reported rather than quietly changed. Two honest resolutions, both his:
--   (a) KEEP IT — different realms, and cruthu's is an app module rather than
--       a registry row. The cost is two colour things called the-dath in one
--       house, which is a trap somebody falls into eventually.
--   (b) RENAME THIS ONE — `the-lí` (Irish *lí*, hue/lustre) and `the-imir`
--       (Irish *imir*, a tint or shade) are both FREE everywhere swept: no
--       folder among the 69, no atom word in this seed corpus, no workspace
--       markdown hit.
-- A rename is one `git mv`, one edit here, and one edit in 115. Nothing else
-- in the folder moves. THE SWEEP THAT FOUND IT: the 69 folders under
-- resonance-awen/tools/ (dath: TRUE ZERO) and every workspace *.md excluding
-- node_modules/.next/.git (the three cruthu hits above, plus the sitting's own
-- commission line).
--
-- THE HARVEST RULING THIS ROW RESTS ON — KP ⚛, verbatim, board row 33:
--   "without altering the source location"
-- resonance-chamber/desk/tools/validate_palette.js (309 lines) and
-- validate_palette.py (298 lines) were COPIED byte-verbatim; the desk is
-- untouched and still runs both. The SHA256 of each copy is pinned in the
-- water's verify.mjs and re-checked every run.
--
-- ONE WATER OR TWO WAS A RULING, AND THIS HAND MADE IT ONE. The board's own
-- row left it open; the two files are one engine written twice, not two tools,
-- and the water's proofs run BOTH on the same palette and require the same
-- stdout character for character. Splitting them would give the house two
-- things to keep in step and no way to notice when they drift. KP may split
-- them and the README says so: py/ lifts out whole, taking its own row.
--
-- CATEGORY: **sensory** (5ab76ea1-1092-4090-b0e8-e1d7dc0d5563) — category
-- taken from seed 080's recorded census; confirmed at the anon door by KP's
-- hand. Its description, as written in seed 024: "The channels of perception —
-- sight, sound, touch, motion — and the visual language interfaces speak
-- through them." This water measures whether a visual language can be
-- perceived at all, which is that sentence with a number attached.
--   RUNNER-UP AND HIS TO OVERRULE IN ONE WORD: **measurement** ("Sizing and
--   judging — estimates, heights, limits, optima"), and it is a real
--   contender, because everything this water does is arithmetic. Sensory was
--   taken because the SUBJECT is perception and the arithmetic is the method.
--   The honest second reason: `measurement`'s uuid is NOT recorded in seeds
--   077–080 or 105–110, this hand could not reach the live categories table,
--   and writing an unverified uuid into a seed is a guess this house refuses.
--
-- MOLECULE / ORGANISM — checked, and neither applies. `dath` is ONE WORD, and
-- tools_one_tier (seed 014) lets an awen row cross at exactly one tier — the
-- tier its own name lives at (055's law). A one-word name crosses at the atom
-- tier; there is no molecule to make and no organism above it.
--
-- FACE: 🌈 — the spectrum. One glyph, no skin tone, no ZWJ, NOT a flag emoji,
-- no red-alarm mark, and NO AWEN ROW WEARS IT (checked against 078's whole
-- census and the faces set since: 🗝️ 🔒 🪙). It IS worn elsewhere in the base —
-- by the `sensory` CATEGORY (seed 024) and by Iris among the deity senses
-- (073) — and that is deliberate rather than overlooked: 088's own precedent
-- is "THE ATOM AND ITS CATEGORY WEAR THE SAME MARK", and this row's category
-- is sensory. Different tables, one meaning.
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (077/059/106).
--
-- THE TABLE IS public.awen (096; shim dropped 097). This file only touches
-- public.atoms.
--
-- ── ATOM UUID, generated uuid4 and pinned here so this file and 115 name the
--    same row without depending on insert order or a subquery ──
--   dath atom   e641f46d-690f-43f8-aa4f-daeb7e6719ef
--
-- Run at KP's ⚛ hand, after 113 and before 115. Verify at the anon door after.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  'e641f46d-690f-43f8-aa4f-daeb7e6719ef',
  'dath',
  'Dath (Irish: colour — the thing itself, before anyone has an opinion about it). Colour measured rather than eyeballed: OKLCH lightness against the mode''s band, OKLCH chroma against the floor below which a hue reads as grey, OKLab delta-E between slots under simulated protan and deutan (tritan reported) by the Machado-Oliveira-Fernandes 2009 transforms at severity 1.0, OKLab delta-E under NORMAL vision because full-colour readers must be able to tell neighbours apart too, and the WCAG contrast ratio of every mark against the surface. THE VERDICT IS A ROW, NEVER A BARE SCORE: each check returns its own name, its own state and a sentence with the offending values written into it, so a reader never goes looking behind a number to find which colour is the problem. WARN IS NOT FAIL AND THE DIFFERENCE IS RULED: adjacent CVD in the 6-8 band and contrast under 3:1 are WARNs legal only with mandatory secondary encoding, while the normal-vision floor is a HARD gate that secondary encoding does not excuse and weak pairs are not masked to keep an existing palette validating. Ordinal ramps take their own four checks — monotone lightness, a visible step gap, a light end that clears the surface, one hue — because the categorical checks fail a correct ramp by design. It measures and never decides: nothing here has taste, and the two structural rules that cannot be computed from hexes are named as uncomputable rather than pretended at. No clock, no disk, no network, no DOM, zero imports.',
  'root', 5, 5, 1, 'static',
  '5ab76ea1-1092-4090-b0e8-e1d7dc0d5563',  -- sensory: "The channels of perception — sight, sound, touch, motion — and the visual language interfaces speak through them."
  'sensory',
  'published',
  'DATH', 'dath', 'Dath'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'dath';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'dath'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'dath';
