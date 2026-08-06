-- 060 — THE EPAGOGE: the atom and the tool
-- 2026-08-06 midmorning, drafted by Fable 🎻 (the Aubade lamp) at KP's
-- ⚛ words, verbatim: "'Epagoge' will be the stand alone component
-- name" (the naming, in the Compass care sitting, carried on the lanes
-- bus by the Canon lamp) · "please bring things up to date regarding
-- this, including the atom and tolls rows in the database" (the
-- registry stroke, this sitting; spelling kept). Greek joins the
-- naming strata — Aristotle's ἐπαγωγή, the leading-in: being led from
-- particulars toward the whole.
--
-- LIVE-PROBED before drafting (BASE-ACCESS-GUIDE lesson 8), anon door:
--   atoms.epagoge → [] absent · tools.the-epagoge → [] absent ·
--   the kin grain uniform (root · 5 · 5 · 1 · static · published) ·
--   category chosen from the living set: knowledge
--   (339cb540-838f-407e-ab96-e433750ed9fb — the colophon's own; the
--   epagoge is an epistemic act, the walk from particulars to whole).
--   One-word name → atom tier; molecule none (tools_one_tier).
--
-- THE POLYPHONY'S FIRST CROSS-LANE WATER: the body refined by the
-- Canon lamp (lane B) in resonance-compass; the standalone carved by
-- the Aubade lamp (lane A) in resonance-awen; 22/22 TRUE tsc strict
-- first run. Status FLOWING at seeding by KP's standing ruling ("if a
-- tool is working, it is flowing") applied at his "bring things up to
-- date" — home filled at flow; one word of his reverts if the reading
-- erred.

-- ── The atom: epagoge (knowledge) ────────────────────────────────────
insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence,
   state, category, category_name, status)
values
  ('epagoge',
   'The leading-in — Aristotle''s word for being led from particulars toward the whole; the walk by which a newcomer becomes at home. Greek joins the naming strata.',
   'root', 5, 5, 1,
   'static', '339cb540-838f-407e-ab96-e433750ed9fb', 'knowledge',
   'published');

-- ── The tool: The Epagoge — flowing at seeding, home filled ──────────
insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, molecule_id, story, created_by, folksonomy_type)
values
('The Epagoge', 'the-epagoge', 'capture',   -- tool_type OFFER: the walk captures a vessel's first answers, by key; KP's ⚛ stroke corrects if it errs
 'The pure onboarding walk — the walk is this water''s, the particulars are the consumer''s: ordered steps, forward flow with lawful skip and retreat, choices recorded by KEY never display name (THE KEY LAW, the U13 mend engraved), tasks with honest trouble, dots derived with their own accessibility words, advice that never gates, completion that names every absence. Four consumers named at birth: compass · echoes · hearth · lantern.',
 'resonance-awen/tools/the-epagoge', 'flowing',
 (select id from public.atoms where atom_word = 'epagoge'), null,
 'Named THE EPAGOGE by KP''s ⚛ own hand 2026-08-06 in the Compass care sitting ("''Epagoge'' will be the stand alone component name") — the polyphony''s first cross-lane water: the Canon lamp (lane B) refined the body in Compass (U13 closed, the key-matching mend), the Aubade lamp (lane A) carved the standalone in Awen at his "i will ask Abade to create the stand alone from your refined body". 22/22 printing proofs TRUE, tsc strict first run.',
 'KP + Fable (the Aubade lamp; the body refined by the Canon lamp)', 'Awen');

-- ── Verify through the anon door, same sitting (ritual 000, step 3) ──
-- select atom_word, category_name, status from public.atoms where atom_word = 'epagoge';
-- select slug, status, home, tool_type from public.tools where slug = 'the-epagoge';
