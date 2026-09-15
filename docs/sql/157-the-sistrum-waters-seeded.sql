-- ============================================================
-- 157 — THE SISTRUM WATERS SEEDED (nine waters, status imagined)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
--
-- SOURCE: resonance-sistrum/docs/THE-SISTRUM-WATERS.md, drawn 2026-09-14 —
-- the rows W1 to W8 and W10 of "The waters to imagine". Every definition and
-- every story below is drawn from that document's own row and from nothing
-- outside it.
--
-- W9, the carry's envelope and its reconciliation, is NOT seeded here: it is
-- the same water as sceal's W9 and ardan's W7 and is seeded once, as
-- the-ledger, in 156.
--
-- RUNS AFTER 153, the twelve atoms. Three of these nine ride atoms born
-- there — repair, loudness, broadcaster. the-chapters and the-inserts ride
-- singular atoms that receive the "s" modifier there.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: every name here is one word, so
-- every row carries atom_id, and molecule_id and organism_id stay null by
-- default. A plural name rides its singular atom and the plural is the
-- modifiers' work — the-scrolls precedent, 055.
--
-- W1 to W4 are harvests, not builds: the arithmetic is already written in
-- sistrum, pure and proven, and has never been carried to the spring. Each
-- of those four stories carries the addresses the document gives.
--
-- THE NINE ROWS, their atoms, their types and their faces:
--
-- ── the-repair · W1 · atom `repair`, born in 153 ──
-- TYPE transform: channels of samples in, new channels and a report per step
-- out — the sound's form changes and its truth is kept. Runner-up witness,
-- for the report every step returns.
-- FACE 🔧 the wrench, the repair itself. Runner-up 🧰, worn here by the-rack.
--
-- ── the-splice · W2 · atom `splice`, stands (content) ──
-- TYPE combine: two takes in, one new array out, each side still itself
-- across the crossfade. Runner-up transform.
-- FACE 🔩 the nut and bolt, two pieces made one at a join. Runner-up 🪛,
-- worn here by the-inserts.
--
-- ── the-loudness · W3 · atom `loudness`, born in 153 ──
-- TYPE transform: the limiter returns a new buffer at the ceiling, the same
-- sound in a changed form. Runner-up witness, for the loudness report that
-- states the before and the after.
-- FACE 🔊 the loud speaker, loudness itself. Runner-up 🔉.
--
-- ── the-chapters · W4 · atom `chapter`, stands (content), "s" in 153 ──
-- TYPE emit: bytes with the two chunks appended, plus ffmetadata and WebVTT
-- — the same chapters sent outward in three chosen forms. Runner-up arrange,
-- for the normalizing, the dedupe by position and the ordering.
-- FACE 🪗 the accordion, a body of ordered folds. Runner-up 🪕.
--
-- ── the-grid · W5 · atom `grid`, stands (sensory) ──
-- TYPE translate: a position carried between two tongues of time,
-- milliseconds and bars-beats-ticks, meaning kept. Runner-up arrange.
-- FACE 🎹 the keyboard, the ruled divisions a player reads. Runner-up 🪘.
--
-- ── the-inserts · W6 · atom `insert`, stands (creation), "s" in 153 ──
-- TYPE arrange: a chain in order and an automation lane in time, read at a
-- position. Runner-up transform.
-- FACE 🪛 the screwdriver, the turn that sets a value in a chain.
-- Runner-up 🎷.
--
-- ── the-rack · W7 · atom `rack`, stands (no category) ──
-- TYPE arrange: the block plan is placement — which plugin receives which
-- buffers, in what order, with the events at their sample offsets.
-- Runner-up combine.
-- FACE 🧰 the toolbox, a rack holding its instruments and their ports.
-- Runner-up 🎺.
--
-- ── the-broadcaster · W8 · atom `broadcaster`, born in 153 ──
-- TYPE emit: the sending side of the stream — segments named, ordinalled and
-- queued for the road. Runner-up arrange, for the unsent queue in order.
-- FACE 📻 the radio, the broadcast heard on the far side. Runner-up 🔈.
--
-- ── the-alignment · W10 · atom `alignment`, stands (governance) ──
-- TYPE witness: it says what the offset is, with a confidence, and refuses
-- when the answer is not one peak. Runner-up arrange.
-- FACE ⏱️ the stopwatch, the offset told as a number. Runner-up ⏲️.
--
-- No row wears a face another row here wears. Every face is unworn in the
-- spring's 105 standing rows, and the verify below stands because the live
-- base may hold faces this hand could not see.
--
-- Etymology and sensory rows are NOT written here: the atoms table's
-- triggers make both on insert.
--
-- Nothing here crosses to flowing.
-- NEVER RUN BY A LAMP: the paper is drafted and numbered, the crossing is
-- KP's ⚛ own.
-- ============================================================

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values

