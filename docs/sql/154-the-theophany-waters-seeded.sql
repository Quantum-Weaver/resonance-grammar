-- ============================================================
-- 154 — THE THEOPHANY WATERS, SEEDED (six rows of public.awen)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
--
-- SOURCE, and the only source: resonance-theophany/docs/THE-THEOPHANY-PLAN.md,
-- Part One's table, rows W1 to W6 (lines :35 to :40). Each definition is drawn
-- from its own row; each story carries that row's "what stands already" column
-- with the addresses as the document gives them, its consumers, and its mark.
-- the-rig's definition also carries the shape of the puppet document, which the
-- document names as W1's input in Part One's paragraph beneath the table, and
-- the statement that an angle is a key and a stretch is a key with the degrees
-- in one table, which the document states as the grammar W1 is born from.
--
-- RUN ORDER: after 153-the-imagined-waters-atoms.sql. Three of the six atoms
-- are born there; without it three of these rows are refused.
--
-- THE ROWS
--   slug             atom          atom stands?              type       face
--   the-rig          rig           stands (infrastructure)   transform  🎪
--   the-retarget     retarget      born in 153               translate  🪄
--   the-settle       settle        stands (status)           transform  🧘
--   the-visemes      viseme        born in 153, with "s"     translate  👄
--   the-performance  performance   stands (measurement)      arrange    🩰
--   the-idle         idle          born in 153               translate  🫀
--
-- THE TYPES, with the runner-up each row sets down:
--   the-rig — transform: a puppet document and a beat in, each part's
--     transforms about its own pivot out; a change of form, the truth kept.
--     Runner-up arrange, for the hierarchy and the tracks at beats.
--   the-retarget — translate: a reading is one vocabulary and the rig's tokens
--     are another, and this carries meaning from the first into the second.
--     Runner-up transform.
--   the-settle — transform: a jittering reading in, a settled reading out.
--     Runner-up witness, for the second answer it hands back — whether a token
--     may change.
--   the-visemes — translate: band energies in, a viseme key out; sound carried
--     into the mouth's tongue. Runner-up transform.
--   the-performance — arrange: tokens placed in deliberate relation in time, on
--     the beat grid, as two tracks. Runner-up capture, for the take it keeps.
--   the-idle — translate: a breath phase and a beat in, the rig's own tokens
--     out. Runner-up arrange, for the blink token at named beats.
--   Three rows carry translate because three of the six are maps from a foreign
--   vocabulary into the rig's tongue.
--
-- THE FACES, from the pool set for this paper, each worn once here and checked
-- for a second wearer in the footer:
--   🎪 the-rig — the tent-frame everything else hangs from. Runner-up 🎠.
--   🪄 the-retarget — the wand: a reading waved onto tokens. Runner-up 🕹️.
--   🧘 the-settle — stillness held. Runner-up 🩰.
--   👄 the-visemes — the mouth's shapes. Runner-up 🪈.
--   🩰 the-performance — a take performed and kept. Runner-up 🎪.
--   🫀 the-idle — the breath and the blink that continue. Runner-up 🧘.
--   Set down unworn: 👀, 🎠, 🕹️, 🪈. One glyph each, no skin tone, no ZWJ
--   sequence, no flag, no red-alarm mark.
--
-- THE ONE-TIER LAW (tools_one_tier): every name here is one word, so every row
-- carries atom_id and leaves molecule_id and organism_id null.
--
-- THE PLURAL: the-visemes rides the singular atom viseme, and the plural is the
-- modifiers' work — the-scrolls precedent (055). 153 bears viseme with "s".
--
-- Category is an atom's column and is not written here; 153 carries it for the
-- three atoms it bears.
--
-- Every row seeds status 'imagined'. No update, no crossing, no delete: the
-- crossing to 'flowing' is KP's ⚛ hand alone.
-- NEVER RUN BY A LAMP: the paper is drafted and numbered; the delivery is KP's.
-- ============================================================

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji,
   folksonomy_type, atom_id, story, created_by)
values

