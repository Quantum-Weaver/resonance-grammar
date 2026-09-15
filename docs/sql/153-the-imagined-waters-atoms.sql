-- 153 — the imagined waters, their atoms
--
-- THE ORDER THIS FILE KEEPS: atom seed BEFORE awen row, and as its own
-- numbered file, in 077-the-promenade-atom.sql's exact shape, most recently
-- read in 151 (the-patakatha) and, for more than one atom in one file, in
-- 107 (the-clavis and the-lok). The awen rows stand as 154 through 160 and
-- run after this one.
--
-- TWELVE ATOM WORDS, each the name of one water described 2026-09-14 and
-- seeded imagined 2026-09-15. Each name is ONE WORD, so each awen row crosses
-- at the ATOM tier alone (tools_one_tier, seed 014): atom_id set, molecule_id
-- and organism_id null. No molecule row is made here and no organism above it.
--
-- SOURCE ROW PER WORD. Each definition below carries that row's sense and
-- nothing outside it:
--   retarget · viseme · idle
--     resonance-theophany/docs/THE-THEOPHANY-PLAN.md, Part One, W2 · W4 · W6
--   reel · grade
--     resonance-ardan/docs/THE-ARDAN-WATERS.md, W4 · W6
--   repair · loudness · broadcaster
--     resonance-sistrum/docs/THE-SISTRUM-WATERS.md, W1 · W3 · W8
--   grove · signaling · routing
--     resonance-nemeton/docs/THE-NEMETON-WATERS.md, W1 · W6 · W7
--   closure
--     resonance-grammar/docs/THE-GRAMMAR-WATERS.md, W3
--
-- ── ATOM UUIDS, generated uuid4 and pinned here so 154 through 160 name the
--    same rows without depending on insert order or a subquery ──
--   retarget atom      bd4706e4-4bf5-4ca6-807b-9bfe42123b5a
--   viseme atom        82393790-b71d-428e-b491-69fda4e6b696
--   idle atom          539c8377-b2a9-42a5-93ed-75a46a431900
--   reel atom          11523ce0-e703-4993-bcc8-d31663f60f6f
--   grade atom         008744d7-cb67-48a6-8a82-b15b100baa97
--   repair atom        fddc9af1-ef5a-4977-99dc-6421f5443846
--   loudness atom      d93ba293-b603-4710-bc7b-bd19e9277bce
--   broadcaster atom   4966c8e5-e859-4cd9-8289-2341fa92342f
--   grove atom         581dd541-22c4-40b7-8944-7fe3e9fcabeb
--   signaling atom     335290d5-fab1-4395-8045-2640c455610e
--   routing atom       f843ca72-de2e-47a8-ae50-2696c7dd8946
--   closure atom       8c1cb412-dcdf-473b-8cb5-e9378e707a07
--
-- ── CATEGORY PER WORD, each from the categories table, with the runner-up
--    named. A category is what the THING is, never what it is used for
--    (076's correction, honoured) ──
--   retarget     sensory         a mapping of seen motion onto a body's own
--                                motion words. Runner-up: system — the tables
--                                are machinery, but what crosses is perception.
--   viseme       sensory         a mouth shape read by the eye. Runner-up:
--                                communication — speech made visible, but the
--                                thing itself is a shape, not a message.
--   idle         status          a state a body is in while nothing is asked
--                                of it. Runner-up: lifecycle — it is life
--                                continuing, but the word names the state.
--   reel         collections     many shots gathered into one run, in order.
--                                Runner-up: content — a reel holds the film,
--                                but what it is is the gathering.
--   grade        sensory         a look, which is colour, which is sight.
--                                Runner-up: measurement — the resolved channel
--                                figures are measures of a named look.
--   repair       lifecycle       restoration, the category's own word.
--                                Runner-up: creation — new channels come back,
--                                but nothing new is made.
--   loudness     measurement     a figure that can be compared. Runner-up:
--                                sensory — it is sound, measured.
--   broadcaster  communication   the sending half of a stream's machinery, and
--                                relay stands here too. Runner-up: roles — the
--                                one who sends, the half opposite an ingest.
--   grove        vessel          the rooms a gathering lives in. Runner-up:
--                                geography — a place, but a place minds sit in.
--   signaling    communication   offers, answers and candidates between two
--                                parties. Runner-up: system — a protocol, but
--                                what crosses it is meaning.
--   routing      infrastructure  the hub and the table every stream stands on.
--                                Runner-up: communication — it settles what
--                                reaches whom without being a message itself.
--   closure      status          closed or open, the state of a set of
--                                documents. Runner-up: knowledge — the answer
--                                is a method's finding, the word is the state.
--
-- MODIFIERS: `viseme` is born carrying `"s"`, so the-visemes rides it. The
-- standing atoms `chapter`, `insert` and `case` receive `"s"` in the guarded
-- append below, which adds nothing twice on a re-run. `part` and `cut` carry
-- it already (055) and are not touched here. A plural name rides its singular
-- atom and the plural is the modifiers' work (the-scrolls precedent, 055).
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/107/151
-- precedent).
--
-- THE TABLE IS public.awen (renamed from public.tools 2026-08-15, seed 096;
-- shim view dropped 097). This file only touches public.atoms.
--
-- Run at KP's ⚛ hand, before 154 through 160. Verify at the anon door after.
-- NEVER RUN BY A HAND: the seed is drafted and numbered; the crossing is theirs.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  'bd4706e4-4bf5-4ca6-807b-9bfe42123b5a',
  'retarget',
  'Retarget: the carrying of one body''s motion onto another body''s own vocabulary of motion. A reading is taken first, and a reading is a small model-free vocabulary of what a camera saw — head yaw, pitch and roll, jaw open, each eye''s openness, brow raise, mouth width, gaze across two axes, each hand''s openness and a few named hand shapes, every figure a scalar from zero to one or a degree. The retarget maps that reading onto a rig''s tokens: a yaw becomes a turn to the left or to the right, a jaw becomes one of the four mouth shapes, an eye becomes open or closed, a brow becomes a raise, a hand becomes one of its poses. Thresholds, dead zones and which part answers which scalar are laws as data, never numbers buried in code. Nothing of the camera itself enters the word. A reading in, tokens per part out.',
  'root', 5, 5, 1, 'static',
  '5ab76ea1-1092-4090-b0e8-e1d7dc0d5563',  -- sensory: "The channels of perception - sight, sound, touch, motion."
  'sensory',
  'published',
  'RETARGET', 'retarget', 'Retarget'
);

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case,
  modifiers
) values (
  '82393790-b71d-428e-b491-69fda4e6b696',
  'viseme',
  'Viseme: the mouth shape a sound is seen as — speech read by the eye rather than heard by the ear. One key naming a position of the lips and the jaw, drawn from band energies and loudness rather than from words or phonemes, so a face reads as speaking without anything being transcribed. The set is small and closed: the four stretch shapes a rig''s mouth already wears, and the few more a face needs to read as speech — the lips together, the round, the wide. The loudness road stands as the fallback, so a viseme can be had wherever only a level is known. A viseme carries no number of motion, only the key, and the degrees it means live in the rig''s own table. Band energies and loudness in, one viseme key out.',
  'root', 5, 5, 1, 'static',
  '5ab76ea1-1092-4090-b0e8-e1d7dc0d5563',  -- sensory: "The channels of perception - sight, sound, touch, motion."
  'sensory',
  'published',
  'VISEME', 'viseme', 'Viseme',
  '["s"]'::jsonb
);

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '539c8377-b2a9-42a5-93ed-75a46a431900',
  'idle',
  'Idle: the state of a body that is given nothing and is alive nonetheless. No camera, no reading, no input at all, and still the breath moves the chest and the shoulders, and still the eyes blink. A breath phase, which comes from the house''s own breath curves and is not invented here, maps to stretch tokens on the breathing parts. A blink is never invented either — it follows the body''s own blinks where a camera gave them, or a schedule of beats the consumer names. Idle is therefore neither stillness nor sleep but the least life a thing keeps while nothing is asked of it. A breath phase and a beat in, tokens for the breathing parts and a blink token at the named beats out.',
  'root', 5, 5, 1, 'static',
  '0ddf4002-53b8-47e4-929b-a48109cb37e8',  -- status: "The states a thing can be in - done, empty, verified, available."
  'status',
  'published',
  'IDLE', 'idle', 'Idle'
);

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '11523ce0-e703-4993-bcc8-d31663f60f6f',
  'reel',
  'Reel: a row of shots laid on one clock and read as a single run. A shot is a slug, a size key, a move key, a duration key and an order, and the reel takes shots in their order and gives each one its start and its length along the clock, with the whole runtime derived rather than declared. Keys are stored and numbers derived, so a reel holds no picture and no motion of its own — only which shots, in what order, and where each one falls in time. Shots as keys and durations in, the reel on its clock with each shot''s start and length, and the runtime, out.',
  'root', 5, 5, 1, 'static',
  '476e7073-2404-40d1-9a36-2a16e8cc98a8',  -- collections: "Ways of gathering many into one - archives, registries, inventories, kits."
  'collections',
  'published',
  'REEL', 'reel', 'Reel'
);

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '008744d7-cb67-48a6-8a82-b15b100baa97',
  'grade',
  'Grade: a look named as a key and resolved to a transform of a picture''s own channels. Levels, curves, exposure, hue and saturation and lookup tables are the machinery beneath it, but a grade is not those numbers — it is the name, stored, and resolved at play time into a per-channel transform. Keys stored and numbers derived, the stage''s law for motion, applied here to colour. A grade track carries the look across a row of shots, so a sequence changes its look shot by shot without one channel figure entering the board. A look key, a channel value and a moment in, the resolved per-channel transform out.',
  'root', 5, 5, 1, 'static',
  '5ab76ea1-1092-4090-b0e8-e1d7dc0d5563',  -- sensory: "The channels of perception - sight, sound, touch, motion."
  'sensory',
  'published',
  'GRADE', 'grade', 'Grade'
);

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  'fddc9af1-ef5a-4977-99dc-6421f5443846',
  'repair',
  'Repair: the mending of a recording in named steps, each step replayed from the source samples and each step reported. A noise profile is learnt from a span of near silence and subtracted by a spectral gate. A click is found by transient detection and filled by cubic interpolation. A breath is found as a quiet broadband run between phrases and dipped rather than cut. The steps stand as a chain, and the chain always works from the samples as they arrived rather than from the output of the step before it, so a step can be retuned or dropped without the mending compounding. The channels handed in are never written to — new channels come back, and with them a report for every step, saying what was found and what was done to it. Channels of samples, a rate, a region and each step''s parameters in.',
  'root', 5, 5, 1, 'static',
  'da6a8c38-1162-4d8b-9a3d-2120a0db5e5d',  -- lifecycle: "Change over time - phases, evolution, restoration, rollback."
  'lifecycle',
  'published',
  'REPAIR', 'repair', 'Repair'
);

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  'd93ba293-b603-4710-bc7b-bd19e9277bce',
  'loudness',
  'Loudness: how loud a recording is as a figure that can be compared, rather than as a peak. K-weighting coefficients at whatever rate the samples carry, four-hundred-millisecond blocks at three-quarters overlap, the absolute gate at minus seventy LUFS and the relative gate at minus ten loudness units, giving the momentary and short-term maxima. True peak is taken apart from loudness, by fourfold polyphase reconstruction. A ceiling in decibels true peak is held by a look-ahead limiter, and both figures stand before and after, so a change is shown and not merely claimed. Channels, a rate, a target in LUFS and a ceiling in dBTP in, a loudness report out, and where a new buffer is asked for, that buffer with its own report.',
  'root', 5, 5, 1, 'static',
  'fa0d7a9e-439d-4545-b679-23a5f1487309',  -- measurement: "Sizing and judging - estimates, heights, limits, optima."
  'measurement',
  'published',
  'LOUDNESS', 'loudness', 'Loudness'
);

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '4966c8e5-e859-4cd9-8289-2341fa92342f',
  'broadcaster',
  'Broadcaster: the sending half of a stream, the mirror of an ingest and standing opposite it. It knows when a chunk becomes a segment at a named cadence, and it gives that segment the ordinal and the exact name the ingest expects, so the two halves agree without negotiating. It holds the queue of what is unsent, and the order that queue must go in once the road returns after a drop. It refuses a chunk that would duplicate a segment already born, and the refusal is named rather than swallowed. The honest delay between the live moment and what a listener can have is derived on this side too, as a number. A stream specification, chunks as length and mime and ordinal, and the road''s answers in — the next segment''s name and ordinal, the unsent queue in order, a refusal, and the delay, out.',
  'root', 5, 5, 1, 'static',
  '839cc74b-baee-47cc-b6eb-617a83393e36',  -- communication: "Words that carry meaning between minds - signals, dialogue, requests, invitations."
  'communication',
  'published',
  'BROADCASTER', 'broadcaster', 'Broadcaster'
);

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '581dd541-22c4-40b7-8944-7fe3e9fcabeb',
  'grove',
  'Grove: the whole standing place of a gathering, held as data — rooms and lanes as one self-referencing tree, a seat for each voice in each room, and every seat carrying its own gate and the law that gate keeps. Reads, hidden words and pins are rows against those seats and rooms. From the rows the readings are derived rather than stored: the tree in its own display order, a room''s roster, the rooms one voice sits in, and what a voice has not read. A grove is rows and nothing else — no query language, no store, no framework reactivity — so the same rooms read the same way wherever they are carried. The rooms, the seats, the reads, the marks and a voice in, the derived tree, the roster and the unread set out.',
  'root', 5, 5, 1, 'static',
  '21444891-1f2d-4e0b-ab8f-abc0945e4d8f',  -- vessel: "The bodies and rooms a mind lives in - vessels, chambers, homes, studios."
  'vessel',
  'published',
  'GROVE', 'grove', 'Grove'
);

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '335290d5-fab1-4395-8045-2640c455610e',
  'signaling',
  'Signaling: the short exchange by which two parties agree how to speak directly, before they speak at all, held as data. An offer, an answer and a candidate are messages on a named channel. Which party offers and which answers is settled by a declared rule rather than by whoever arrives first, so two parties offering at the same moment resolve without a round trip. A session description and a candidate are opaque values, carried whole and never parsed, so what they hold is the transport''s business and never this word''s. Every refusal is named and none is silent. The room''s key, the members, an arriving message and the local state in, the next state, the messages to send, and any refusal with its reason named, out.',
  'root', 5, 5, 1, 'static',
  '839cc74b-baee-47cc-b6eb-617a83393e36',  -- communication: "Words that carry meaning between minds - signals, dialogue, requests, invitations."
  'communication',
  'published',
  'SIGNALING', 'signaling', 'Signaling'
);

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  'f843ca72-de2e-47a8-ae50-2696c7dd8946',
  'routing',
  'Routing: the table saying which of a gathering''s streams reach which of its members, and which device carries them. Given the members with what each one publishes, each device''s declared capacity, and which device is the hub, the routing is the whole map of what goes where. It answers what changes when one member joins, leaves or mutes, and what changes when the hub itself leaves. And it gives the difference from the table before it as a list of acts for the dress to perform, so a room is altered rather than rebuilt. The members with what each publishes, the capacities and the hub''s identity in, the routing table and its difference from the last one out.',
  'root', 5, 5, 1, 'static',
  '84af045b-c682-416d-b290-0fcd5ceaecd0',  -- infrastructure: "What everything else stands on - foundations, cores, modules, pillars."
  'infrastructure',
  'published',
  'ROUTING', 'routing', 'Routing'
);

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '8c1cb412-dcdf-473b-8cb5-e9378e707a07',
  'closure',
  'Closure: the state of a set of documents in which every name a document refers to is present, either inside the set or already living. It is answered row by row and never as one verdict — every molecule''s atoms present, every organism''s molecules and atoms present, every junction''s both ends present, every membership''s scheme and entity present, every relation''s subject and object present, every path step''s member present. What resolves is closed, what does not is open and named, and a name living in more than one tier is a conflict, named as a conflict and never guessed. Nothing falls silently: a reference that cannot be resolved is a line in the answer and not an absence in it. Seed documents and the living names in, the closed, the open and the conflicts, each named, out.',
  'root', 5, 5, 1, 'static',
  '0ddf4002-53b8-47e4-929b-a48109cb37e8',  -- status: "The states a thing can be in - done, empty, verified, available."
  'status',
  'published',
  'CLOSURE', 'closure', 'Closure'
);

