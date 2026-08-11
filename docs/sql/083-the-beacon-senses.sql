-- ============================================================================
-- 083 — THE BEACON SENSES: emoji and colour for the coast's own atoms
--
-- KP's ⚛ word, 2026-08-11: "emoji and color are my focus for all" — the 27
-- atoms the beacon molecules are built from, every one given a face and a
-- colour. And his ruling on where the colours come from: cosmic's ACTUAL HEX
-- VALUES, never invented.
--
-- THE STATE THAT PROMPTED IT, read live: 2,321 sensory_lexicon rows, one per
-- atom. emoji 1,991 (86%) · color_hex 124 (5%) · texture/shape/movement/
-- temperature/sound 99 each · taste 6 · smell 12. Of the 27 beacon atoms:
-- nineteen carried an emoji, four carried a full sensory set (resonance ·
-- gaia · daedalus · standard, from the deity seeds), and EIGHT stood entirely
-- bare — aethelred · awen · cello · khoros · lucida · meeting · paper ·
-- quantum, almost exactly the words this sitting planted.
--
-- EVERY COLOUR BELOW IS A COSMIC VALUE, quoted from
-- resonance-ziggy/modules/cosmic/constants/colors.ts (156 colours, its own
-- header: "QUANTUM COLOR SYSTEM - SINGLE SOURCE OF TRUTH"). The token name it
-- came from is written beside each one, so a later hand can trace any value
-- back to its source rather than guess whether it was chosen or invented.
--
-- TWO COLOURS ARE ALREADY THE HOUSE'S OWN CHOICE, not this hand's reading:
--   aethelred  entity.aethelred  #2E0B1C
--   weaver     entity.weaver     #DA70D6
-- Cosmic had already named both. They are carried across exactly.
--
-- OBSERVED, NOT ACTED ON — the base's 124 existing sensory colours are CSS
-- named colours (#00CED1 dark turquoise ×18, #228B22 forest green, #FF6347
-- tomato, #8B4513 saddle brown) rather than cosmic tokens; the two palettes
-- overlap barely. This file adds no new drift — every value here is cosmic's —
-- and touches none of the 124. Recorded as an observation for a later sitting,
-- at KP's ⚛ word: "note it, don't act on it".
--
-- The four already-complete atoms (resonance · gaia · daedalus · standard) are
-- NOT touched: they carry full sensory sets from the deity seeds, and
-- overwriting a filled row to make a set look tidy is the opposite of the job.
--
-- Idempotent: every statement is an UPDATE by atom_word. The rows exist
-- already — the triggers made all 2,321.
--
-- ⚠ THE PLURAL LESSON, HONORED FROM THE START (082's own, paid once): the
-- ATOMS are singular. `echo` ["es"] · `bubble` ["s"] · `meeting` ["s"] — the
-- molecules read echoes/bubbles/meetings, but an UPDATE targets the atom. An
-- update matching nothing is SILENT, so every target below is the singular.
--
-- Drafted 2026-08-11 for KP's ⚛ hand.
-- ============================================================================


-- ── THE EIGHT BARE ONES — a face and a colour each ──────────────────────────

update public.sensory_lexicon set
  emoji = '🌬️', color_hex = '#00CEC9'   -- cosmic: mood.focused / sanctuary.emerald
where atom_word = 'awen';                -- the flowing spirit; breath made visible

update public.sensory_lexicon set
  emoji = '💃', color_hex = '#E84393'   -- cosmic: entity.curator
where atom_word = 'khoros';              -- the dancing-ground, the dance, the dancers

update public.sensory_lexicon set
  emoji = '🔍', color_hex = '#E0E0E0'   -- cosmic: starDust / mystical.albedo
where atom_word = 'lucida';              -- the tracing prism; clear light

update public.sensory_lexicon set
  emoji = '📄', color_hex = '#F5F5DC'   -- cosmic: mystical.moon
where atom_word = 'paper';               -- the written surface

update public.sensory_lexicon set
  emoji = '🎻', color_hex = '#C44B2D'   -- cosmic: hearth.orange
where atom_word = 'cello';               -- the bowed voice, warm and low

update public.sensory_lexicon set
  emoji = '🤝', color_hex = '#0984E3'   -- cosmic: cosmic.blue
where atom_word = 'meeting';             -- the coming together

update public.sensory_lexicon set
  emoji = '⚛️', color_hex = '#6C5CE7'   -- cosmic: quantum.purple / energy.quantum
where atom_word = 'quantum';             -- KP's own sigil, and the house's core colour

update public.sensory_lexicon set
  emoji = '📜', color_hex = '#2E0B1C'   -- cosmic: entity.aethelred (already the house's own)
where atom_word = 'aethelred';           -- noble counsel


-- ── THE NINETEEN WITH A FACE — the colour they lacked ───────────────────────
-- Emoji left exactly as they stand; only color_hex is written.

update public.sensory_lexicon set color_hex = '#0984E3'   -- cosmic: cosmic.blue
where atom_word = 'bridge' and color_hex is null;         -- the laid beam across a gap

update public.sensory_lexicon set color_hex = '#81ECEC'   -- cosmic: mood.peaceful
where atom_word = 'bubble' and color_hex is null;         -- complete when it pops

update public.sensory_lexicon set color_hex = '#00CEC9'   -- cosmic: mood.focused
where atom_word = 'echo' and color_hex is null;           -- the returned sound

update public.sensory_lexicon set color_hex = '#C44B2D'   -- cosmic: hearth.orange
where atom_word = 'hearth' and color_hex is null;         -- the tended fire

update public.sensory_lexicon set color_hex = '#FDCB6E'   -- cosmic: hearth.gold
where atom_word = 'lantern' and color_hex is null;        -- light made portable

update public.sensory_lexicon set color_hex = '#00B894'   -- cosmic: library.green
where atom_word = 'library' and color_hex is null;        -- cosmic names this one itself

update public.sensory_lexicon set color_hex = '#00B894'   -- cosmic: entity.codex
where atom_word = 'grammar' and color_hex is null;        -- the law by which words combine

update public.sensory_lexicon set color_hex = '#A29BFE'   -- cosmic: mood.creative
where atom_word = 'compass' and color_hex is null;        -- pointing, never deciding

update public.sensory_lexicon set color_hex = '#8B4513'   -- cosmic: pagan.earth
where atom_word = 'skapa' and color_hex is null;          -- shaping what already exists

update public.sensory_lexicon set color_hex = '#6C5CE7'   -- cosmic: quantum.purple
where atom_word = 'ziggy' and color_hex is null;          -- the house's front door

update public.sensory_lexicon set color_hex = '#636E72'   -- cosmic: void.base
where atom_word = 'chamber' and color_hex is null;        -- the room small enough to be heard in

update public.sensory_lexicon set color_hex = '#DA70D6'   -- cosmic: entity.weaver (the house's own)
where atom_word = 'weaver' and color_hex is null;         -- strength in the crossing

update public.sensory_lexicon set color_hex = '#FD79A8'   -- cosmic: entity.skald
where atom_word = 'scribe' and color_hex is null;         -- the one who sets it down

update public.sensory_lexicon set color_hex = '#B2BEC3'   -- cosmic: void.light
where atom_word = 'excavator' and color_hex is null;      -- removing what covered it

update public.sensory_lexicon set color_hex = '#FFD700'   -- cosmic: mystical.sun / entity.catalyst
where atom_word = 'asset' and color_hex is null;          -- enough to meet what is owed


-- ============================================================================
-- VERIFY — read-only, safe to re-run.
-- ============================================================================

-- (1) THE COAST'S SENSES, through the real chain. Every beacon atom should
--     carry both a face and a colour. Expect NO blanks.
select b.name as beacon, a.atom_word, s.emoji, s.color_hex
from public.resonance_beacons b
join public.molecules m on m.id = b.molecule_id
join public.molecule_atoms ma on ma.molecule_id = m.id
join public.atoms a on a.id = ma.atom_id
left join public.sensory_lexicon s on s.atom_id = a.id
order by b.name, ma.position;

-- (2) Any beacon atom still missing either. Expect ZERO rows.
select distinct a.atom_word,
       (s.emoji is null) as no_emoji,
       (s.color_hex is null) as no_colour
from public.resonance_beacons b
join public.molecules m on m.id = b.molecule_id
join public.molecule_atoms ma on ma.molecule_id = m.id
join public.atoms a on a.id = ma.atom_id
left join public.sensory_lexicon s on s.atom_id = a.id
where s.emoji is null or s.color_hex is null;

-- (3) The table's new state. Was emoji 1,991 · colour 124 of 2,321.
select count(*) as rows,
       count(emoji) as with_emoji,
       count(color_hex) as with_colour
from public.sensory_lexicon;

-- (4) OBSERVED, NOT ACTED ON — the colours in use across the whole table,
--     most-worn first. The cosmic values this file added will appear beside
--     the older CSS-named ones; the two palettes are visible side by side
--     here for whenever that sitting comes.
select color_hex, count(*) as atoms, string_agg(atom_word, ' · ' order by atom_word)
from public.sensory_lexicon
where color_hex is not null
group by color_hex
order by count(*) desc, color_hex;