('The Repair', 'the-repair', 'transform',
 'The repair rack. Channels of samples go in with their rate, a region and the parameters of each step, and out come new channels — never the input — and a report for every step. It learns a noise profile from a silent span and subtracts it by spectral gate. It finds clicks by transient detection and fills them by cubic interpolation. It finds breaths as the quiet broadband runs between phrases and dips them. Each of the three is a step in a chain, and the chain replays from the source samples rather than from the last answer, so a step can be set again and the whole run afresh from the top. Every step says in its own report what it did.',
 'resonance-awen/tools/the-repair', 'imagined', '🔧', 'Awen',
 (select id from public.atoms where atom_word = 'repair'),
 'A carry, not a build. The arithmetic stands already in sistrum, pure and proven — resonance-sistrum/src/lib/repair.ts:147-521 whole, 525 lines, zero imports, with its proof at resonance-sistrum/.journals/proofs/repair-a-noisy-take.mjs — and has never been carried to the spring. What it wants is a README, its proofs re-homed, and a MIRROR.md on the copy that stays in the app. CONSUMERS the document names: sceal, for a take''s sound on the cut room''s timeline, which decodes takes whole already at resonance-sceal/src/lib/peaks.ts:1-5 · meetings, for recording on the host''s own device, plan row 4.25 · Part Two''s audiobook rows at resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:499-508. Its own plan row is 3.31, repair, at THE-FINAL-FEATURES-PLAN.md:297. MARK medium — a carry, not a build — and step 2 of the document''s order, beside the-loudness, sistrum left on a byte-faithful mirror with proofs green in both. KP, the same day the document was drawn, on why the split exists at all: "this is why awen exists, because stand alone tools exist needed in multiple places." (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:710). Described 2026-09-14 in resonance-sistrum/docs/THE-SISTRUM-WATERS.md, row W1, and seeded imagined 2026-09-15 at KP''s ⚛ word.',
 'a platform hand, at KP''s ⚛ word'),

('The Splice', 'the-splice', 'combine',
 'The splice bench. Two sample arrays go in with their cut points, a crossfade in milliseconds and a rate, and out come one new array and a report of what was affordable. It makes the equal-power crossfade pair whose squares sum to one, cuts a take at a boundary, joins another take at its own, and punches over a region with the fade at both ends. When either side is short it gives the crossfade length the material can actually afford rather than taking more than is there, and it does the arithmetic of the resulting length, so a caller knows how long the joined take will be before it is made.',
 'resonance-awen/tools/the-splice', 'imagined', '🔩', 'Awen',
 (select id from public.atoms where atom_word = 'splice'),
 'A carry. The arithmetic stands already in sistrum, pure and proven — resonance-sistrum/src/lib/splice.ts:20-149, 182 lines, zero imports, with proofs at resonance-sistrum/.journals/proofs/splice-two-takes.mjs and punch-into-a-region.mjs — and has never been carried to the spring. What it wants is a README, its proofs re-homed, and a MIRROR.md on the copy that stays. CONSUMERS: sceal, whose cuts.ts holds a cut''s gain and mute today and no crossfade · meetings · Part Two''s audiobook. Its plan row is 3.32, splice and crossfade and punch-in, at resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:297. MARK small, and step 1 of the document''s order together with the-chapters — the smallest carries, the arithmetic already proven in the app, the proofs travelling with them. Described 2026-09-14 in resonance-sistrum/docs/THE-SISTRUM-WATERS.md, row W2, and seeded imagined 2026-09-15 at KP''s ⚛ word.',
 'a platform hand, at KP''s ⚛ word'),