-- W1
('The Rig', 'the-rig', 'transform',
 'The rig as a water: the frame a puppet is made of, and the numbers that frame resolves to at a beat. A puppet document goes in — parts as named images, each with a pivot, a parent, and a role where one applies (head, eye-left, eye-right, brow, mouth, hand-left, hand-right, chest), and nothing else — together with a beat; and out come each part''s transforms about its own pivot, byte for byte. The water carries the parts, the pivots, the hierarchy, the roles, the angle and stretch tables, poses as tokens, and pose and mouth tracks at beats, and it hands back the resolved numbers at a beat. An angle is a key and a stretch is a key, and the degrees those keys mean live in one table, so no number of motion is ever written into a board. A mouth is a part wearing the mouth role and one of four stretch keys. Beats arrive as numbers; converting milliseconds is the consumer''s work.',
 'resonance-awen/tools/the-rig', 'imagined', '🎪', 'Awen',
 (select id from public.atoms where atom_word = 'rig'),
 'Described 2026-09-14 in resonance-theophany/docs/THE-THEOPHANY-PLAN.md as Part One''s W1, and seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: rig.ts whole, proofs 26/26 claimed in ardan — resonance-ardan/src/lib/stage/rig.ts, with symbols.ts beside it, the two this water is born from; ardan keeps a mirror and loses nothing. CONSUMED BY: resonance-theophany, whose canvas resolves one frame as one pure pass over the waters and one draw; and resonance-ardan, which holds the mirror and whose stage replays a performance on the same rig. Beats come in as numbers; the consumer converts milliseconds with the-metronome. MARK: medium, the first half of 3.42 in the features plan, which holds the realm as 1.13, 3.42 and 4.22. It is one hand and one verifier, proofs in the water''s own folder, mirrored into its consumers by copy with a MIRROR.md, the spring''s own road. The charter it answers is the README''s, as the document carries it at :10-11: "a puppet whose parts answer the camera in real time — face, eyes, mouth, hands, breath. Ardan conducts the stage; Theophany gives the puppet its life."',
 'a platform hand, at KP''s ⚛ word'),

-- W2
('The Retarget', 'the-retarget', 'translate',
 'The reading and the retarget. A reading is the house''s own small vocabulary of what a camera saw: head yaw, pitch and roll; jaw open; eye open left and right; brow raise; mouth width; gaze x and y; each hand''s openness and a few named hand shapes — all of them scalars from 0 to 1 or degrees, and model-free, so no model''s name enters the vocabulary. The retarget takes a reading in and hands out tokens per part: yaw becomes turn-left or turn-right, jaw becomes one of the four mouth shapes, eyes become open or closed, brows become raise, and hands become their poses. The thresholds, the dead zones, and which parts answer which scalar are laws as data rather than numbers buried in code. A reading in, tokens per part out.',
 'resonance-awen/tools/the-retarget', 'imagined', '🪄', 'Awen',
 (select id from public.atoms where atom_word = 'retarget'),
 'Described 2026-09-14 in resonance-theophany/docs/THE-THEOPHANY-PLAN.md as Part One''s W2, and seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: nothing; the tables'' shape is rig.ts''s — resonance-ardan/src/lib/stage/rig.ts. CONSUMED BY: resonance-theophany, whose camera room turns a landmark model''s output into a reading through an adapter that is the one place the model''s name appears, and hands the reading here. MARK: medium. The document''s order puts W2 with W3 as step two, and names steps one and two the whole of 3.42 and most of 4.22''s thinking in the features plan. The camera, the landmark model and the adapter are deliberately not waters: they are the app''s dress. KP, 2026-09-14, at :11-13 of the document: "meant to be our own camera responsive character animator, we can use my alien drawing as the first face we animate. this should support sceal and ardan as needed."',
 'a platform hand, at KP''s ⚛ word'),

-- W3
('The Settle', 'the-settle', 'transform',
 'The settle. A reading jitters and a puppet must not. In go the previous state, a reading, and the elapsed milliseconds; out come the settled reading, the state to carry forward, and whether a token may change. Two laws do the calming: the one-euro filter on the scalars, and hysteresis on the token changes, so a mouth does not flicker between small and open on a breath. A token changes only when this water says it may, which is what keeps a face holding still rather than chattering. It holds no clock of its own — the elapsed time is handed to it, as state and reading are.',
 'resonance-awen/tools/the-settle', 'imagined', '🧘', 'Awen',
 (select id from public.atoms where atom_word = 'settle'),
 'Described 2026-09-14 in resonance-theophany/docs/THE-THEOPHANY-PLAN.md as Part One''s W3, and seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: nothing. CONSUMED BY: resonance-theophany, whose canvas settles the reading each frame. MARK: small. The document''s order puts it with W2 as step two. It is one hand and one verifier, proofs in the water''s own folder, mirrored into its consumers by copy with a MIRROR.md, the spring''s own road.',
 'a platform hand, at KP''s ⚛ word'),

