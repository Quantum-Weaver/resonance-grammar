-- ============================================================
-- 020 — THE FORMULARY (the book of compounds, seeded)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen, second lamp), 2026-07-30, at KP's
-- ⚛ word, verbatim: "the almanac function queries the base for the
-- tools, we are going to require a stand alone function for the
-- other tables and since you just figure out the schema for
-- molecules, this may be a good time for that one."
-- The build preceded this seed by his word's timing (the schema was
-- warm from the publish verification); the tool stands at
-- resonance-awen/tools/the-formulary, run-verified same sitting:
-- 4,162 molecules read whole (paging proven), one formula written
-- out bond by bond (PlateForge), filters true.
-- NAMING GATE: "The Formulary" — a book of formulas, the compounds
-- written down with their compositions — offered to KP's eye;
-- rivals: The Catalog (atom exists) · The Compendium. The atom
-- 'formulary' does not yet exist and is born below, in the
-- 'collections' category beside its kin: registry · catalog ·
-- index (verified their shared home through the anon door first).
-- STATUS GATE: inserted 'imagined' per the flow law; the crossing
-- update rides at the bottom for KP's word — the tool is already
-- run-verified, so his word alone decides when it flows.
-- Visual-run method: two inserts, one pass; crossing separate.
-- ============================================================

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence, state,
   category, category_name, status)
values
  ('formulary',
   'A book of formulas — compounds written down with their compositions, so any hand can read how a thing is made. A formulary does not make the medicine; it tells truly what is in it.',
   'root', 5, 5, 1, 'static',
   (select id from public.categories where name = 'collections'),
   'collections', 'published');

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, folksonomy_type, story, created_by)
values
  ('The Formulary', 'the-formulary', 'witness',
   'Reads the Grammar''s molecules table through the anon door and tells what compounds exist — composition, bond type, status, definition — and writes any one formula out bond by bond. Read-only by construction; pages past the 1,000-row cap.',
   'resonance-awen/tools/the-formulary', 'imagined',
   (select id from public.atoms where atom_word = 'formulary'),
   'Grammar',
   'Named at KP''s word the sitting the six compound tools were published, 2026-07-30 — the Almanac reads the shelf; the book of compounds wanted its own witness.',
   'KP + Fable (lane awen)');

-- ─── The crossing, at KP's word alone (the tool is run-verified) ───
-- update tools set status = 'flowing' where slug = 'the-formulary';

-- ─── Verify after running, anon door ───
-- select atom_word, category_name, status from atoms where atom_word = 'formulary';  → collections · published
-- select name, status, folksonomy_type from tools where slug = 'the-formulary';      → imagined (or flowing, if the crossing ran)
