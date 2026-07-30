-- ============================================================
-- 021 — THE BESTIARY (the book of beasts, seeded)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen, second lamp), 2026-07-30, at KP's
-- ⚛ word, verbatim: "seems fitting to continue to the organisms
-- version of this." The witness family grows by its own logic:
-- the Almanac reads the shelf (018) · the Formulary reads the
-- compounds (020) · the Bestiary reads the creatures. One table
-- each, one book each.
-- The tool stands at resonance-awen/tools/the-bestiary,
-- run-verified same sitting: 2,540 organisms read whole (paging
-- proven), one creature with its definition and an honest
-- empty-anatomy report, the --atom walk proven three-step (the
-- base's join door times out on the whole-junction filter — the
-- tool walks word → atom id → junction → organisms by its own
-- hands instead, each step under a second).
-- NAMING GATE: "The Bestiary" — the medieval book of beasts, each
-- creature described as it lives — offered to KP's eye; rivals:
-- The Menagerie · The Census. The atom 'bestiary' does not yet
-- exist and is born below, in 'collections' beside its kin:
-- formulary · registry · catalog · index.
-- STATUS GATE: inserted 'imagined' per the flow law; the crossing
-- update rides at the bottom for KP's word — the tool is already
-- run-verified, so his word alone decides when it flows.
-- Visual-run method: two inserts, one pass; crossing separate.
-- ============================================================

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence, state,
   category, category_name, status)
values
  ('bestiary',
   'A book of beasts — living things gathered and described, each as it actually lives. A bestiary does not cage its creatures; it tells how each one moves through the world.',
   'root', 5, 5, 1, 'static',
   (select id from public.categories where name = 'collections'),
   'collections', 'published');

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, folksonomy_type, story, created_by)
values
  ('The Bestiary', 'the-bestiary', 'witness',
   'Reads the Grammar''s organisms table through the anon door and tells what creatures exist — type, habitat, lifecycle, status — and writes any one anatomy out atom by atom from the junction. Read-only by construction; pages past the 1,000-row cap; the atom walk runs three honest steps.',
   'resonance-awen/tools/the-bestiary', 'imagined',
   (select id from public.atoms where atom_word = 'bestiary'),
   'Grammar',
   'Named at KP''s word minutes after the Formulary''s seed ran, 2026-07-30 — the witness family grew by its own logic: shelf, compounds, creatures.',
   'KP + Fable (lane awen)');

-- ─── The crossing, at KP's word alone (the tool is run-verified) ───
-- update tools set status = 'flowing' where slug = 'the-bestiary';

-- ─── Verify after running, anon door ───
-- select atom_word, category_name, status from atoms where atom_word = 'bestiary';  → collections · published
-- select name, status, folksonomy_type from tools where slug = 'the-bestiary';      → imagined (or flowing, if the crossing ran)