-- W4
('The Visemes', 'the-visemes', 'translate',
 'The visemes. The mouth, read from the sound the microphone gives. Where the standing lipsync picks a mouth by loudness alone, this grows it: the four mouth shapes plus the few a face needs to read as speech — the lips together, the round, the wide — with the loudness road kept as the fallback. The microphone''s analyser hands the bands. Band energies and a loudness go in, and a viseme key comes out; the loudness pick and its mouth thresholds stand already, and this water grows that road rather than replacing it.',
 'resonance-awen/tools/the-visemes', 'imagined', '👄', 'Awen',
 (select id from public.atoms where atom_word = 'viseme'),
 'Described 2026-09-14 in resonance-theophany/docs/THE-THEOPHANY-PLAN.md as Part One''s W4, and seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: lipsync.ts, MOUTH_THRESHOLDS — resonance-ardan/src/lib/stage/lipsync.ts, where loudness picks the mouth today. CONSUMED BY: resonance-theophany, whose canvas moves the mouth from the microphone. MARK: medium; 3.35 in the features plan. The document''s order puts it fourth, after W5 and W6. The name is plural and rides the singular atom viseme, the plural being the modifiers'' work. A wall is named beside it: visemes from band energies read as speech, they are not phonemes.',
 'a platform hand, at KP''s ⚛ word'),

-- W5
('The Performance', 'the-performance', 'arrange',
 'The performance. A live take, kept as tracks. In goes a sequence of beats, each carrying its tokens — the settled tokens of a reading, beat after beat. Out come two tracks in the rig''s own shape: a pose track and a mouth track, the tokens quantized to the beat grid. Readings over time become tracks, and because the tracks are in the rig''s shape a live take is an ardan board when it lands. A sequence of beats and their tokens in, a pose track and a mouth track out.',
 'resonance-awen/tools/the-performance', 'imagined', '🩰', 'Awen',
 (select id from public.atoms where atom_word = 'performance'),
 'Described 2026-09-14 in resonance-theophany/docs/THE-THEOPHANY-PLAN.md as Part One''s W5, and seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: quantizeBeat, MouthCue, PoseCue in rig.ts — resonance-ardan/src/lib/stage/rig.ts. CONSUMED BY: resonance-theophany, whose take records these tracks beside the video; resonance-ardan, where the tracks land as a board and the same rig replays the performance on the stage, editable there; and resonance-sceal, where the take lands as a layer on the timeline or the window is captured live as a source. MARK: small. The document''s order puts it with W6 as step three.',
 'a platform hand, at KP''s ⚛ word'),

-- W6
('The Idle', 'the-idle', 'translate',
 'The idle life. When the camera gives nothing, the puppet still breathes and blinks. A breath phase goes in, and a beat; out come tokens for the breathing parts — chest and shoulder stretch — and a blink token at the named beats. The phase is not made here: it comes from the-breath, which stands already with its exact curves, and this water only maps that phase onto the rig''s tokens. A blink is never invented: it follows the camera''s own blinks, or a beat schedule the consumer names. Nothing is guessed on the puppet''s behalf.',
 'resonance-awen/tools/the-idle', 'imagined', '🫀', 'Awen',
 (select id from public.atoms where atom_word = 'idle'),
 'Described 2026-09-14 in resonance-theophany/docs/THE-THEOPHANY-PLAN.md as Part One''s W6, and seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: the-breath, which holds the exact curves the phase comes from, and the-metronome, which the consumer names the beat schedule with. CONSUMED BY: resonance-theophany, whose canvas breathes the puppet while the camera gives nothing. MARK: small. The document''s order puts it with W5 as step three. It is one hand and one verifier, proofs in the water''s own folder, mirrored into its consumers by copy with a MIRROR.md, the spring''s own road.',
 'a platform hand, at KP''s ⚛ word');

-- ── verify (read-only, safe to re-run) ───────────────────────────────

-- the six rows as they stand:
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen
where slug in ('the-rig', 'the-retarget', 'the-settle', 'the-visemes',
               'the-performance', 'the-idle')
order by slug;

-- one wearer per face, or the second wearer named:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name)
from public.awen
where icon_emoji in ('🎪', '🪄', '🧘', '👄', '🩰', '🫀')
group by icon_emoji
order by icon_emoji;

-- the atoms the six rows ride, and the plural viseme wears:
select atom_word, category_name, atom_type, state, status, modifiers
from public.atoms
where atom_word in ('rig', 'retarget', 'settle', 'viseme', 'performance', 'idle')
order by atom_word;

-- the one-tier law, walked on the six:
select slug,
       atom_id is not null as rides_an_atom,
       molecule_id is null and organism_id is null as no_other_tier
from public.awen
where slug in ('the-rig', 'the-retarget', 'the-settle', 'the-visemes',
               'the-performance', 'the-idle')
order by slug;

-- the standing waters these six lean on, kept as they stand:
select name, slug, status, icon_emoji from public.awen
where slug in ('the-breath', 'the-metronome')
order by slug;
