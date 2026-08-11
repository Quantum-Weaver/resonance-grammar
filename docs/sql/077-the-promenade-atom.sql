-- 077 — the promenade atom
--
-- The coast walk, named by KP's ⚛ own word 2026-08-07 ("new Awen
-- callings. Promenade, Ceilidh, Sphragis"); the shape drawn lane C the
-- same day and carried by him. French joins the naming strata beside
-- the Greek (Khorós · Epagoge · Sphragis), the Irish (Cumdach), the
-- Quechua (Quipus), and the Welsh (Awen) itself.
--
-- CATEGORY CHECKED BEFORE WRITING, at his ⚛ ask ("query the categories
-- table to make certain we need the new row"): the table holds 25 rows,
-- sort_order 1–25, no gap. **No new category is needed** — `content`
-- (14) is the honest home, by its own description: "The stuff itself —
-- documents, fragments, lyrics, recordings. What the house holds." A
-- promenade walks a coast of released work, which is that. Rejected on
-- reading rather than on name: `play` (the destination words — a
-- promenade is not a game) and `sensory` (perception's channels, not a
-- walk through content). An earlier suggestion of "experience" was
-- withdrawn — no such category exists, and `content` is the better fit.
--
-- Etymology and sensory rows are NOT written here: the atoms table's
-- own triggers make both on insert, arriving empty for a later fill
-- (proven by epagoge's live rows, and by seed 059's record — "triggers
-- made etymology + sensory").
--
-- Run at KP's ⚛ hand. Verify at the anon door after.

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
  'promenade',
  'The reader''s own walk along a coast of released work — full-screen, one release at a time, every advance the reader''s explicit act. Chronological or lens-chosen, never ranked, with an honest end. French joins the naming strata.',
  'root',
  5,
  5,
  1,
  'static',
  '420f7c5c-badc-4b75-9e30-d36b47bd11b7',  -- content
  'content',
  'published',
  'PROMENADE',
  'promenade',
  'Promenade'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms
where atom_word = 'promenade';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'promenade'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'promenade';
