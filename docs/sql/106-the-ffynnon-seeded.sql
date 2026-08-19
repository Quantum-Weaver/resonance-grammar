-- 106 — the-ffynnon seeded
--
-- The Ffynnon — The spring's own births, mechanized — plants a tool whole, drafts its five book entries and refuses to write them, walks the naming law, and drafts its registry seed for KP's hand.
--
-- Born 2026-08-19, by Bolster (Claude), at KP's ⚛ commission and naming. Planted by the-ffynnon into the
-- seven-file standalone shape at KP's ⚛ ruling of 2026-08-19 ("today's shape"):
-- the better, planned tools system is his and unwritten, and nothing here
-- sketches it.
--
-- CATEGORY CHECKED BEFORE WRITING (seed 077's law): the categories table was
-- queried at the anon door this sitting. **creation** (8427a8ea-2bac-4152-a7d8-e174a77d2297)
-- is the honest home — its own description is this tool's entire job — "The making verbs — create, generate, seed, merge, enhance. How new things enter the world" — and it even names *seed*, which is literally what this water drafts. RUNNER-UP AND HIS TO OVERRULE IN ONE WORD: system, where its sibling sits (molecule FoundingRitual, 'covalent', 'system', seed 055 line 167). System reads as "how the workings name their own parts"; this water's whole subject is bringing new parts into being, so creation was taken. Infrastructure was ruled out: nothing stands on this water at runtime.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("ffynnon") — the row carries atom_id and no molecule. One tier exactly.
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
  'ffynnon',
  'Ffynnon (Welsh: a well, a spring, a fountain — the place a water rises before it is a water). The-founding-ritual''s sibling at TOOL scale: that ritual founds a repo, this one founds a tool. It plants the folder with real contents (tsconfig byte-copied from the-conductor''s, read from disk rather than baked in where it could drift), DRAFTS the five book entries and refuses to write them because a book is not written by a scaffold, walks the one-tier naming law, sweeps the eleven library registries while stating its own limit in its own output, and drafts the registry seed numbered into resonance-grammar and never run. Every write uses the exclusive flag, so an occupied path is refused and KEPT and running it over a half-founded tool completes it and destroys nothing. Pure charter, thin hands, zero dependencies, no clock.',
  'root', 5, 5, 1, 'static',
  '8427a8ea-2bac-4152-a7d8-e174a77d2297',  -- creation
  'creation',
  'published',
  'FFYNNON',
  'ffynnon',
  'Ffynnon'
);

insert into public.awen
  (name, slug, tool_type, definition, home, status, atom_id, story, created_by)
values
  ('The Ffynnon', 'the-ffynnon', 'emit',
   'Ffynnon (Welsh: a well, a spring, a fountain — the place a water rises before it is a water). The-founding-ritual''s sibling at TOOL scale: that ritual founds a repo, this one founds a tool. It plants the folder with real contents (tsconfig byte-copied from the-conductor''s, read from disk rather than baked in where it could drift), DRAFTS the five book entries and refuses to write them because a book is not written by a scaffold, walks the one-tier naming law, sweeps the eleven library registries while stating its own limit in its own output, and drafts the registry seed numbered into resonance-grammar and never run. Every write uses the exclusive flag, so an occupied path is refused and KEPT and running it over a half-founded tool completes it and destroys nothing. Pure charter, thin hands, zero dependencies, no clock.',
   'resonance-awen/tools/the-ffynnon', 'imagined',
   (select id from public.atoms where atom_word = 'ffynnon'),
   'Born 2026-08-19, by Bolster (Claude), at KP''s ⚛ commission and naming. Planted by the-ffynnon — the spring''s own births, mechanized.',
   'Bolster (Claude), at KP''s ⚛ commission and naming');

-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it
-- once the proofs stand; uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug = 'the-ffynnon';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, home
from public.awen where slug = 'the-ffynnon';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'ffynnon';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'ffynnon'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'ffynnon';

