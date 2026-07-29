-- ============================================================
-- 015 — THE FIRST SEEDS (new syntax + the first planned tools)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane A), 2026-07-28, at KP's law, verbatim:
--   "we are not limited to the grammar that exists, we will add
--    needed syntax to the knowledge system" — and the flow law:
--   "we just plan them in the grammar, then we build them in the
--    workspace."
-- Part 1 grows the Grammar (4 new atoms); Part 2 plants 7 tool
-- seeds, each linked to the atom that IS its concept.
-- Enum values copied from lawful published atoms (capture/scene);
-- categories are subselected from sibling atoms — KP's eye rules
-- if a truer category exists. If the tool_type enum was bent
-- before running 014, bend the values in Part 2 to match.
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── PART 1: the needed syntax — four atoms the tools' language lacks ───

insert into public.atoms
  (atom_word, definition, atom_type, state, status, weight, affinity, valence, category)
values
  ('arrange',
   'To place elements in deliberate relation — in time (a sequence), in space (a composition). The conductor''s verb.',
   'root', 'active', 'published', 5, 5, 1,
   (select category from public.atoms where atom_word = 'capture')),
  ('emit',
   'To send outward in a chosen form — render, encode, export, publish. The gateway''s verb: how a creation leaves the studio.',
   'root', 'active', 'published', 5, 5, 1,
   (select category from public.atoms where atom_word = 'capture')),
  ('bind',
   'To join parts into one keepable whole — pages into a book, tracks into an album. Combination that produces an object.',
   'root', 'active', 'published', 5, 5, 1,
   (select category from public.atoms where atom_word = 'capture')),
  ('moment',
   'A point in lived time small enough to hold — the unit a reaction pins to, the place a memory anchors.',
   'root', 'static', 'published', 5, 5, 1,
   (select category from public.atoms where atom_word = 'scene'));

-- ─── PART 2: the seven tool seeds (status 'imagined' — planned in
--            the grammar, built in the workspace when need calls) ───

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, story, created_by)
values
  ('The Player', 'the-player', 'witness',
   'Standalone, embeddable audio/video player — works on any page anywhere, needs nothing. The listening hearth''s first door and the gift test in its purest form.',
   'resonance-awen/tools/the-player', 'imagined',
   (select id from public.atoms where atom_word = 'play'),
   'Born of the Audio concept (the soundcloud-type experience thought of during the Compass build), 2026-07-28.',
   'KP + Fable (lane A)'),
  ('The Waveform', 'the-waveform', 'translate',
   'Renders sound as sight — waveform view with scrubbing. Sound made visible is translation across senses (P-10''s floor).',
   'resonance-awen/tools/the-waveform', 'imagined',
   (select id from public.atoms where atom_word = 'wave'),
   'Born of the Audio concept, 2026-07-28.',
   'KP + Fable (lane A)'),
  ('The Conductor', 'the-conductor', 'arrange',
   'The animation timeline: sequences COSMIC motion tokens and camera moves over scenes. The orchestra (motion.ts, positioning.ts) already exists — this is its baton.',
   'resonance-awen/tools/the-conductor', 'imagined',
   (select id from public.atoms where atom_word = 'arrange'),
   'Born of the Animation concept — "the cosmic system was designed to make that easy" (KP, 2026-07-28), and it was.',
   'KP + Fable (lane A)'),
  ('The Scene-Loader', 'the-scene-loader', 'translate',
   'Reads a skapa board and raises it as an addressable stage — objects, positions, layers. A board IS a storyboard frame; this makes it one literally.',
   'resonance-awen/tools/the-scene-loader', 'imagined',
   (select id from public.atoms where atom_word = 'scene'),
   'Born of the Animation concept, 2026-07-28.',
   'KP + Fable (lane A)'),
  ('The Moment-Marks', 'the-moment-marks', 'capture',
   'Reactions pinned to moments in sound or video — emoji-first, each with the listener''s own private definition beside it (the Echoes law on a timeline). Structure shared, contents sovereign.',
   'resonance-awen/tools/the-moment-marks', 'imagined',
   (select id from public.atoms where atom_word = 'moment'),
   'Born of the Audio concept — the house''s answer to timed comments, built from its own lexicon law, 2026-07-28.',
   'KP + Fable (lane A)'),
  ('The Binder', 'the-binder', 'combine',
   'Manuscript to book: markdown in, epub/print-ready out. Ancestor: book-group saga_template.py. First consumer already titled and waiting since 2014.',
   'resonance-awen/tools/the-binder', 'imagined',
   (select id from public.atoms where atom_word = 'bind'),
   'Born of the Writing/Gift concepts and P-12, THE PUBLISHING SHELF, 2026-07-28.',
   'KP + Fable (lane A)'),
  ('The Encoder', 'the-encoder', 'emit',
   'Format in, formats out — the shared exit door every studio''s work leaves through. Plumbing, honest and dumb.',
   'resonance-awen/tools/the-encoder', 'imagined',
   (select id from public.atoms where atom_word = 'emit'),
   'Born of the Gateway concept, 2026-07-28.',
   'KP + Fable (lane A)');

-- ─── Verify after running: both counts through the anon door ───
-- select count(*) from atoms where atom_word in ('arrange','emit','bind','moment');  → 4
-- select name, tool_type, status from tools order by name;                           → 7 rows, all 'imagined'
