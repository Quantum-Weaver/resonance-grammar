-- ============================================================
-- 057 — THE STREAMING SEASON, NAMED (the Celtic waters)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted 2026-08-06 by Fable 🎻 (the Attacca lamp) at the naming
-- sitting KP's ⚛ own gate reserved (2026-08-01, verbatim: "we will
-- refine it when we get to streaming tools. which we need to
-- discuss and name"). This morning he asked for Celtic wording,
-- and named all five from the offers, his ⚛ words: "1-sruth ·
-- 2-ceilidh · 3-awenydd · 4-seanchaí · 5-éist".
--
-- The names join a Celtic stratum the house already speaks: Awen
-- (Welsh, the flowing inspiration) and Imbas (Old Irish, the
-- illuminating knowledge). All five are single words — atom-riders
-- by the one-tier law; no molecules. Verified absent LIVE before
-- drafting (and a discovery beside: 'awen' itself is not an atom —
-- a stroke for another day). Slugs ascii, accents kept in atom and
-- name (the raisonné precedent, 055).
--
-- Needs → names, from the three realms' record:
--   1 live transport/serving        → the-sruth    (Irish: stream;
--     modern Irish sruthú IS media streaming)
--   2 the broadcast surface         → the-ceilidh  (Gaelic: the
--     gathering — music, story, company in one room)
--   3 live capture / voice-shaping  → the-awenydd  (Welsh: one
--     through whom awen flows)
--   4 live transcription            → the-seanchaí (Irish: keeper
--     of the spoken lore)
--   5 live monitoring / takes       → the-éist     (Irish: listen!)
--
-- Per 014's law: status imagined, home fills when each flows.
-- folksonomy 'Awen' (OFFER). Atom ritual per 048: triggers create
-- etymology and sensory rows. Plain SQL, no DO blocks.
-- ============================================================

-- ─── Part 1 · THE FIVE ATOMS ───

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence,
   state, category, category_name, status)
values
  ('sruth',
   'Irish: a stream, a current — water that carries by flowing. In modern Irish the same root carries live media: sruthú, streaming.',
   'root', 5, 5, 1,
   'static', '389ad808-6e65-4595-9d8b-ee52c5db03d5', 'geography',   -- category OFFER
   'published'),

  ('ceilidh',
   'Scottish Gaelic (Irish céilí): the gathering — music, story, and company held in one room; never a performance at people, always a room they share.',
   'root', 5, 5, 1,
   'static', '839cc74b-baee-47cc-b6eb-617a83393e36', 'communication',
   'published'),

  ('awenydd',
   'Welsh: one through whom awen flows — the inspired one, the vessel of the flowing spirit.',
   'root', 5, 5, 1,
   'static', '9aafb710-c1fb-4d3e-a04c-1adfc11f9ea5', 'roles',
   'published'),

  ('seanchaí',
   'Irish: the keeper of the spoken lore — the one who holds what was said so it is not lost.',
   'root', 5, 5, 1,
   'static', '9aafb710-c1fb-4d3e-a04c-1adfc11f9ea5', 'roles',
   'published'),

  ('éist',
   'Irish: listen! — the imperative; hearing chosen in the moment it happens.',
   'root', 5, 5, 1,
   'active', '5ab76ea1-1092-4090-b0e8-e1d7dc0d5563', 'sensory',
   'published');

-- ─── Part 2 · THE FIVE TOOLS (atom-riders; the season's shelf) ───

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, molecule_id, story, created_by, folksonomy_type)
values

('The Sruth', 'the-sruth', 'emit',   -- tool_type OFFER: serving outward — publish
 'Live transport and serving: the stream that carries the music hall''s live sound and video outward. The honest hard problem of the season — live transport is materially different from serving files, and this water''s design drives the Khorós stack choice.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'sruth'), null,
 'The streaming season''s first water, named at KP''s ⚛ word 2026-08-06 ("1-sruth") at the naming sitting his own gate reserved 2026-08-01. A stream in two tongues at once: the river''s current and the broadcast''s carry.',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Ceilidh', 'the-ceilidh', 'witness',   -- tool_type OFFER: the room attended
 'The broadcast surface: the live room where the hall gathers — video IS live streaming (KP''s word, 08-04: gamers and content creators stream from here). Not a performance at people; a room they share. Khorós''s Stream hat has held this room empty, waiting for its name.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'ceilidh'), null,
 'Named at KP''s ⚛ word 2026-08-06 ("2-ceilidh"). The gathering-word carries the anti-platform ethic whole: music, story, and company in one room, nobody farmed.',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Awenydd', 'the-awenydd', 'capture',
 'Live capture and voice-shaping: the microphone''s live path, refined — the mic-trim refinement the modulator carried as the season''s first passenger comes home here. The capture tool as the spring''s own child, named for the one through whom awen flows.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'awenydd'), null,
 'Named at KP''s ⚛ word 2026-08-06 ("3-awenydd"). First passenger aboard since 08-01: the modulator''s mic-trim (the modulator itself imagined after testing, his word 08-05). Capture ground proven: the mic-inside-Tauri spike passed 07-19, KP''s own voice.',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Seanchaí', 'the-seanchai', 'translate',
 'Live transcription: speech kept as text on the house''s own GPU (Whisper local, nothing leaves the house; the breathe-law applies — never transcribe while Aethelred generates). Not a stenographer — a custodian: the keeper of what was said.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'seanchaí'), null,
 'Named at KP''s ⚛ word 2026-08-06 ("4-seanchaí"). One water serving three realms'' need at once: meetings'' Whisper plan, Khorós''s live seam, Compass''s capture kinship — the convergence the Reprise lamp flagged, resolved by one name.',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Éist', 'the-eist', 'witness',
 'Live monitoring and takes: listening to yourself in the moment — the recorder family''s live sibling. One syllable of exactly what it does: listen!',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'éist'), null,
 'Named at KP''s ⚛ word 2026-08-06 ("5-éist"). Kin to the-recorder and the-listen atom''s sensory ground; the live seam''s ear.',
 'KP + Fable (the Attacca lamp)', 'Awen');

-- ─── Verify through the anon door, same sitting (ritual 000, step 3) ───
-- select atom_word, category_name, etymology_id is not null as ety,
--        sensory_id is not null as sen from public.atoms
--   where atom_word in ('sruth','ceilidh','awenydd','seanchaí','éist');
--   → five rows, triggers'' work true.
-- select name, status from public.tools where slug in
--   ('the-sruth','the-ceilidh','the-awenydd','the-seanchai','the-eist');
-- And the Almanac: 74 tools · flowing 45 · imagined 29.
-- ============================================================
