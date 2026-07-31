-- ============================================================
-- 028 — THE GAIA-SYNC (the portrait button, seeded)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen, second lamp), 2026-07-31, at KP's
-- ⚛ words, verbatim: "i have a new single purpose tool, 2 of them
-- we need. one for each of the supabases. to be able to run this
-- command easily 'select public.gaia_sync();' these wil become
-- ziggy buttons" — refined the same breath: "or a single function
-- that can choose which base to query."
-- One tool, the base as argument; Ziggy's two buttons are two
-- invocations. The tool stands at resonance-awen/tools/
-- the-gaia-sync, run-verified against BOTH live bases same
-- sitting: the proving probe caught superposition mid-drift
-- (1 table created · 6 shape changes detected); the tool's own
-- `both` press confirmed both portraits current (all zeros).
-- Secret key required by construction — signing the portrait is a
-- keeper's act, not a public read.
-- THE GRAMMAR: both atoms already live (gaia · consciousness,
-- sync · system) — no atom is born here, a first for these seeds.
-- The molecule GaiaSync bonds them: gaia (modifier) + sync
-- (core_type), covalent, PascalCase, junction written by hand per
-- the base's own pattern. It lands SUBMITTED per the editorial
-- law; KP's eye publishes. The tool row links the molecule
-- (one-tier law), family Ziggy (the button panel is the purpose
-- served), home in the spring.
-- TOOL_TYPE offered to KP's eye: 'capture' — the button makes the
-- base capture its own shape. (The registry's living vocabulary:
-- witness · capture · combine · arrange · emit · transform ·
-- translate.)
-- STATUS GATE: tool inserted 'imagined' per the flow law; the
-- publish + crossing updates ride at the bottom for KP's word.
-- Visual-run method: three inserts, one pass; gates separate.
-- ============================================================

insert into public.molecules
  (name, molecule_type, naming_convention, definition, bond_type,
   atom_words, derived_name, domain, status)
values
  ('GaiaSync', 'concept', 'PascalCase',
   'The base capturing its own shape — Gaia''s synchronizing act, pressed as one command. The portrait signs itself; the button only asks.',
   'covalent', 'gaia, sync', 'GaiaSync', 'system', 'submitted');

insert into public.molecule_atoms (molecule_id, atom_id, position, role, status)
values
  ((select id from public.molecules where name = 'GaiaSync'),
   (select id from public.atoms where atom_word = 'gaia'),
   1, 'modifier', 'submitted'),
  ((select id from public.molecules where name = 'GaiaSync'),
   (select id from public.atoms where atom_word = 'sync'),
   2, 'core_type', 'submitted');

insert into public.tools
  (name, slug, tool_type, definition, home, status, molecule_id, folksonomy_type, story, created_by)
values
  ('The Gaia-Sync', 'the-gaia-sync', 'capture',
   'One button, any base: runs select public.gaia_sync() through the PostgREST RPC door and reports what the portrait-signing found. The base chooses by argument; a menu makes one button per base from a single tool. Secret key required — a keeper''s act, not a public read.',
   'resonance-awen/tools/the-gaia-sync', 'imagined',
   (select id from public.molecules where name = 'GaiaSync'),
   'Ziggy',
   'Named at KP''s word 2026-07-31 for Ziggy''s button panel; the proving probe caught the superposition base mid-drift (1 table, 6 shape changes) before the tool had a name.',
   'KP + Fable (lane awen)');

-- ─── The publish, at KP's ⚛ eye (editorial law) ───
-- update molecules set status = 'published' where name = 'GaiaSync';
-- update molecule_atoms set status = 'published'
--   where molecule_id = (select id from molecules where name = 'GaiaSync');

-- ─── The crossing, at KP's word alone (the tool is run-verified) ───
-- update tools set status = 'flowing' where slug = 'the-gaia-sync';

-- ─── Verify after running, anon door ───
-- select name, status from molecules where name = 'GaiaSync';        → invisible until published (editorial RLS), then published
-- select name, status, folksonomy_type from tools where slug = 'the-gaia-sync';  → imagined (or flowing, if the crossing ran)