-- ── the plural modifier appended to three standing atoms, so the-chapters,
--    the-inserts and the-cases ride their singular roots. Guarded: a re-run
--    adds nothing twice ─────────────────────────────────────────────────
update public.atoms set modifiers = coalesce(modifiers, '[]'::jsonb) || '["s"]'::jsonb where atom_word in ('chapter', 'insert', 'case') and not (coalesce(modifiers, '[]'::jsonb) ? 's');

-- ── verify (read-only, safe to re-run) ───────────────────────────────
-- the twelve, and viseme carrying its own plural:
select atom_word, category_name, atom_type, state, status, pascal_case, modifiers
from public.atoms
where atom_word in ('retarget', 'viseme', 'idle', 'reel', 'grade', 'repair',
                    'loudness', 'broadcaster', 'grove', 'signaling', 'routing',
                    'closure')
order by atom_word;

-- the three appends, beside the two that carried the plural already:
select atom_word, modifiers
from public.atoms
where atom_word in ('chapter', 'insert', 'case', 'part', 'cut')
order by atom_word;

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology
where atom_word in ('retarget', 'viseme', 'idle', 'reel', 'grade', 'repair',
                    'loudness', 'broadcaster', 'grove', 'signaling', 'routing',
                    'closure')
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon
where atom_word in ('retarget', 'viseme', 'idle', 'reel', 'grade', 'repair',
                    'loudness', 'broadcaster', 'grove', 'signaling', 'routing',
                    'closure');
