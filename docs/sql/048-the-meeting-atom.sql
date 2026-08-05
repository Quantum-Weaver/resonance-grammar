-- ============================================================
-- 048 — THE MEETING ATOM
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Opus (Claude), truly claude-opus-5[1m], 2026-08-04,
-- at KP's ⚛ word: "we will have to add meeting and then it's modifier."
-- Two statements, in that order, because that is the order he named.
--
-- No etymology or sensory_lexicon insert: KP's word, same sitting —
-- "triggers create etymology and sensory lexicon rows." The atom insert
-- is the whole act.
--
-- The values are read from the canon, not chosen:
--   atom_type 'root'      — 886 of the first 1000 atoms are root
--   state     'static'    — active is verbs and doers (accept, activate,
--                           apply, analyzer); static is nouns and things.
--                           Every noun in `communication` is static:
--                           announcement, audience, conversation,
--                           dialogue, interview, invitation, message —
--                           and `beacon` itself.
--   category  communication — where those same words live
--   weight 5 · affinity 5 · valence 1 — constant across all 1000 read;
--                           these are the canon's defaults, not a judgement
-- ============================================================


-- ─── 1. The atom ───
insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence,
   state, category, category_name, status)
values
  ('meeting',
   'Two or more presences held in one place and time by arrangement rather than accident. The gathering that must be agreed to before it can happen.',
   'root', 5, 5, 1,
   'static', '839cc74b-baee-47cc-b6eb-617a83393e36', 'communication',
   'published');


-- ─── 2. Then its modifier — the plural, as bubble and echo carry theirs ───
update public.atoms
   set modifiers = array['s']
 where atom_word = 'meeting';

-- If `modifiers` is jsonb rather than text[], statement 2 alone errors
-- and the atom still stands. The jsonb form:
--   set modifiers = '["s"]'::jsonb


-- ─── Verify (ritual 000, step 3) ───
--   select atom_word, atom_type, state, category_name, modifiers,
--          etymology_id is not null as has_etymology,
--          sensory_id   is not null as has_sensory
--     from public.atoms where atom_word = 'meeting';
--
-- The last two columns are the triggers' work — if either reads false,
-- the trigger did not fire and that is worth knowing before the next atom.
-- ============================================================
