-- 061 — THE CUMDACH: the atom and the tool
-- 2026-08-06 midday, drafted by Fable 🎻 (the Aubade lamp) at KP's ⚛
-- words, verbatim: "if not Cumdach will be birthed but we discuss
-- first, as ideas exist" (the naming and the discussion law) · "have
-- we seeded the obviously needed atoms row, i know that word did not
-- exist, and tools row?" (the registry stroke, this sitting). Irish
-- joins the naming strata — the cumdach is the book-shrine, the
-- ornamented case made for a book already sacred.
--
-- LIVE-PROBED before drafting (BASE-ACCESS-GUIDE lesson 8), anon door:
--   atoms.cumdach → [] absent · tools.the-cumdach → [] absent ·
--   category chosen from the living set: infrastructure
--   (84af045b-c682-416d-b290-0fcd5ceaecd0 — the tether's own; the
--   shrine is structural: the constant shell around changing menus).
--   One-word name → atom tier; molecule none (tools_one_tier).
--
-- The design was KP's ⚛ own pour, engraved on the tool's README: the
-- formula (doors counted · land measured · panels derived, the switch
-- paying for its own furniture) · THE BALANCE LAW · THE FACE LAW
-- (color + emoji, NOT numbers — his correction kept) · dynamics
-- always re-derive · the foot one door optionally expandable. 18/18
-- printing proofs TRUE on Compass's own menu, tsc strict first run.
-- Status FLOWING at seeding by his standing ruling (working =
-- flowing), the epagoge's precedent this same sitting; home filled at
-- flow; one word of his reverts if the reading erred.

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence,
   state, category, category_name, status)
values
  ('cumdach',
   'The Irish book-shrine — the ornamented case made for a book already sacred; it honors the text and never speaks over it. In the Sanctuary: the shell that wraps a living thing without ever being the thing.',
   'root', 5, 5, 1,
   'static', '84af045b-c682-416d-b290-0fcd5ceaecd0', 'infrastructure',
   'published');

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, molecule_id, story, created_by, folksonomy_type)
values
('The Cumdach', 'the-cumdach', 'arrange',   -- tool_type OFFER: the shrine ARRANGES doors into panels by arithmetic; KP's ⚛ stroke corrects if it errs
 'The navigation shell that wraps every Resonance app, with arithmetic as its heart: doors counted, the land measured, panels DERIVED — the switch paying for its own furniture, panels balanced always (never fill-then-spill, never one lonely button), toggles faced in color + emoji (never numbers, never words; accessible names underneath), reserved edges honored as inputs, dynamics always re-derived, everything told. Menus change; layout styles do not. Five consumers waiting: compass · echoes · hearth · lantern · AudHDities.',
 'resonance-awen/tools/the-cumdach', 'flowing',
 (select id from public.atoms where atom_word = 'cumdach'), null,
 'Named CUMDACH by KP''s ⚛ own hand 2026-08-06 and designed in the open by his pour ("menus change but not layout styles" · "what it is missing is math" · the balance law · faces color + emoji not numbers · "rotation always account for dynamics" · the foot "one door, optionally expandable"). The canon body: Compass''s Sidebar as the Canon lamp refined it ("its recent refinements make it cannon"). Built by the Aubade lamp the same sitting; 18/18 TRUE on Compass''s own menu — desktop four panels, phone five with Listen continued 4+3, flagged.',
 'KP + Fable (the Aubade lamp; the canon body the Canon lamp''s)', 'Awen');

-- Verify through the anon door, same sitting (ritual 000, step 3):
-- select atom_word, category_name, status from public.atoms where atom_word = 'cumdach';
-- select slug, status, home, tool_type from public.tools where slug = 'the-cumdach';
