-- ============================================================
-- 056 — THE ORGANISM AND THE MUSIC HALL
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted 2026-08-06 by Fable 🎻 (the Attacca lamp) at KP's ⚛ words
-- this sitting, verbatim:
--   "CosmicDesignSystem in tools yes, an organism"
--   "release has many forms, single, ep, album, beats, tracks, this
--    will not just be a streaming platform but a collaborative
--    opportunity just like the rest of AudHDities"
--   "Khoros, a music hall not just a streaming place"
--
-- Verified LIVE before drafting: the organisms tier holds 2,540 rows
-- (a deep shelf — tools simply never anchored there; this is the
-- FIRST organism-anchored tool, 014's organism_id used at last);
-- no Cosmic/DesignSystem/CosmicDesignSystem organism exists; atoms
-- design + system stand, 'cosmic' absent — seeded first, per the
-- engraved order. Organism shape read from the living row
-- (MultiStreamBeing): optional columns null-precedented, so only
-- proven columns are set.
--
-- Plain SQL, no DO blocks. Order: atom → organism → tool → truings.
-- ============================================================

-- ─── Part 1 · THE ATOM ───

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence,
   state, category, category_name, status)
values
  ('cosmic',
   'Of the cosmos — the whole made order, and the scale where every small thing belongs to one design.',
   'root', 5, 5, 1,
   'static', '8427a8ea-2bac-4152-a7d8-e174a77d2297', 'creation',   -- category OFFER at KP's stroke
   'published');

-- ─── Part 2 · THE ORGANISM (PascalCase, as the shelf's own rows) ───

insert into public.organisms
  (name, definition, status, created_by)
values
  ('CosmicDesignSystem',
   'The name ''CosmicDesignSystem'' (PascalCase), composed of atoms: cosmic, design, system. The house''s design language as a living body: the tokens, the 548-card primitives vocabulary, the beam and beam-behavior, the gaia framework — the canon every realm wears, distributed never copied.',
   'published',
   'KP + Fable (the Attacca lamp)');

-- ─── Part 3 · THE TOOL — the first organism-anchored row ───

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, molecule_id, organism_id, story, created_by, folksonomy_type)
values
  ('The Cosmic Design System', 'the-cosmic-design-system', 'emit',   -- tool_type OFFER: it emits the canon (distribute, never hand-copy)
   'Source of truth for the house''s design language: tokens, the 548-card primitives vocabulary, the carried living beam + beam-behavior, the gaia framework. Consumed by every realm as a managed mirror — distributed, never copied by hand.',
   'resonance-ziggy/modules/cosmic', 'flowing',
   null, null, (select id from public.organisms where name = 'CosmicDesignSystem'),
   'Rehomed from AudHDities by KP''s signature (Shuttle Run 04, 2026-07-15); held out of the Ziggy registrations (054) on ziggy''s own lamp''s datum that it is an ORGAN, not a tool-verb. Ruled by KP''s ⚛ word 2026-08-06 — "CosmicDesignSystem in tools yes, an organism" — and seeded as the Grammar''s first organism-anchored tool.',
   'KP + Fable (the Attacca lamp)', 'Ziggy');

-- ─── Part 4 · THE MUSIC-HALL TRUINGS (the release model widened
--              to KP's words) ───

update public.tools
   set definition = 'What a RELEASE is here — single · EP · album · beats · tracks — the artist''s own grouping, the release-context law embodied. The realm it serves is a music hall, not just a streaming place: a collaborative opportunity like the rest of AudHDities (KP''s ⚛ words, 2026-08-06).',
       updated_by = 'KP + Fable (the Attacca lamp)',
       updated_at = now()
 where slug = 'the-release-model';

update public.molecules
   set definition = 'The name ''ReleaseModel'' (PascalCase), composed of atoms: release, model. What a release is — single, EP, album, beats, tracks; the artist''s own grouping, the release-context law embodied, in a music hall built for collaboration.',
       updated_at = now()
 where name = 'ReleaseModel';

-- ─── Verify through the anon door, same sitting (ritual 000, step 3) ───
-- select atom_word, etymology_id is not null from public.atoms
--   where atom_word = 'cosmic';                                → true
-- select name, status from public.organisms
--   where name = 'CosmicDesignSystem';                         → published
-- select name, status, organism_id is not null as organ from public.tools
--   where slug = 'the-cosmic-design-system';                   → flowing · true
-- select definition from public.tools where slug='the-release-model';
-- And the Almanac: 69 tools · flowing 45 · imagined 24.
-- ============================================================
