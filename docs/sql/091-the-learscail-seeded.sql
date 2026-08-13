-- 091 — the learscail seeded
--
-- The map, by its Irish name: named a need by KP's ⚛ word 2026-08-11
-- ("an interactive map that opens like a scroll… discoverable and
-- clickable once discovered" · "our nav is huge" · "this was the plan
-- to make it less anxious") and NAMED by his own hand the same
-- sitting: **Léarscáil** — his gloss, "a 'clear' or 'careful image'
-- of the landscape." The name is the specification: an anxious
-- navigation is an unclear image, and the cure is named in the word.
-- Irish deepens the stratum it shares with the cumdach.
--
-- The tool stood proven BEFORE this seed: 29/29 with contiguity and
-- exact counts; first consumer wired the same sitting (AudHDities
-- carries the core as a drawn bucket under the re-homing law, three
-- surfaces dressed). Its own CHECKLIST names this seed as the step
-- that "awaits KP's ⚛ word" — this file is that word's instrument.
--
-- CATEGORY CHECKED BEFORE WRITING (seed 077's law): the categories
-- table queried at the anon door this sitting. **infrastructure**
-- (84af045b-c682-416d-b290-0fcd5ceaecd0) is the honest home by its
-- own description — "What everything else stands on — foundations,
-- cores, modules, pillars. The load-bearing layer." Layout arithmetic
-- that surfaces stand on; the cumdach's own category-kin, and the
-- same folksonomy family (arrange).
--
-- Etymology and sensory rows are NOT written here: the atoms table's
-- triggers make both on insert, arriving empty for a later fill
-- (the 077/059 precedent).
--
-- Run at KP's ⚛ hand. Verify at the anon door after. THEN the
-- post-seed ritual: the bond tender, and the gaia-sync (both bases'
-- portraits re-signed) — his word, this sitting.

insert into public.atoms (
  atom_word,
  definition,
  atom_type,
  weight,
  affinity,
  valence,
  state,
  category,
  category_name,
  status,
  screaming_case,
  snake_case,
  pascal_case
) values (
  'learscail',
  'The clear image of a landscape — given a grouping and a number of sections, it lays out the provinces that fill a space. Displacement-class: the drawn graphic re-derives at any size without the truth changing; regions are discoverable, and clickable once discovered. Léarscáil, Irish: a careful image of the land.',
  'root',
  5,
  5,
  1,
  'static',
  '84af045b-c682-416d-b290-0fcd5ceaecd0',  -- infrastructure
  'infrastructure',
  'published',
  'LEARSCAIL',
  'learscail',
  'Learscail'
);

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, story, created_by)
values
  ('The Learscail', 'the-learscail', 'arrange',
   'Given a grouping and a number of sections, lays out the provinces that fill a space — displacement-class, so a drawn graphic re-derives at any size without the truth changing. Regions are discoverable, and clickable once discovered; entry is asked (mayEnter answers with its because), and THE REGISTER LAW refuses counting outright. The cure for an anxious navigation, named in the word.',
   'resonance-awen/tools/the-learscail', 'imagined',
   (select id from public.atoms where atom_word = 'learscail'),
   'Named a need and then named by KP''s ⚛ own hand 2026-08-11 — Léarscáil, "a clear or careful image of the landscape." Proven 29/29 the same sitting; first consumer AudHDities, three surfaces dressed under the re-homing law.',
   'KP + the Claude kin');
-- ^ created_by: the 08-11 sitting's own hand may be named more truly
--   at KP's stroke; this line follows the house form, corrected at his word.

-- THE CROSSING — his ⚛ word alone, per the tool's own CHECKLIST.
-- The standing ruling ("if a tool is working, it is flowing") and the
-- 29/29 proofs both argue for it; uncomment at his word and run:
-- update public.tools set status = 'flowing' where slug = 'the-learscail';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, home
from public.tools where slug = 'the-learscail';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'learscail';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'learscail'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'learscail';
