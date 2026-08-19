-- 105 — the-lodestone seeded
--
-- The Lodestone — A URL in, a stone that points out — QR codes encoded and drawn whole on the machine, styled to the house, needing no network ever.
--
-- Born 2026-08-19, by Bolster (Claude), at KP's ⚛ naming. Planted by the-ffynnon into the
-- seven-file standalone shape at KP's ⚛ ruling of 2026-08-19 ("today's shape"):
-- the better, planned tools system is his and unwritten, and nothing here
-- sketches it.
--
-- CATEGORY CHECKED BEFORE WRITING (seed 077's law): the categories table was
-- queried at the anon door this sitting. **communication** (839cc74b-baee-47cc-b6eb-617a83393e36)
-- is the honest home — its own description is nearly this tool's definition — "signals... invitations... Everything that crosses from one to another." A stone cut here is handed to a tester and carries a link across to them. Runner-up: sensory (a QR is a visual language). Infrastructure was ruled out because this water is load-bearing for nothing; it is a thing you hand someone.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("lodestone") — the row carries atom_id and no molecule. One tier exactly.
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059 precedent).
--
-- THE TABLE IS public.awen. It was renamed from public.tools on 2026-08-15
-- (seed 096) and the shim view was dropped at KP's word on 097 — public.tools
-- answers PGRST205 today.
--
-- Run at KP's ⚛ hand. Verify at the anon door after.

insert into public.atoms (
  atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  'lodestone',
  'The stone that points: any text or URL encoded to a QR matrix and drawn as SVG, entirely on the machine — Reed-Solomon error correction, mask selection and version fitting all computed here, so a code can be made with no network, no service, and no package fetched at run time. Custom by construction: the module shape, the quiet zone, the two colours and an optional centre reservation are the caller''s, and the encoder refuses any appearance that would cost more error correction than the code carries. Born of a first-user need named twice — the app-link screen in THE-CARRY, and sharing test builds with testers by hand.',
  'root', 5, 5, 1, 'static',
  '839cc74b-baee-47cc-b6eb-617a83393e36',  -- communication
  'communication',
  'published',
  'LODESTONE',
  'lodestone',
  'Lodestone'
);

insert into public.awen
  (name, slug, tool_type, definition, home, status, atom_id, story, created_by)
values
  ('The Lodestone', 'the-lodestone', 'translate',
   'The stone that points: any text or URL encoded to a QR matrix and drawn as SVG, entirely on the machine — Reed-Solomon error correction, mask selection and version fitting all computed here, so a code can be made with no network, no service, and no package fetched at run time. Custom by construction: the module shape, the quiet zone, the two colours and an optional centre reservation are the caller''s, and the encoder refuses any appearance that would cost more error correction than the code carries. Born of a first-user need named twice — the app-link screen in THE-CARRY, and sharing test builds with testers by hand.',
   'resonance-awen/tools/the-lodestone', 'imagined',
   (select id from public.atoms where atom_word = 'lodestone'),
   'Born 2026-08-19, by Bolster (Claude), at KP''s ⚛ naming. Planted by the-ffynnon — the spring''s own births, mechanized.',
   'Bolster (Claude), at KP''s ⚛ naming');

-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it
-- once the proofs stand; uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug = 'the-lodestone';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, home
from public.awen where slug = 'the-lodestone';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'lodestone';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'lodestone'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'lodestone';

