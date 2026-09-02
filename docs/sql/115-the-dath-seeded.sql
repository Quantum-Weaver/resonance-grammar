-- 115 — the-dath seeded
--
-- THE DATH — colour, measured. Built 2026-09-02 by a builder dealt by
-- Windrose 🎻 at KP's ⚛ word, verbatim: "hold the Daedalus work and proceed
-- with the rest, we will do it on its own." Movement A1 of the Unnamed Waters
-- sitting, board row 36.
--
-- ⚠ THE NAME COLLIDES — `dath` is already live at resonance-cruthu/src/lib/dath/
-- (docs/PLAY.md:151; RUN-LOG.md:14 of 2026-09-01 names "the-dath" hyphenated
-- exactly as this slug is spelled). 114's header carries the whole record and
-- the two resolutions, both KP's: keep it, or rename to `the-lí` or `the-imir`
-- (both FREE everywhere swept). A rename is one `git mv`, one edit in 114 and
-- one here.
--
-- THE HARVEST RULING — KP ⚛, verbatim, board row 33: "without altering the
-- source location." resonance-chamber/desk/tools/validate_palette.js (309
-- lines) and validate_palette.py (298 lines) were copied byte-verbatim; the
-- desk is untouched and still runs both. HARVEST.md in the folder records the
-- byte counts and the SHA256 of each copy, and verify.mjs proof 9 re-checks
-- both digests on every run.
--
-- ONE WATER, NOT TWO — the board left it open and this hand ruled it one; see
-- 114's header. The JS is the proven surface; the Python twin rides beside it
-- and proof 7 requires the two engines' stdout to match CHARACTER FOR
-- CHARACTER on the same palette, with the same exit code.
--
-- CATEGORY: **sensory** (5ab76ea1-1092-4090-b0e8-e1d7dc0d5563) — category
-- taken from seed 080's recorded census; confirmed at the anon door by KP's
-- hand. See 114's header for the definition matched and the `measurement`
-- runner-up left there for him to overrule in one word.
--
-- TOOL_TYPE: **witness** — it measures and reports and changes nothing, which
-- is what the witness family does (the almanac, the formulary, the vigil, the
-- two-eyes). RUNNER-UP: `transform` was considered and set aside — nothing
-- here transforms a palette; it looks at one.
--
-- FACE: 🌈 — the spectrum. One glyph, no skin tone, no ZWJ, not a flag, no
-- red-alarm mark, and no awen row wears it. It IS worn by the `sensory`
-- CATEGORY (024) and by Iris in the deity senses (073), deliberately: 088's
-- own precedent is "the atom and its category wear the same mark", and this
-- row's category is sensory. 078's shared-face test ("do the rows that share
-- emojis have different tool type values?") does not arise — no awen row
-- shares it.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("dath") — the row
-- carries atom_id and no molecule. One tier exactly.
--
-- Etymology and sensory rows are NOT written here (triggers make them, 114).
--
-- THE TABLE IS public.awen (096; shim dropped 097).
--
-- Local mirror pin (progenatrix): bff38c00-7d49-4282-b729-2c64cf04f0ee
--
-- GATE AT LANDING, run from a clean shell before this file was written:
--   npm install && npm run build && npm run check && npm run prove
--   → check silent, 10/10 TRUE, deterministic; proof 7 spawns the Python twin
--     with PYTHONIOENCODING=utf-8 and FAILS HONESTLY if python is unreachable.
--
-- Run at KP's ⚛ hand, after 114. Verify at the anon door after.

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values
  ('The Dath', 'the-dath', 'witness',
   'Colour, measured — is this palette actually readable? Five checks that can be computed from the hex values alone and not one that cannot: OKLCH lightness against the mode''s band, OKLCH chroma against the floor below which a hue reads as grey, OKLab delta-E between slots under simulated protan and deutan with tritan reported beside them (Machado-Oliveira-Fernandes 2009 at severity 1.0, and the thresholds are calibrated TO that model), OKLab delta-E under NORMAL vision because full-colour readers must be able to tell neighbours apart too, and the WCAG contrast ratio of every mark against the chart surface. THE VERDICT IS A ROW, NEVER A BARE SCORE: each check hands back its own name, its own state and a sentence with the offending values written into it. WARN IS NOT FAIL AND THE DIFFERENCE IS RULED: adjacent CVD in the 6-8 band and contrast under 3:1 are WARNs, legal only with mandatory secondary encoding — direct labels, gaps or texture — while the normal-vision floor is a HARD gate that secondary encoding does not excuse. Ordinal ramps take their own four checks because the categorical ones fail a correct ramp by design. TWO ENGINES, ONE ANSWER: the JavaScript is the proven surface and the Python twin rides byte-verbatim beside it, both run on the same palette in the proofs and required to agree character for character, so a drift between them fails a gate instead of shipping. It measures and never decides. The exported validate() does NOT validate its input — the hex boundary lives in the CLI and browser entrypoints, and a malformed string propagates NaN and fails OPEN; that is the origin''s shape, carried whole rather than quietly improved, and it is said out loud. No clock, no disk, no network, no DOM, zero imports.',
   'resonance-awen/tools/the-dath', 'imagined', '🌈', 'Awen',
   'e641f46d-690f-43f8-aa4f-daeb7e6719ef',  -- the dath atom, seeded in 114
   'Built 2026-09-02 by a builder dealt by Windrose 🎻, at KP''s ⚛ word "hold the Daedalus work and proceed with the rest, we will do it on its own" — movement A1 of the Unnamed Waters sitting, four waters from the harvests, this one the second. HARVESTED UNDER HIS OWN RULING, verbatim: "without altering the source location" — resonance-chamber/desk/tools/validate_palette.js (309 lines) and validate_palette.py (298 lines) copied BYTE-VERBATIM, zero lines changed in either language, the desk untouched and still running both. The board left "one water or two" open and this hand ruled it ONE: the files are one engine written twice, and proof 7 spawns the Python and requires its stdout to equal the JavaScript''s character for character, so the lockstep the two files ask for in their own comments becomes a gate instead of a comment. THE FIXTURE IS REAL HOUSE GROUND: every hex is transcribed from resonance-ziggy/modules/cosmic/constants/colors.ts with its own line number beside it — fifteen keys of a 379-line file, a bounded cited excerpt — and COSMIC WAS READ AND NEVER TOUCHED. WHAT THE MEASURING FOUND IS TOLD AND NOT CORRECTED: six of cosmic''s eight core keys stand outside dark mode''s lightness band, cosmic.blue and quantum.purple sit delta-E 4.0 apart under deutan, void.base measures chroma 0.015, and FOUR DIFFERENT KEYS CARRY ONE VALUE — sanctuary.green (colors.ts:29), success (:43), library.green (:55) and mood.grounded (:69) are all #00B894, so any two of them in one chart read delta-E 0.0. None of that is evidence cosmic is wrong; only that a categorical chart drawn straight off those keys would be hard to read. Gate at landing from a clean shell: check silent, 10/10 TRUE. ⚠ THE NAME COLLIDES with resonance-cruthu/src/lib/dath/ and the row says so rather than hiding it; the rename, if he wants one, is one git mv and one edit here.',
   'a builder dealt by Windrose 🎻, at KP''s ⚛ word');

-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it
-- now that the proofs stand; uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug = 'the-dath';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen where slug = 'the-dath';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'dath';

-- no other row should wear 🌈:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name)
from public.awen where icon_emoji = '🌈' group by icon_emoji;

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'dath'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'dath';
