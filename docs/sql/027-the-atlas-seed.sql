-- ============================================================
-- 027 — THE ATLAS (the book of maps, seeded)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen, second lamp), 2026-07-30, at KP's
-- ⚛ word: "let us continue" — the witness family's fifth book.
-- The shelf (018 Almanac) · the compounds (020 Formulary) · the
-- creatures (021 Bestiary) · the letters (022 Abecedary) all had
-- their witnesses; what remained was THE MAP: the lattice KP ruled
-- in seven words ("i see the system as a omnidimensional lattice …
-- not a hierarchy," 2026-07-27) — schemes as territories,
-- memberships as placements, concept relations as roads,
-- classification paths as ladders.
-- The tool stands at resonance-awen/tools/the-atlas, run-verified
-- same sitting: the map whole (41 schemes · 287 placements · 187
-- roads · 12 ladders · 96 rungs), one territory (Kingdom, primaries
-- starred), the ladders resolved, and one concept read whole —
-- DigitalBard: 3 placements · 1 road · the 8-rung ladder from
-- ExpressionDomain through SkaldOrder to itself. The polyhierarchy
-- resolves per tier (atom / molecule / organism) and says which.
-- NAMING GATE: "The Atlas" — the bound book of maps — offered to
-- KP's eye; rivals: The Gazetteer · The Chart ('map' exists as an
-- atom but names the territory-drawing, not the bound book). The
-- atom 'atlas' does not yet exist and is born below, in
-- 'collections' beside its kin: abecedary · bestiary · formulary ·
-- registry · catalog · index.
-- STATUS GATE: inserted 'imagined' per the flow law; the crossing
-- update rides at the bottom for KP's word — the tool is already
-- run-verified, so his word alone decides when it flows.
-- Visual-run method: two inserts, one pass; crossing separate.
-- ============================================================

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence, state,
   category, category_name, status)
values
  ('atlas',
   'A book of maps bound together — many territories held in one hand. An atlas does not own the lands it shows; it lets any traveler see how they join.',
   'root', 5, 5, 1, 'static',
   (select id from public.categories where name = 'collections'),
   'collections', 'published');

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, folksonomy_type, story, created_by)
values
  ('The Atlas', 'the-atlas', 'witness',
   'Reads the Grammar''s lattice whole through the anon door — schemes as territories, memberships as placements, concept relations as roads, classification paths as ladders. One scheme with its members by tier; one concept with its placements, roads, and full ladder rung by rung. Read-only by construction; polyhierarchy resolved per tier.',
   'resonance-awen/tools/the-atlas', 'imagined',
   (select id from public.atoms where atom_word = 'atlas'),
   'Grammar',
   'Named as the witness family''s fifth book at KP''s "let us continue," 2026-07-30 — the map itself was the last great room without a witness. First proof: DigitalBard''s eight-rung ladder read whole.',
   'KP + Fable (lane awen)');

-- ─── The crossing, at KP's word alone (the tool is run-verified) ───
-- update tools set status = 'flowing' where slug = 'the-atlas';

-- ─── Verify after running, anon door ───
-- select atom_word, category_name, status from atoms where atom_word = 'atlas';  → collections · published
-- select name, status, folksonomy_type from tools where slug = 'the-atlas';      → imagined (or flowing, if the crossing ran)
