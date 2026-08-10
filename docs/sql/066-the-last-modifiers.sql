-- ============================================================================
-- 066 — THE LAST MODIFIERS: the atoms' closing stone
-- The convention-aware census (verify_terms, mended to read THE DERIVATION
-- CONVENTION) found exactly 31 words still uncovered of the library's
-- 2,645. Twenty-four close here as full-form modifier entries on their
-- standing singulars (the y→ies shelf, ratified by 065's run, plus
-- settings on set). The remaining SEVEN are the acronym shelf — fm1 fm2
-- fm3 m1 m2 m3 m4 — the EXPLICIT EXCLUSIONS the done-signal allows, not
-- atoms by KP's standing ruling.
--
-- After this runs, the library carry's atom phase reads COMPLETE:
-- every word the python and typescript wings speak is an atom, a lawful
-- modifier of one, or a named exclusion.
--
-- Each statement guarded (jsonb, append-only, re-run safe); the verify
-- names any singular that unexpectedly does not stand. Run whole at
-- KP's ⚛ dashboard. Drafted 2026-08-09 by Fable 🎻, the Serenade lamp.
-- ============================================================================

-- MOVEMENT 1 — THE Y→IES PLURALS (full-form entries, per the convention)

update public.atoms set modifiers = case when modifiers is null then '["activities"]'::jsonb when not (modifiers ? 'activities') then modifiers || '["activities"]'::jsonb else modifiers end where atom_word = 'activity';
update public.atoms set modifiers = case when modifiers is null then '["boundaries"]'::jsonb when not (modifiers ? 'boundaries') then modifiers || '["boundaries"]'::jsonb else modifiers end where atom_word = 'boundary';
update public.atoms set modifiers = case when modifiers is null then '["capabilities"]'::jsonb when not (modifiers ? 'capabilities') then modifiers || '["capabilities"]'::jsonb else modifiers end where atom_word = 'capability';
update public.atoms set modifiers = case when modifiers is null then '["categories"]'::jsonb when not (modifiers ? 'categories') then modifiers || '["categories"]'::jsonb else modifiers end where atom_word = 'category';
update public.atoms set modifiers = case when modifiers is null then '["ceremonies"]'::jsonb when not (modifiers ? 'ceremonies') then modifiers || '["ceremonies"]'::jsonb else modifiers end where atom_word = 'ceremony';
update public.atoms set modifiers = case when modifiers is null then '["densities"]'::jsonb when not (modifiers ? 'densities') then modifiers || '["densities"]'::jsonb else modifiers end where atom_word = 'density';
update public.atoms set modifiers = case when modifiers is null then '["dependencies"]'::jsonb when not (modifiers ? 'dependencies') then modifiers || '["dependencies"]'::jsonb else modifiers end where atom_word = 'dependency';
update public.atoms set modifiers = case when modifiers is null then '["directories"]'::jsonb when not (modifiers ? 'directories') then modifiers || '["directories"]'::jsonb else modifiers end where atom_word = 'directory';
update public.atoms set modifiers = case when modifiers is null then '["entities"]'::jsonb when not (modifiers ? 'entities') then modifiers || '["entities"]'::jsonb else modifiers end where atom_word = 'entity';
update public.atoms set modifiers = case when modifiers is null then '["entries"]'::jsonb when not (modifiers ? 'entries') then modifiers || '["entries"]'::jsonb else modifiers end where atom_word = 'entry';
update public.atoms set modifiers = case when modifiers is null then '["families"]'::jsonb when not (modifiers ? 'families') then modifiers || '["families"]'::jsonb else modifiers end where atom_word = 'family';
update public.atoms set modifiers = case when modifiers is null then '["frequencies"]'::jsonb when not (modifiers ? 'frequencies') then modifiers || '["frequencies"]'::jsonb else modifiers end where atom_word = 'frequency';
update public.atoms set modifiers = case when modifiers is null then '["intensities"]'::jsonb when not (modifiers ? 'intensities') then modifiers || '["intensities"]'::jsonb else modifiers end where atom_word = 'intensity';
update public.atoms set modifiers = case when modifiers is null then '["memories"]'::jsonb when not (modifiers ? 'memories') then modifiers || '["memories"]'::jsonb else modifiers end where atom_word = 'memory';
update public.atoms set modifiers = case when modifiers is null then '["opportunities"]'::jsonb when not (modifiers ? 'opportunities') then modifiers || '["opportunities"]'::jsonb else modifiers end where atom_word = 'opportunity';
update public.atoms set modifiers = case when modifiers is null then '["policies"]'::jsonb when not (modifiers ? 'policies') then modifiers || '["policies"]'::jsonb else modifiers end where atom_word = 'policy';
update public.atoms set modifiers = case when modifiers is null then '["priorities"]'::jsonb when not (modifiers ? 'priorities') then modifiers || '["priorities"]'::jsonb else modifiers end where atom_word = 'priority';
update public.atoms set modifiers = case when modifiers is null then '["properties"]'::jsonb when not (modifiers ? 'properties') then modifiers || '["properties"]'::jsonb else modifiers end where atom_word = 'property';
update public.atoms set modifiers = case when modifiers is null then '["rarities"]'::jsonb when not (modifiers ? 'rarities') then modifiers || '["rarities"]'::jsonb else modifiers end where atom_word = 'rarity';
update public.atoms set modifiers = case when modifiers is null then '["stories"]'::jsonb when not (modifiers ? 'stories') then modifiers || '["stories"]'::jsonb else modifiers end where atom_word = 'story';
update public.atoms set modifiers = case when modifiers is null then '["synchronicities"]'::jsonb when not (modifiers ? 'synchronicities') then modifiers || '["synchronicities"]'::jsonb else modifiers end where atom_word = 'synchronicity';
update public.atoms set modifiers = case when modifiers is null then '["urgencies"]'::jsonb when not (modifiers ? 'urgencies') then modifiers || '["urgencies"]'::jsonb else modifiers end where atom_word = 'urgency';
update public.atoms set modifiers = case when modifiers is null then '["utilities"]'::jsonb when not (modifiers ? 'utilities') then modifiers || '["utilities"]'::jsonb else modifiers end where atom_word = 'utility';