('The Loudness', 'the-loudness', 'transform',
 'The loudness, the true peak and the limiter. Channels go in with their rate, a target in LUFS and a ceiling in dBTP, and out come a loudness report and a new buffer with a report of its own. It derives the K-weighting coefficients at any rate, measures over 400 millisecond blocks at seventy-five per cent overlap, applies the -70 LUFS absolute gate and the -10 LU relative gate, and gives the momentary and short-term maxima. It finds the true peak by fourfold polyphase reconstruction. Its look-ahead limiter brings the sound to the ceiling in dBTP and states the before and the after in both figures, loudness and true peak, so a master can be read against the spec it was cut to.',
 'resonance-awen/tools/the-loudness', 'imagined', '🔊', 'Awen',
 (select id from public.atoms where atom_word = 'loudness'),
 'A carry. The arithmetic stands already in sistrum, pure and proven — resonance-sistrum/src/lib/master.ts:47-626, 656 lines, zero imports, with proofs at resonance-sistrum/.journals/proofs/loudness-to-spec.mjs, true-peak-over-samples.mjs and limit-to-a-ceiling.mjs — and has never been carried to the spring, which wants a README, the proofs re-homed, and a MIRROR.md on the copy that stays. CONSUMERS: sceal, for the film row''s stereo mix with dialogue normalization at resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:528 · khoros, for a publish''s loudness · meetings. Its plan row is 3.33, mastering to spec, at THE-FINAL-FEATURES-PLAN.md:297. MARK medium — a carry — and step 2 of the document''s order, beside the-repair, sistrum left on a byte-faithful mirror with proofs green in both. Described 2026-09-14 in resonance-sistrum/docs/THE-SISTRUM-WATERS.md, row W3, and seeded imagined 2026-09-15 at KP''s ⚛ word.',
 'a platform hand, at KP''s ⚛ word'),

('The Chapters', 'the-chapters', 'emit',
 'The chapterized container. WAV bytes go in with chapter marks and a length, and out come WAV bytes with two chunks appended, two texts, and a read-back of what the container now holds. The chapters are normalized, deduped by position and ordered before anything is written. The cue chunk and the LIST and adtl chunk of labels go after the data chunk, so a reader that knows neither chunk still opens the sound and hears it whole. The same chapters leave as ffmetadata and as WebVTT text, for the containers that carry no chapters of their own. Reading the container back is part of the water, so what was written can be shown to be there.',
 'resonance-awen/tools/the-chapters', 'imagined', '🪗', 'Awen',
 (select id from public.atoms where atom_word = 'chapter'),
 'A carry, and the plural rides the singular atom chapter, the "s" being the modifiers'' work. The arithmetic stands already in sistrum — resonance-sistrum/src/lib/container.ts:26-230, on the WAV bytes resonance-sistrum/src/lib/wav.ts:15-54 writes, with proofs at resonance-sistrum/.journals/proofs/chapters-in-a-wav.mjs and wav-bytes-round-trip.mjs — and has never been carried to the spring. CONSUMERS: sceal, which writes VTT already at resonance-sceal/src/lib/captions.ts · khoros, for a release''s chapters · Part Two''s audiobook rows at resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:499-508. Its plan row is 3.34, the chapterized container and encode-out, at THE-FINAL-FEATURES-PLAN.md:297. MARK small — a carry — and step 1 of the document''s order together with the-splice. WebM and Ogg chapters stay outside the water in the document''s reading, needing a muxer the app does not have, and leave beside the file as text. Described 2026-09-14 in resonance-sistrum/docs/THE-SISTRUM-WATERS.md, row W4, and seeded imagined 2026-09-15 at KP''s ⚛ word.',
 'a platform hand, at KP''s ⚛ word'),

