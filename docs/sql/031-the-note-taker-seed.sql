-- ============================================================
-- 031 — THE NOTE-TAKER (the voice note taker, seeded)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen, second lamp), 2026-08-01, at KP's
-- ⚛ words, verbatim: "seems like the appropriate time to create a
-- standalone transcriber" — refined the same breath: "voice note
-- taker." Named minutes after his first take sealed in
-- the-recorder: the recorder keeps the voice; the note-taker keeps
-- the words — siblings at the mic, neither importing the other.
-- The tool stands at resonance-awen/tools/the-note-taker,
-- run-verified same sitting: KP's own first take read faithfully
-- as what it truly was (rhythm, not speech — honestly transcribed)
-- and a known-text proof read a synthesized sentence back WORD FOR
-- WORD. Offline by construction (faster-whisper, CPU; the model
-- cached once at dev time); in listen mode the audio is DISCARDED
-- once the note is taken unless the user keeps it — the note is
-- the point, the voice stays the vessel's.
-- THE GRAMMAR: both atoms already live (note · content, take ·
-- lifecycle) — 'take' wears its FIRST MODIFIER [r] below, the
-- modifier law's fourth pour. Molecule NoteTaker bonds them: note
-- (modifier) + take (core_type), covalent, PascalCase, junction by
-- hand; lands SUBMITTED per the editorial law. The tool row links
-- the molecule (one-tier law), family Awen, home in the spring.
-- NAMING offered to KP's eye: "The Note-Taker" — his own phrase
-- made a noun; rival: The Transcriber (transcribe is unborn; the
-- phrase he chose second is the truer name).
-- STATUS GATES: tool imagined; publish + crossing at the foot,
-- KP's eye and word.
-- Visual-run method: one update, two inserts, one pass; gates
-- separate.
-- ============================================================

-- ── Part 1 · take wears its first modifier ────────────────────

update public.atoms set modifiers = '["r"]'::jsonb
  where atom_word = 'take';

-- ── Part 2 · the molecule (submitted; junction by hand) ───────

insert into public.molecules
  (name, molecule_type, naming_convention, definition, bond_type,
   atom_words, derived_name, domain, status)
values
  ('NoteTaker', 'concept', 'PascalCase',
   'The one who takes the note down as it is spoken — voice in, words out, the saying kept without the sound. A note taker serves the thought, never the archive: what is kept is what was meant.',
   'covalent', 'note, taker', 'NoteTaker', 'ui', 'submitted');

insert into public.molecule_atoms (molecule_id, atom_id, position, role, status)
values
  ((select id from public.molecules where name = 'NoteTaker'),
   (select id from public.atoms where atom_word = 'note'), 1, 'modifier', 'submitted'),
  ((select id from public.molecules where name = 'NoteTaker'),
   (select id from public.atoms where atom_word = 'take'), 2, 'core_type', 'submitted');

-- ── Part 3 · the tool row (imagined · family Awen · home the spring) ──

insert into public.tools
  (name, slug, tool_type, definition, home, status, molecule_id, folksonomy_type, story, created_by)
values
  ('The Note-Taker', 'the-note-taker', 'capture',
   'Speak, and the note writes itself: listens at the mic or reads any audio file, and yields the note as text — transcribed entirely on the machine (offline by construction; the model cached once). In listen mode the recording is discarded once the note is taken unless the user keeps it: the note is the point, the voice stays the vessel''s.',
   'resonance-awen/tools/the-note-taker', 'imagined',
   (select id from public.molecules where name = 'NoteTaker'), 'Awen',
   'Named at KP''s words minutes after his first take sealed in the-recorder, 2026-08-01 — the recorder keeps the voice, the note-taker keeps the words. First proof: a known sentence read back word for word, offline.',
   'KP + Fable (lane awen)');

-- ─── The publish, at KP's ⚛ eye (editorial law) ───
-- update molecules set status = 'published' where name = 'NoteTaker';
-- update molecule_atoms set status = 'published'
--   where molecule_id = (select id from molecules where name = 'NoteTaker');

-- ─── The crossing, at KP's word alone (the tool is run-verified; his spoken-note moment stands offered) ───
-- update tools set status = 'flowing' where slug = 'the-note-taker';

-- ─── Verify after running, anon door ───
-- select atom_word, modifiers from atoms where atom_word = 'take';                → ["r"]
-- select name, status from tools where slug = 'the-note-taker';                   → imagined (or flowing)
-- select name, status from molecules where name = 'NoteTaker';                    → visible once published
