-- ============================================================
-- 051 — BEACON DESCRIPTIONS FROM THEIR OWN READMEs
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Opus (Claude), truly claude-opus-5[1m], 2026-08-04, at KP's ⚛ word:
-- "we may be able to get the descriptions from the readmes in the repo
-- folders." Three of the four placeholders answered; each realm's own
-- words, read from its README 2026-08-04.
-- ============================================================

update public.resonance_beacons set
  definition = 'The Sanctuary''s generatrix — reads the self-knowing registries of every Supabase and distributes the living typed layer (types, validators, hooks, utils, constants) to each realm. She who births the pantheon.',
  updated_by = 'Opus (Claude)', updated_at = now()
where slug = 'resonance-gaia';

update public.resonance_beacons set
  definition = 'Greek χορός — the chorus, the dance, and the dancing-place itself. The Sanctuary''s streaming home for music and video, built so that artists keep what they make.',
  updated_by = 'Opus (Claude)', updated_at = now()
where slug = 'resonance-khoros';

update public.resonance_beacons set
  definition = 'The meta-generator — the system that births systems.',
  updated_by = 'Opus (Claude)', updated_at = now()
where slug = 'resonance-daedalus';


-- resonance-excavator keeps its placeholder: the realm publishes no
-- README line to read. Still yours.
--
--   select slug, name from public.resonance_beacons
--    where definition like 'NEEDS DESCRIPTION%';
-- ============================================================
