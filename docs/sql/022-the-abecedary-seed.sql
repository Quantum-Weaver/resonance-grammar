-- ============================================================
-- 022 — THE ABECEDARY (the alphabet primer, seeded)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen, second lamp), 2026-07-30, at KP's
-- ⚛ words, verbatim: "excellent. atoms next please" — and the
-- attachment stroke mid-build: "this one should include the
-- sensory lexicon and etymology rows attached."
-- The witness family's fourth book: the Almanac reads the shelf
-- (018) · the Formulary the compounds (020) · the Bestiary the
-- creatures (021) · the Abecedary the letters themselves — atoms
-- are the alphabet everything else is spelled with, so each is
-- read with its senses and its roots attached.
-- The tool stands at resonance-awen/tools/the-abecedary,
-- run-verified same sitting: 1,958 atoms read whole with both
-- companions embedded (~1s per 1,000-row page, one fetch not
-- three), shell-completion counted honestly (etymology 23 filled ·
-- senses 1,949 filled · 3 wearing modifiers), modifiers displayed
-- in the house's form (mark[s]).
-- NAMING GATE: "The Abecedary" — the alphabet primer, the book of
-- first elements — offered to KP's eye; rivals: The Glossary · The
-- Dictionary (both atoms exist). The atom 'abecedary' does not yet
-- exist and is born below, in 'collections' beside its kin:
-- bestiary · formulary · registry · catalog · index.
-- STATUS GATE: inserted 'imagined' per the flow law; the crossing
-- update rides at the bottom for KP's word — the tool is already
-- run-verified, so his word alone decides when it flows.
-- Visual-run method: two inserts, one pass; crossing separate.
-- ============================================================

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence, state,
   category, category_name, status)
values
  ('abecedary',
   'A primer of the alphabet — the letters gathered first, so everything spelled later can be read. An abecedary holds no sentences; it holds what sentences are made of.',
   'root', 5, 5, 1, 'static',
   (select id from public.categories where name = 'collections'),
   'collections', 'published');

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, folksonomy_type, story, created_by)
values
  ('The Abecedary', 'the-abecedary', 'witness',
   'Reads the Grammar''s atoms through the anon door with the sensory lexicon and etymology rows attached — every word with its type, category, modifiers, and emoji; any one word whole with its roots and senses; shell-completion counted honestly in every summary. Read-only by construction; pages past the 1,000-row cap.',
   'resonance-awen/tools/the-abecedary', 'imagined',
   (select id from public.atoms where atom_word = 'abecedary'),
   'Grammar',
   'Named at KP''s word as the witness family''s fourth book, 2026-07-30 — shelf, compounds, creatures, and now the letters themselves, senses and roots attached at his stroke.',
   'KP + Fable (lane awen)');

-- ─── The crossing, at KP's word alone (the tool is run-verified) ───
-- update tools set status = 'flowing' where slug = 'the-abecedary';

-- ─── Verify after running, anon door ───
-- select atom_word, category_name, status from atoms where atom_word = 'abecedary';  → collections · published
-- select name, status, folksonomy_type from tools where slug = 'the-abecedary';      → imagined (or flowing, if the crossing ran)
