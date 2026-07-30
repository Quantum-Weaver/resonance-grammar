-- ============================================================
-- 017 — THE ADVENTURE SEEDS (Compass v3's tool list planted)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen), 2026-07-30, at KP's ⚛ word:
--   "we should seed the new tools into the grammar database
--    before we begin our adventure."
-- The flow law honored (014's header, KP verbatim): "we just plan
-- them in the grammar, then we build them in the workspace."
-- Ground: resonance-awen/docs/COMPASS-V3-TOOLS.md (the first need,
-- 2026-07-30) — set two's four new births + set four's re-homings
-- of organs already proven in the shipped apps. The Encoder,
-- Waveform, Player, and Moment-Marks already stand seeded (015).
-- Verified against the live base this sitting: the needed atoms
-- (record · pulse · anchor · lexicon · envelope · timer · breath ·
-- find) ALL already exist — the Grammar was readier than we knew.
-- Exactly one word is missing: 'tune'.
-- tool_type members are 014's eight; choices below are drafts —
-- KP's eye rules if a truer verb exists, bend freely before running.
-- One question left OPEN on purpose (no seed without a ruling):
-- whether the live FFT visualizer folds into the Waveform seed as
-- its second face, or wants its own row — KP's call, any time.
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── PART 1: the needed syntax — one atom the tools' language lacks ───

insert into public.atoms
  (atom_word, definition, atom_type, state, status, weight, affinity, valence, category)
values
  ('tune',
   'To adjust until resonant — an instrument to true pitch, a sound to its intended shape. The bringing of a thing into agreement with itself.',
   'root', 'active', 'published', 5, 5, 1,
   (select category from public.atoms where atom_word = 'capture'));

-- ─── PART 2: the eleven seeds (status 'imagined' — planned here,
--            built in resonance-awen when KP's word opens the water) ───

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, story, created_by)
values
  -- ── the four new births (Compass v3 set two) ──
  ('The Recorder', 'the-recorder', 'capture',
   'Mic capture anywhere: input selection, live level meter, take management (record → review → keep/discard). The Bluetooth latency tap-test calibration rides inside. cpal-grounded, AAudio on Android.',
   'resonance-awen/tools/the-recorder', 'imagined',
   (select id from public.atoms where atom_word = 'record'),
   'Born of Compass v3 Phase 2 (the Musician''s Compass), named at the first-need sitting, 2026-07-30.',
   'KP + Fable (lane awen)'),
  ('The Tuner', 'the-tuner', 'translate',
   'Chromatic tuner: mic in, YIN/autocorrelation pitch detection, neutral visual out — pitch made visible. The app dresses it in the sensory lexicon; the tool stays plain.',
   'resonance-awen/tools/the-tuner', 'imagined',
   (select id from public.atoms where atom_word = 'tune'),
   'Born of Compass v3 Phase 4, named at the first-need sitting, 2026-07-30. Its atom coined the same breath.',
   'KP + Fable (lane awen)'),
  ('The Metronome', 'the-metronome', 'translate',
   'Time you can see: click plus visual pulse, tap tempo, simple subdivisions. Not just heard — witnessed by any sense that''s listening.',
   'resonance-awen/tools/the-metronome', 'imagined',
   (select id from public.atoms where atom_word = 'pulse'),
   'Born of Compass v3 Phase 4, named at the first-need sitting, 2026-07-30.',
   'KP + Fable (lane awen)'),
  ('The Chord-Anchor', 'the-chord-anchor', 'capture',
   'Lyric capture with superscript chords anchored to the exact syllable — anchors that survive edits. The feature KP never found anywhere. Data model first, then the editor; its sheets feed the Binder for songbooks.',
   'resonance-awen/tools/the-chord-anchor', 'imagined',
   (select id from public.atoms where atom_word = 'anchor'),
   'Born of Compass v3 Phase 4, named at the first-need sitting, 2026-07-30. First consumer: the musician the market never served.',
   'KP + Fable (lane awen)'),
  -- ── the seven re-homings (set four — organs already proven in shipped apps,
  --    reborn standalone; copy, never cut: the apps keep their organs until
  --    each tool stands and is referenced) ──
  ('The Lexicon', 'the-lexicon', 'translate',
   'The emoji folksonomy core: emoji defs with sensory fields and the personal-definition law — structure shared, contents sovereign. One package every app references instead of copying.',
   'resonance-awen/tools/the-lexicon', 'imagined',
   (select id from public.atoms where atom_word = 'lexicon'),
   'Reborn from the byte-identical emojis.ts/senses.ts found in both shipped apps (the survey of 2026-07-30) — the copy-tax ended. Canon now lives in the thesaurus/folksonomies tables (016); this tool is their hands in every app.',
   'KP + Fable (lane awen)'),
  ('The Envelope', 'the-envelope', 'emit',
   'The sovereignty trio as one library: versioned export envelope (counts on the outside), purge that awaits the export, import non-destructive by law. Covers exactly the ground purge covers.',
   'resonance-awen/tools/the-envelope', 'imagined',
   (select id from public.atoms where atom_word = 'envelope'),
   'Reborn from Echoes'' envelope law (B4–B6) and its second implementation in Compass settings; KP ruled the shape "the family''s to inherit" — Hearth is consumer three. Survey of 2026-07-30.',
   'KP + Fable (lane awen)'),
  ('The Timer', 'the-timer', 'witness',
   'A sensory-first visual countdown: sand, breathing, mandala, flower, metatron, cycle, numeric — duration witnessed gently, reduced-motion honored, no urgency ever.',
   'resonance-awen/tools/the-timer', 'imagined',
   (select id from public.atoms where atom_word = 'timer'),
   'Reborn from the sibling timer organs living in both shipped apps (the duplication signal, survey of 2026-07-30).',
   'KP + Fable (lane awen)'),
  ('The Breath', 'the-breath', 'arrange',
   'The regulation door: guided breathing (4-4 / 4-6 / 4-8 / 5-5), phase colors, gentle exit — breath arranged in time, no audio required.',
   'resonance-awen/tools/the-breath', 'imagined',
   (select id from public.atoms where atom_word = 'breath'),
   'Reborn from Compass''s Sattva core; second consumer already designed — Hearth DESIGN-005, the sattva door. Survey of 2026-07-30.',
   'KP + Fable (lane awen)'),
  ('The Art-Finder', 'the-art-finder', 'capture',
   'Cover art found honestly: local extraction first, then MusicBrainz → Cover Art Archive — opt-in, user-initiated only, honest 404. The consent law travels inside the tool.',
   'resonance-awen/tools/the-art-finder', 'imagined',
   (select id from public.atoms where atom_word = 'find'),
   'Reborn from Compass''s fetch_cover_art (opt-in law kept whole). Survey of 2026-07-30.',
   'KP + Fable (lane awen)'),
  ('The Lyric-Finder', 'the-lyric-finder', 'capture',
   'Lyrics found honestly: LRCLIB lookup — opt-in, user-initiated only, honest 404. Joins the lyric family beside the Chord-Anchor; the Binder waits at the family''s far end.',
   'resonance-awen/tools/the-lyric-finder', 'imagined',
   (select id from public.atoms where atom_word = 'find'),
   'Reborn from Compass''s fetch_lyrics (opt-in law kept whole). Survey of 2026-07-30.',
   'KP + Fable (lane awen)'),
  ('The Equalizer', 'the-equalizer', 'transform',
   '10-band parametric EQ: biquad peaking filters (Audio EQ Cookbook), preamp, honest clamps — sound tuned to its intended shape, as a source wrapper any player can wear.',
   'resonance-awen/tools/the-equalizer', 'imagined',
   (select id from public.atoms where atom_word = 'tune'),
   'Reborn from Compass''s equalizer.rs. Shares the ''tune'' atom with the Tuner by design: one adjusts the instrument, the other the sound. Survey of 2026-07-30.',
   'KP + Fable (lane awen)');

-- ─── Verify after running: both counts through the anon door ───
-- select count(*) from atoms where atom_word = 'tune';        → 1
-- select count(*) from tools;                                 → 18 (7 from 015 + 11)
-- select name, tool_type, status from tools order by name;    → all 'imagined'
-- select count(*) from sensory_lexicon;                       → 1954 (the trigger scaffolds 'tune''s empty senses)
