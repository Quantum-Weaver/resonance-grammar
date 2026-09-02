-- 112 — the-hlutr, its atom
--
-- THE HLUTR — the lot cast. A fair draw and the χ² test of that draw as ONE
-- water, built 2026-09-02 by a builder dealt by Windrose 🎻 at KP's ⚛ word,
-- verbatim: "hold the Daedalus work and proceed with the rest, we will do it
-- on its own." Movement A1 of the Unnamed Waters sitting
-- (resonance-chamber/desk/THE-UNNAMED-WATERS-SITTING.md:70), which closes the
-- board's rows 34 AND 35 in one folder: a generator with no test is an
-- assertion, and a test with no generator has nothing to read.
--
-- THE HARVEST RULING THIS ROW RESTS ON — KP ⚛, verbatim, board row 33:
--   "without altering the source location"
-- resonance-tarocchi/src/lib/random.ts (110 lines) and
-- resonance-tarocchi/src/lib/workings/chisq.ts (105 lines) were COPIED
-- byte-verbatim; the origin is untouched and still runs both. The SHA256 of
-- each copy is pinned in the water's own verify.mjs and re-checked every run.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. Old Norse *hlutr* —
-- a lot, a share, the thing cast to decide — is this hand's reading of the
-- need the board named, not his word. It lives in exactly two places in the
-- build (the constant TOOL_NAME and the folder), so a rename is one edit, one
-- `git mv`, and one update to 113's row.
--
-- CATEGORY: **knowledge** (339cb540-838f-407e-ab96-e433750ed9fb) — category
-- taken from seed 080's recorded census; confirmed at the anon door by KP's
-- hand. Its description, as written in seed 024: "How the house knows things —
-- learning, inference, method, provenance. The verbs and nouns of
-- understanding itself." A goodness-of-fit test is inference with its method
-- shown, which is that sentence exactly.
--   RUNNER-UP AND HIS TO OVERRULE IN ONE WORD: **measurement** ("Sizing and
--   judging — estimates, heights, limits, optima. The words that put honest
--   numbers on things", seed 024) — defensible, and arguably the better home,
--   because a χ² statistic is precisely an honest number put on a thing.
--   IT WAS NOT TAKEN FOR A REASON THAT IS NOT ABOUT MEANING: this hand could
--   not reach the live categories table, and `measurement`'s uuid is NOT
--   recorded in any of seeds 077–080 or 105–110. Writing an unverified uuid
--   into a seed would be exactly the kind of quiet guess this house refuses.
--   If KP prefers measurement, the change is one uuid and one word, here and
--   in 113.
--
-- MOLECULE / ORGANISM — checked, and neither applies, walked the way 107 and
-- 108 walk it. `hlutr` is ONE WORD, and tools_one_tier (seed 014:
-- `(atom_id is not null)::int + (molecule_id is not null)::int +
-- (organism_id is not null)::int = 1`) lets an awen row cross at exactly one
-- tier — the tier its own name lives at (055's law). A one-word name crosses
-- at the atom tier; there is no molecule row to make and no organism above
-- it, and adding one while also setting atom_id would violate the constraint
-- outright. The-promenade, the-sphragis, the-lodestone, the-ffynnon, the
-- clavis/lok pair and the-merismos all stand exactly this way.
--
-- SHAPE TAKEN FROM THE-MERISMOS'S OWN SEEDS (108/110), read from disk this
-- sitting rather than remembered: tool_type is set on the awen row in 113 ·
-- folksonomy_type `Awen` · status `imagined` at birth · `home` filled in 113.
--
-- FACE: 🎲 — a die, the lot itself. It reads against 078's rules: one glyph,
-- no skin tone, no ZWJ, no flag, no red-alarm mark, and NO OTHER ROW WEARS IT
-- (checked against 078's whole set — the last full census of tool faces
-- written down — and against the faces set since in 109/110/111: 🗝️ 🔒 🪙).
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106
-- precedent).
--
-- THE TABLE IS public.awen (renamed from public.tools 2026-08-15, seed 096;
-- shim view dropped 097 — public.tools answers PGRST205 today). This file
-- only touches public.atoms.
--
-- ── ATOM UUID, generated uuid4 and pinned here so this file and 113 name the
--    same row without depending on insert order or a subquery ──
--   hlutr atom   5979f938-8487-48a4-a097-f53de0b307a4
--
-- Run at KP's ⚛ hand, after 111 and before 113. Verify at the anon door after.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '5979f938-8487-48a4-a097-f53de0b307a4',
  'hlutr',
  'Hlutr (Old Norse: a lot, a share, the thing cast to decide). The fair draw and the test of the draw, held as one thing, because a generator with no test is an assertion and a test with no generator has nothing to read. THE MODULO IS NOT A REDUCTION: x mod n favours the low faces unless n divides 2^32, so a bounded draw computes limit = floor(2^32/n)*n and REJECTS everything at or above it rather than folding it back in — folding is exactly what tilts the low faces, and the rejection is shown against a folding twin on one seeded stream rather than asserted. Fisher-Yates draws its index over [0, i] inclusive and freshly each pass; a deal is WITHOUT REPLACEMENT, so one card cannot appear twice in one spread. A source is NAMED and says whether it replays, and the primitive is never implemented: the platform''s own generator is wrapped, and the seeded one says in its own name that it is not a substitute for it. Beside them Pearson''s goodness-of-fit against a flat line — lnGamma by Lanczos, the regularized upper incomplete gamma by series below the crossover and by Lentz''s continued fraction above it — reporting the degrees of freedom, the expected count, and whether the run is RELIABLE at all, and naming "suspiciously even" as loudly as "far more uneven than chance explains", because counts too even are exactly as unlikely as counts too ragged. A single low p proves nothing alone and the verdict says so. It refuses rather than returns a biased value. No clock, no disk, no network, zero imports.',
  'root', 5, 5, 1, 'static',
  '339cb540-838f-407e-ab96-e433750ed9fb',  -- knowledge: "How the house knows things — learning, inference, method, provenance."
  'knowledge',
  'published',
  'HLUTR', 'hlutr', 'Hlutr'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'hlutr';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'hlutr'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'hlutr';