('The Grid', 'the-grid', 'translate',
 'The musical grid. A tempo map goes in as data — points of beats per minute and meter along a timeline — with a position in either unit and a division, and out come the other unit, the grid points that fall in a span, and the snapped position. It converts both ways between a position in milliseconds and a position in bars, beats and ticks. It gives the grid lines a window would draw between two positions, so the drawing is arithmetic rather than a guess. It finds the nearest grid point at a named division, with the snap standing as a law and not as a feeling.',
 'resonance-awen/tools/the-grid', 'imagined', '🎹', 'Awen',
 (select id from public.atoms where atom_word = 'grid'),
 'A build — the document says W5 to W10 do not exist anywhere. What stands near it: the-metronome''s beat clock and tap tempo, at ONE tempo, resonance-awen/tools/the-metronome/src/index.ts:28, 85 · and sistrum''s own lane offsets, which are whole milliseconds only, resonance-sistrum/src/lib/studio.ts:30. CONSUMERS: ardan, whose the-conductor sequences on a millisecond clock · theophany, for beats · khoros. MARK medium, and step 4 of the document''s order, where it is called the grid the charter sentence asks for and nothing in the house has. KP''s charter for the realm, verbatim (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:574): "this should become our own version of "reaper.fm"/"ableton" but with the focus on recording and editing and producing first, and also then streaming through khoros.audhdities on a subdomain system, next phase would be to enable different types of plugins utilized in music and sound production." Described 2026-09-14 in resonance-sistrum/docs/THE-SISTRUM-WATERS.md, row W5, and seeded imagined 2026-09-15 at KP''s ⚛ word.',
 'a platform hand, at KP''s ⚛ word'),

('The Inserts', 'the-inserts', 'arrange',
 'The insert chain and its automation. A rack document goes in with its automation lanes and a position, and out come the resolved parameters, the chain''s order, and what is engaged. A lane''s inserts are ordered data — an identifier, its parameters, its bypass, its wet and its dry — and an automation lane is points in time with a shape between them. Asked for a position, the water resolves every parameter to its exact value there, names the order the inserts stand in, and names every bypass, so the answer describes the whole chain at that moment and not one knob alone.',
 'resonance-awen/tools/the-inserts', 'imagined', '🪛', 'Awen',
 (select id from public.atoms where atom_word = 'insert'),
 'A build, and the plural rides the singular atom insert, the "s" being the modifiers'' work. What stands near it: the-kampyle''s bezierAt for the shape between two points, resonance-awen/tools/the-kampyle/src/index.ts:108 · the-encoder''s linear fades, LayerSpec at resonance-awen/tools/the-encoder/src/lib.rs:44-51 · and the equal-power pair in the-splice. CONSUMERS: sceal, for a cut''s gain over time · ardan · khoros. MARK medium — 5.9''s precondition, the plugin road at resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:653 — and step 5 of the document''s order, standing before any plugin. Described 2026-09-14 in resonance-sistrum/docs/THE-SISTRUM-WATERS.md, row W6, and seeded imagined 2026-09-15 at KP''s ⚛ word.',
 'a platform hand, at KP''s ⚛ word'),

('The Rack', 'the-rack', 'arrange',
 'The plugin rack''s pure half. Plugin descriptions go in with a rack, a block size and rate, and a block of automation events, and out comes the block plan — the routing, the order, the delay compensation, and the events at their sample offsets. A plugin is described here as data: its identifier, its parameter tree with ranges, defaults and flags, its audio port layout, and its own latency in samples. From that the water says which plugin receives which buffers and in what order, how much delay is compensated on the lanes that bypass it, and where each parameter event falls as a sample offset inside the block. The binary is never opened here — this half is the description and the plan.',
 'resonance-awen/tools/the-rack', 'imagined', '🧰', 'Awen',
 (select id from public.atoms where atom_word = 'rack'),
 'A build, and the largest of the nine. Nothing stands: clap appears nowhere in sistrum''s src/ or src-tauri/src/ or in resonance-awen/tools/, the one match being a false one in the-emoji-collector/emojis.gen.ts. CONSUMERS: nothing today — sceal or meetings, if either ever hosts an effect. MARK large, after 0.21, and step 8 of the document''s order, last of the eight. 0.21 is the plugin format and it is KP''s ⚛ word (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:630) — the document says plainly that no plugin format is chosen in the realm and that this water cannot be drawn before that word is given. 5.9, the plugin road, is drawn on it (THE-FINAL-FEATURES-PLAN.md:653). The .clap binary''s loading, its host callbacks, its threads and its GUI window are named as not the water''s: opening a binary is the app''s, and native. Described 2026-09-14 in resonance-sistrum/docs/THE-SISTRUM-WATERS.md, row W7, and seeded imagined 2026-09-15 at KP''s ⚛ word.',
 'a platform hand, at KP''s ⚛ word'),