-- MOVEMENT 2 — SETTINGS (set's doubled-consonant chain, per the convention)

update public.atoms set modifiers = case when modifiers is null then '["setting","settings"]'::jsonb when not (modifiers ? 'settings') then modifiers || '["setting","settings"]'::jsonb else modifiers end where atom_word = 'set';

-- MOVEMENT 3 — VERIFY (read-only)

-- (a) any of the 24 singulars NOT standing (expect zero rows — each
-- would mean its merge above no-oped and the word stays honestly open)
select w.word as singular_missing
from (values ('activity'),('boundary'),('capability'),('category'),('ceremony'),
             ('density'),('dependency'),('directory'),('entity'),('entry'),
             ('family'),('frequency'),('intensity'),('memory'),('opportunity'),
             ('policy'),('priority'),('property'),('rarity'),('story'),
             ('synchronicity'),('urgency'),('utility'),('set')) as w(word)
where not exists (select 1 from public.atoms a where a.atom_word = w.word);

-- (b) the merges landed, read back
select atom_word, modifiers from public.atoms
where atom_word in ('activity','category','memory','entry','set','story')
order by atom_word;

-- ============================================================================
-- THE EXPLICIT EXCLUSIONS, standing by KP's acronym ruling (the done-
-- signal's allowance): fm1 · fm2 · fm3 · m1 · m2 · m3 · m4 — radio-band
-- and metric codes, extensions of organisms, never atoms.
--
-- With this run, the atom phase of the library carry is COMPLETE.
-- The next tiers, at KP's ⚛ word in their own seasons: molecules
-- (2,524 missing as coined) · organisms (4,525) — their bonds now have
-- every word they need.
-- ============================================================================
