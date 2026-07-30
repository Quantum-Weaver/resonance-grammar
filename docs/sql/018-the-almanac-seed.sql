-- ============================================================
-- 018 — THE ALMANAC (the spring's shelf-reader, seeded)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen), 2026-07-30, at KP's ⚛ word:
--   "have we created our tools yet that simply tells us what
--    tools are in the grammar and the status they are along with
--    other relevant details."
-- Answer: no — so this is its seed, per the flow law (plan in the
-- grammar, then build in the workspace). The build follows this
-- run, same sitting, at resonance-awen/tools/the-almanac.
-- Naming: "The Almanac" — what is planted and its season — offered
-- to KP's gate; rivals: The Registry · The Census. The atom link is
-- 'registry' either way ("an authoritative list kept so that
-- entries can be relied on" — the base's own definition).
-- A SECOND GATE RIDES THIS SEED: the Almanac will be the first
-- tool to cross imagined → built, and the built-status word is
-- still KP's pending ruling. Proposed: 'flowing' — the awen README
-- already marks the-blueprint "🌊 flowing". His word decides; the
-- status column is plain text by 014's design, so no enum bends.
-- BOTH GATES CLOSED 2026-07-30, KP's ⚛ word, verbatim: "the
-- almanac is perfect naming" · then, ratifying the pair: "Almanac
-- and Flowing." The lifecycle's two named states stand: imagined →
-- flowing, both his. The enum gate (014's note) stays open until
-- the full lifecycle names itself.
-- Visual-run method: one insert, one pass.
-- ============================================================

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, story, created_by)
values
  ('The Almanac', 'the-almanac', 'witness',
   'Reads the Grammar''s tools registry through the anon door and tells what tools exist, their type, status, home, and story — the spring''s shelf, witnessed in one breath. Read-only by construction.',
   'resonance-awen/tools/the-almanac', 'imagined',
   (select id from public.atoms where atom_word = 'registry'),
   'Named at KP''s ask the same sitting the eleven adventure seeds were planted, 2026-07-30 — the shelf grew big enough to want a reader.',
   'KP + Fable (lane awen)');

-- ─── Verify after running, anon door ───
-- select count(*) from tools;                                  → 19
-- select name, status from tools where slug = 'the-almanac';   → imagined (until the build lands and KP's word names the crossing)