('The Broadcaster', 'the-broadcaster', 'emit',
 'The broadcaster''s half of the stream, standing on the sending side as the mirror of the-sruth''s ingest. A stream spec goes in with chunks as a length, a mime and an ordinal, and with the road''s answers, and out come the next segment''s name and ordinal, the queue of what is unsent and in what order, a refusal where one is owed, and the delay as a number. It says when a chunk becomes a segment at a named cadence, and gives the ordinal and the exact name the ingest expects. After the road drops it holds the unsent queue in order. It refuses a chunk that would duplicate one already born. It derives the honest delay on this side too, so the sender can say how far behind it is.',
 'resonance-awen/tools/the-broadcaster', 'imagined', '📻', 'Awen',
 (select id from public.atoms where atom_word = 'broadcaster'),
 'A build. What stands: the-sruth whole, but it is the SERVER''s half — open, ingest, close, renderHouse and renderPlaylist at resonance-awen/tools/the-sruth/src/index.ts:241, 304, 338, 365, 461, with segmentPath at :212 and honestDelay at :233 — and nothing at all on the sending side. CONSUMERS: sceal, plan row 4.21 · khoros, 5.11 · meetings, 4.25. MARK medium, after 0.19, for 4.20, live streaming out to khoros (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:647), and step 6 of the document''s order, after which 4.20 is assembly on the-sruth''s far side. 0.19 is KP''s ⚛ word — khoros.audhdities.com and what serves it — and this water is shaped by the answer. Described 2026-09-14 in resonance-sistrum/docs/THE-SISTRUM-WATERS.md, row W8, and seeded imagined 2026-09-15 at KP''s ⚛ word.',
 'a platform hand, at KP''s ⚛ word'),

('The Alignment', 'the-alignment', 'witness',
 'The alignment of a pass against what was played. Two sample arrays go in — the mix as it went out and the capture as it came back — with a search window and a rate, and out come the offset in samples that lines them up, a confidence beside it, and a compensated offset in frames. The offset is found by cross-correlation over a normalized window. Where the answer is not one peak the water refuses, rather than naming a number it cannot stand behind, so a doubtful alignment is said to be doubtful instead of being applied. It also does the arithmetic of a compensated lane, taking an offset, a plugin''s own latency and the rate to one number of frames.',
 'resonance-awen/tools/the-alignment', 'imagined', '⏱️', 'Awen',
 (select id from public.atoms where atom_word = 'alignment'),
 'A build. Nothing stands: the overdub stamps the moment the stream opened and the person nudges by the millisecond (resonance-sistrum/README.md and resonance-sistrum/docs/THE-STUDIO-PLAN.md §4.4), and the tap-test calibration "stands as its own future seed" (resonance-awen/tools/the-recorder/README.md:46-48). CONSUMERS: meetings, plan row 4.25 · sceal · theophany. MARK small, and step 3 of the document''s order, where it closes plan 82''s §4.4 — THE STUDIO, resonance-sistrum/docs/THE-STUDIO-PLAN.md — and replaces a nudge with a number. Described 2026-09-14 in resonance-sistrum/docs/THE-SISTRUM-WATERS.md, row W10, and seeded imagined 2026-09-15 at KP''s ⚛ word.',
 'a platform hand, at KP''s ⚛ word');

-- ── verify (read-only, safe to re-run) ───────────────────────────────

-- the nine rows as seeded:
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen
where slug in ('the-repair', 'the-splice', 'the-loudness', 'the-chapters',
               'the-grid', 'the-inserts', 'the-rack', 'the-broadcaster',
               'the-alignment')
order by slug;

-- each face of this paper and who wears it (one wearer apiece):
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name)
from public.awen
where icon_emoji in ('🔧', '🔩', '🔊', '🪗', '🎹', '🪛', '🧰', '📻', '⏱️')
group by icon_emoji
order by icon_emoji;

-- the atoms the rows ride, with the plural modifiers 153 sets:
select atom_word, category_name, atom_type, state, status, modifiers
from public.atoms
where atom_word in ('repair', 'splice', 'loudness', 'chapter', 'grid',
                    'insert', 'rack', 'broadcaster', 'alignment')
order by atom_word;

-- one tier each (tools_one_tier, read back):
select slug, atom_id is not null as has_atom,
       molecule_id is null as no_molecule,
       organism_id is null as no_organism
from public.awen
where slug in ('the-repair', 'the-splice', 'the-loudness', 'the-chapters',
               'the-grid', 'the-inserts', 'the-rack', 'the-broadcaster',
               'the-alignment')
order by slug;
