-- ============================================================
-- 156 — THE SCEAL WATERS SEEDED
-- eleven rows of public.awen at status imagined
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli) · runs after 153
--
-- SOURCE: resonance-sceal/docs/THE-SCEAL-WATERS.md, rows W1 to W11.
--
-- THREE OF THE ELEVEN ARE DESCRIBED IN MORE THAN ONE DOCUMENT AND ARE SEEDED
-- ONCE, HERE; each story names every document that describes it:
--   the-delivery — sceal W1 · resonance-ardan/docs/THE-ARDAN-WATERS.md W1
--   the-keel     — sceal W2 · resonance-ardan/docs/THE-ARDAN-WATERS.md W2
--   the-ledger   — sceal W9 · resonance-ardan/docs/THE-ARDAN-WATERS.md W7
--                           · resonance-sistrum/docs/THE-SISTRUM-WATERS.md W9
--
-- THE ONE-TIER LAW (tools_one_tier): every name here is one word, so every row
-- carries atom_id and leaves molecule_id and organism_id null.
--
-- THE ATOMS: all eleven stand in the base already and none is born in 153 —
-- delivery (economics) · keel (vessel) · index (collections) · mask (private) ·
-- matte (sensory) · cut (content) · overlay (sensory) · lifecycle (lifecycle) ·
-- ledger (economics) · walk (lifecycle) · scene (content). The Cuts rides the
-- root cut, whose modifiers already carry "s" (the-scrolls precedent, 055).
-- Category is an atom's column and is not set on an awen row.
--
-- THE ROWS — type with its reason and runner-up, face with its reason and
-- runner-up. No two rows here wear the same face, and each face reads unworn in
-- the spring 2026-09-15; the live base may hold faces this hand could not see,
-- so the wearer check stands in the footer.
--
-- the-delivery · atom delivery · transform: measurements in, a plan out — the
--   form changes and the truth is kept; runner-up arrange (the track plan).
--   face 🗜️ the clamp, what a delivery plan settles; runner-up 📼.
-- the-keel · atom keel · emit: frames and sound in, container bytes out, which
--   is encode (the-encoder is emit, 015); runner-up transform.
--   face ⛵ the keel itself; runner-up ⚓, worn.
-- the-index · atom index · witness: it walks bytes and says where each sample
--   stands, altering nothing (the-colophon, the tag reader, is witness in 055);
--   runner-up arrange (the-suchi, the index of papers, is arrange in 127).
--   face 🧭 the walk to a sample; runner-up 🔦.
-- the-mask · atom mask · transform: pixels and a mask in, a new mask or masked
--   pixels out; runner-up combine (the alpha estimated on the soft edge).
--   face 🧲 the wand that pulls a subject free of its background;
--   runner-up 🪡.
-- the-matte · atom matte · transform: two masks and an elapsed span become one
--   settled mask, the form changed and the truth kept; runner-up combine.
--   face 🧷 the edge pinned still; runner-up 🪡.
-- the-cuts · atom cut · arrange: in and out across a take at an ordinal,
--   reorder, remove, the placed lookup at a master millisecond; runner-up
--   transform (the document round trip).
--   face 🪚 the cut; runner-up 🎞️, worn (the-kinema's).
-- the-overlay · atom overlay · arrange: rows on a cut's own clock, the track
--   laid on the master timeline, the layout by position and size; runner-up
--   emit (the VTT document and the draw calls).
--   face 📺 the screen carrying the caption band; runner-up 🪧, worn.
-- the-lifecycle · atom lifecycle · emit: a lifecycle as pure state that renders
--   its own documents (the-hlid, lifecycle-as-pure-state, is emit in 131);
--   runner-up transform.
--   face 🕯️ lit for live and put out at closed; runner-up 🔋.
-- the-ledger · atom ledger · combine: two manifests into one carry plan with
--   both sides still recognisable and a divergence keeping both; runner-up
--   arrange.
--   face 🪝 the hook of what comes down and what goes up; runner-up 🧾, worn.
-- the-walk · atom walk · arrange: the constraints tried in a stated order;
--   runner-up translate (a failure name told as a sentence).
--   face 🎥 the camera asked for; runner-up 📹.
-- the-scene · atom scene · arrange: named sources with a rect, a z and a crop,
--   resolved to a draw plan ordered bottom-first; runner-up combine.
--   face 🎦 the composed frame; runner-up 🎬, worn (the-scene-loader's).
--
-- Etymology and sensory rows are the atoms table's triggers' work and are not
-- written here.
--
-- NO CROSSING: nothing here reaches flowing, no update runs on public.awen and
-- nothing is deleted.
-- ============================================================

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values

('The Delivery', 'the-delivery', 'transform',
 'The delivery master''s plan. Which encoder profile and level a picture earns from its size and its rate, the container''s timescale, the sample durations, the key-frame interval and the track plan — all held as tables and resolved to numbers by arithmetic. What a finished file is stands as laws in a table too: container, codec, profile, level, frame rate, bit rate, colour range, and the sentence naming the format the machine cannot make. A width, a height, a rate, a duration, a wanted container and what the machine admits to go in; encoder settings and a container track plan come out, or a refusal by name. The walk ends in H.264 rather than refusing it, and it does so as a second codec table standing beside the first, never as an edit to the first. This is the keel ruling''s arithmetic half, and it is platform-free.',
 'resonance-awen/tools/the-delivery', 'imagined', '🗜️', 'Awen',
 (select id from public.atoms where atom_word = 'delivery'),
 'Described 2026-09-14 as W1 of resonance-sceal/docs/THE-SCEAL-WATERS.md and as W1 of resonance-ardan/docs/THE-ARDAN-WATERS.md — one water in two documents, seeded once here; seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: the-kinema''s PREFERRED_CODECS, codecWalk, pickVideoCodec and H264_REFUSED (the-kinema/src/index.ts:307,314,342,323), all WebM-shaped, with H264_REFUSED (src/index.ts:323) refusing H.264 by name; the-kinema''s frameTimes, frameIndexAt, evenSize, outputSize, isKeyFrame, planCuts and refusalFor beside them; and the-encoder''s contract as the shape (the-encoder/src/lib.rs:23-31). THE WALL SCEAL NAMES: editing the first codec table would make a WebM render start claiming a container it cannot write, so this water is a second table beside it and never an edit to it. CONSUMED BY: sceal, ardan (film.ts), theophany''s take (THE-THEOPHANY-PLAN.md:63), khoros. MARK: medium in sceal''s reckoning, small in ardan''s; step 4 of sceal''s order and step 1 of ardan''s, each needing no app surface. It serves the keel ruling of plan row 0.14, KP verbatim: "keel, yes final result is intended to be a finished product in its final format" (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:677).',
 'a platform hand, at KP''s ⚛ word'),

('The Keel', 'the-keel', 'emit',
 'The keel crate. Frames and mixed sound go in; one MP4 in the operating system''s own H.264 comes out — container bytes, and a plain sentence for every refusal. A Rust crate on the-encoder''s precedent and on the tier it already holds, with the encoder itself behind a declared door and two reference hosts, Media Foundation on Windows and MediaCodec on Android, under the-kinema''s host-surface law and the-clavis''s before it. The delivery plan is what it is handed, and it invents no number of its own. The format the operating system lacks is named, never guessed.',
 'resonance-awen/tools/the-keel', 'imagined', '⛵', 'Awen',
 (select id from public.atoms where atom_word = 'keel'),
 'Described 2026-09-14 as W2 of resonance-sceal/docs/THE-SCEAL-WATERS.md and as W2 of resonance-ardan/docs/THE-ARDAN-WATERS.md — one water in two documents, seeded once here; seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: nothing. sceal''s src-tauri/ carries no media crate at all (src-tauri/Cargo.toml) and neither does ardan''s (src-tauri/Cargo.toml); the-encoder is audio only (Cargo.toml: symphonia through rodio, WAV out); the-kinema is TypeScript over WebCodecs. CONSUMED BY: sceal, ardan, theophany, and sistrum''s own delivery road. MARK: large in both documents; step 5 of sceal''s order, at plan row 0.14''s keel ruling, one door at a time, and step 2 of ardan''s, the only step there needing a machine of each kind to prove on. THE WALLS BOTH DOCUMENTS NAME: the two doors cannot be proven on one machine, and a green gate on Windows says nothing about Android; Windows and Android are the two platforms the keel ruling names, and macOS, iOS and Linux are not named and are not planned. ffmpeg is not a road until a format the operating system lacks asks for one (THE-FINAL-FEATURES-PLAN.md:678-679). THE RULING IT IS BORN UNDER, KP verbatim: "keel, yes final result is intended to be a finished product in its final format" (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:677), plan row 0.14 (:207, ruled :677).',
 'a platform hand, at KP''s ⚛ word'),

('The Index', 'the-index', 'witness',
 'The container index. A WebM or an MP4 walked as bytes into a table of samples: each sample''s offset, its size, its timestamp, whether it is a key frame, and which track it belongs to. Container bytes go in, or a byte-range reader handed in; an index of samples per track comes out. Pure byte arithmetic, provable on fixtures. This is the thing that makes a render stop being real time, because a frame can be asked for instead of waited for.',
 'resonance-awen/tools/the-index', 'imagined', '🧭', 'Awen',
 (select id from public.atoms where atom_word = 'index'),
 'Described 2026-09-14 as W3 of resonance-sceal/docs/THE-SCEAL-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: the-kinema holds only EBML_SIGNATURE, SEGMENT_ID and isWebm (index.ts:500,502,505) and states that the frame source "is not built here" (the-kinema/README.md, Honest limits). CONSUMED BY: sceal, ardan, khoros (a player that seeks), theophany. MARK: large; plan row 3.37, a frame-accurate decode path so a render is not real time (THE-FINAL-FEATURES-PLAN.md:297), and step 6 of sceal''s order. The decode path''s platform half stays the app''s door; this water is its arithmetic.',
 'a platform hand, at KP''s ⚛ word'),

('The Mask', 'the-mask', 'transform',
 'The mask plane and its operations. A mask is its own byte plane and never the pixels'' alpha, so every control stays reversible: feather by three box blurs, at a cost independent of the radius; expand; smooth; levels; invert; apply-to-alpha; and content bounds. Alpha is estimated in linear light along the soft edge, the old background''s colour decontaminated and defringed. Three ways in: chroma key, edge removal and a magic wand. A picture''s bytes, a mask and a region go in; a new mask comes out, or pixels with the mask applied. One widening beyond the origin: the same box-blur engine runs over colour planes and not only over the mask, so a background can be blurred rather than replaced.',
 'resonance-awen/tools/the-mask', 'imagined', '🧲', 'Awen',
 (select id from public.atoms where atom_word = 'mask'),
 'Described 2026-09-14 as W4 of resonance-sceal/docs/THE-SCEAL-WATERS.md, a harvest; seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: the code stands whole and pure at resonance-cruthu/src/lib/image/maskops.ts:429,482,524,565, matting.ts:251,377,481 and bgremove.ts:223,281,310 — no DOM, and the only import from outside the folder is ../core/geom. The water is a copy and the origin is untouched. The colour-plane widening is the one thing sceal needs that cruthu does not have. THE MODEL IS THE DRESS: only the mask a segmentation model produces crosses in, and no water names a model. CONSUMED BY: cruthu (the origin), sceal, theophany, ardan. MARK: medium; plan row 3.40, background blur and background replacement on capture (THE-FINAL-FEATURES-PLAN.md:642), and step 3 of sceal''s order, where 3.40 closes with no keel and no model in the spring. KP on sceal, verbatim: "needs background blurring, and changing - this should be our own "tiktok live"/"streamlabs" but with the focus on recording and editing and producing first, then streaming through khoros.audhdities on a subdomain system" (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:575).',
 'a platform hand, at KP''s ⚛ word'),

('The Matte', 'the-matte', 'transform',
 'The matte over time. A mask jitters between frames, and an edge must not crawl. A previous mask, a new mask and the elapsed milliseconds go in; a settled mask comes out. Hysteresis sits on the per-pixel decision, and a floor stands under how far an edge may move in one frame. The laws are data rather than numbers buried in the arithmetic. It holds no clock: the elapsed span is handed to it. It is the other half of 3.40, and theophany meets the same problem on a reading; meetings and nemeton share it.',
 'resonance-awen/tools/the-matte', 'imagined', '🧷', 'Awen',
 (select id from public.atoms where atom_word = 'matte'),
 'Described 2026-09-14 as W5 of resonance-sceal/docs/THE-SCEAL-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: nothing. CONSUMED BY: sceal, theophany (the same problem on a reading), meetings, nemeton. MARK: small, the other half of plan row 3.40 (THE-FINAL-FEATURES-PLAN.md:642); step 3 of sceal''s order, after the mask plane, needing no app change, no model and no crate.',
 'a platform hand, at KP''s ⚛ word'),

('The Cuts', 'the-cuts', 'arrange',
 'The edit list as a document. A cut is an in and an out across one take at an ordinal, carrying its gain, its mute, its titles and its captions. A cut list, an edit, or a document''s text goes in; a new list, a placed cut, or a document comes out. It holds the document and its byte-identical round trip, the placed lookup at a master millisecond, reorder, remove, validate, and the gain resolved. The render arithmetic stays where it already stands and is not restated here.',
 'resonance-awen/tools/the-cuts', 'imagined', '🪚', 'Awen',
 (select id from public.atoms where atom_word = 'cut'),
 'Described 2026-09-14 as W6 of resonance-sceal/docs/THE-SCEAL-WATERS.md, a harvest; seeded imagined 2026-09-15 at KP''s ⚛ word. Rides the root cut; the plural is the modifiers'' work. WHAT STANDS ALREADY: the code is pure already at src/lib/cuts.ts, whose header reads "pure — no runes, no IPC, no DOM", proven by .journals/proofs/cuts-arithmetic.proof.ts and cut-list-roundtrip.proof.ts. THE REFUSALS IT INHERITS, the document''s own walls: cutLength, byOrdinal, cutStart and totalLength already stand twice, at src/lib/cuts.ts:58,63,71,79 and the-kinema/src/index.ts:199,204,212,220, so this water carries the document only and restates none of them, a third copy refused under law 1 of the spring (resonance-awen/README.md); effectiveGain stands twice as well, sistrum the mother and src/lib/cuts.ts:53 the duplicate, and the-kinema''s refusal of a third is inherited here. CONSUMED BY: sceal, ardan (a board''s cut list), theophany''s take. MARK: small; step 1 of sceal''s order with the timed overlay and the camera walk — the three harvests whose proofs already stand in that repo, the origins untouched.',
 'a platform hand, at KP''s ⚛ word'),

('The Overlay', 'the-overlay', 'arrange',
 'The timed overlay. Titles and captions stand as rows on a cut''s own clock, so a row rides its cut through a re-order. Visibility is half-open and clipped at the cut''s length; the track is laid on the master timeline; the layout follows position and size; lines wrap. The WebVTT document is written and read back. One draw routine is handed a 2D context, so preview and render cannot disagree. Rows, a cut list, an offset and a picture size go in; the visible rows, a layout, a VTT document and draw calls come out.',
 'resonance-awen/tools/the-overlay', 'imagined', '📺', 'Awen',
 (select id from public.atoms where atom_word = 'overlay'),
 'Described 2026-09-14 as W7 of resonance-sceal/docs/THE-SCEAL-WATERS.md, a harvest; seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: the code is pure but for the draw at src/lib/titles.ts:108,126,155,187 and src/lib/captions.ts:102,142,230, proven at .journals/proofs/title-overlay-timing.proof.ts, captions-vtt.proof.ts and caption-burn-in.proof.ts. Plan row 2.48 — captions in sceal, VTT out and burn-in (THE-FINAL-FEATURES-PLAN.md:85, :263) — is built and is this water''s origin, with its journal at .journals/realm/2026-09-13-sonnet-captions.md. CONSUMED BY: sceal, ardan, khoros (a release carrying captions), scribe. MARK: small; step 1 of sceal''s order, the origin untouched.',
 'a platform hand, at KP''s ⚛ word'),

('The Lifecycle', 'the-lifecycle', 'emit',
 'The publish lifecycle and its documents. The outbound stream''s state stands as pure state — idle, offered, live, closing, closed — with what each transition needs and what each refusal says. The offer and the answer stand as documents, parsed and rendered the way a VTT or an m3u8 already is. The bitrate ladder and the step-down on a measured throughput stand as a table. A declared stream shape, a host''s poll and a measured throughput go in; the next state, the documents, a bitrate, or a named refusal come out. It opens nothing.',
 'resonance-awen/tools/the-lifecycle', 'imagined', '🕯️', 'Awen',
 (select id from public.atoms where atom_word = 'lifecycle'),
 'Described 2026-09-14 as W8 of resonance-sceal/docs/THE-SCEAL-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: the-hlid''s lifecycle-as-pure-state is the shape (resonance-awen/tools/the-hlid/), and the-sruth is the far side of a stream and reaches for none of it (the-sruth/README.md). CONSUMED BY: sceal, sistrum (plan row 4.20), khoros (5.11), meetings (4.25), nemeton — the family the meetings ruling sends to the spring first (THE-FINAL-FEATURES-PLAN.md:710). MARK: medium; plan row 4.21, live streaming out to khoros (THE-FINAL-FEATURES-PLAN.md:648), after 0.19, and step 8 of sceal''s order with the scene. THE WALL: it waits on 0.19, because khoros''s subdomain and what serves it is KP''s word, and a publisher with no host to publish to is a water with no consumer. KP on why the spring holds it, verbatim: "this is why awen exists, because stand alone tools exist needed in multiple places" (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:710).',
 'a platform hand, at KP''s ⚛ word'),

('The Ledger', 'the-ledger', 'combine',
 'The keeping''s ledger. Two manifests go in — each a creation''s working state as a list of what it holds, every entry with a revision or a stamp and a digest, one side a device''s own and the other a keeping''s listing of what it already has — and out comes the carry plan: what to send up, what to fetch down, what is already the same, and what two sides changed at once. It says which copy is ahead and what each did that the other did not. Where neither side contains the other the answer is a divergence, named plainly, with both sides kept and neither chosen. No network, no sign-in and no bytes pass through it: the envelope is the parcel, and this is the decision about which parcel goes which way. It is the client half of the door''s carry verb.',
 'resonance-awen/tools/the-ledger', 'imagined', '🪝', 'Awen',
 (select id from public.atoms where atom_word = 'ledger'),
 'Described 2026-09-14 in three documents and seeded once here: W9 of resonance-sceal/docs/THE-SCEAL-WATERS.md, W7 of resonance-ardan/docs/THE-ARDAN-WATERS.md and W9 of resonance-sistrum/docs/THE-SISTRUM-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: the-envelope holds the parcel and its three verbs (resonance-awen/tools/the-envelope/) — it seals a versioned envelope with counts outside, its mergeNonDestructive merges definition maps key by key and answers no question about time, and deliver and openFrom run through a declared host surface whose host is a file dialog, so nothing in it knows a remote listing or a two-device divergence; the-signet names the hand, the-clavis and the-lok seal and verify the bytes, the-cofra packages. Nothing holds the ledger. CONSUMED BY: cruthu, sceal, sistrum, ardan, kendram, scribe — the six door apps (THE-FINAL-FEATURES-PLAN.md:670). MARK: medium in sceal''s and ardan''s reckoning, large in sistrum''s; step 7 of sceal''s order, step 5 of ardan''s and step 7 of sistrum''s, after the door''s shape, with six apps waiting on the one water. THE WALL: it answers which copy is ahead and does not merge two divergent boards — a divergence is refused plainly and the person chooses; the sign-in and the HTTP of carry and offer are the app''s, and this water decides while the wire carries. THE DOOR''S RULING, KP verbatim: "moving from web to mobile to desktop should become a smooth transition for whatever the vessel is in need of doing" (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:716-717).',
 'a platform hand, at KP''s ⚛ word'),

('The Walk', 'the-walk', 'arrange',
 'The camera walk''s table. The constraints tried in order stand as data: the facing mode as an ideal, then a width, then every enumerated device one at a time. One plain sentence answers each failure name, so a refusal is told and never swallowed. A failure name, a device list and a wanted facing go in; the next constraint to try comes out, or the sentence. The call itself is the host''s: this water asks for no camera and opens none.',
 'resonance-awen/tools/the-walk', 'imagined', '🎥', 'Awen',
 (select id from public.atoms where atom_word = 'walk'),
 'Described 2026-09-14 as W10 of resonance-sceal/docs/THE-SCEAL-WATERS.md, a harvest; seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: the walk stands at src/routes/capture/+page.svelte:69-93 — lantern''s walk, carried there with audio. getUserMedia and MediaRecorder stay the dress (src/routes/capture/+page.svelte:71, :168). CONSUMED BY: sceal, theophany''s sight, meetings, nemeton, sistrum''s microphone, lantern. MARK: small; step 1 of sceal''s order with the cuts and the timed overlay, the origin untouched.',
 'a platform hand, at KP''s ⚛ word'),

('The Scene', 'the-scene', 'arrange',
 'The scene and its sources. The live layout stands as data: named sources, each with a rect, a z, a visibility and a crop; scenes as sets of those sources; and the switch from one scene to another with its timing. Sources, a scene and a moment go in; a frame''s draw plan comes out, ordered bottom-first. The plan is what a compositor is handed. It is the live half of the video studio — the sources a host arranges and switches between.',
 'resonance-awen/tools/the-scene', 'imagined', '🎦', 'Awen',
 (select id from public.atoms where atom_word = 'scene'),
 'Described 2026-09-14 as W11 of resonance-sceal/docs/THE-SCEAL-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS ALREADY: nothing pure. the-cumdach and the-tether are the measuring shape; cruthu''s compositor is canvas-bound and document-sized (resonance-cruthu/src/lib/image/composite.ts:11-16), and ardan''s film.ts paints a board. CONSUMED BY: sceal, ardan (the stage), theophany (a puppet as a source), khoros. MARK: medium; step 8 of sceal''s order with the publish lifecycle, waiting on 0.19 for the same reason — a switcher with no host to publish to is a water with no consumer. It is the streamlabs half of KP''s sentence, verbatim: "needs background blurring, and changing - this should be our own "tiktok live"/"streamlabs" but with the focus on recording and editing and producing first, then streaming through khoros.audhdities on a subdomain system" (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:575).',
 'a platform hand, at KP''s ⚛ word');

-- ── verify (read-only, safe to re-run) ───────────────────────────────

-- the eleven rows as they stand:
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen
where slug in ('the-delivery', 'the-keel', 'the-index', 'the-mask', 'the-matte',
               'the-cuts', 'the-overlay', 'the-lifecycle', 'the-ledger',
               'the-walk', 'the-scene')
order by slug;

-- each face of this paper and everyone wearing it — eleven faces, one wearer each:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name) as worn_by
from public.awen
where icon_emoji in ('🗜️', '⛵', '🧭', '🧲', '🧷', '🪚', '📺', '🕯️', '🪝', '🎥', '🎦')
group by icon_emoji
order by icon_emoji;

-- the atoms these rows ride, all standing before this paper runs:
select atom_word, category_name, atom_type, state, status, modifiers
from public.atoms
where atom_word in ('delivery', 'keel', 'index', 'mask', 'matte', 'cut',
                    'overlay', 'lifecycle', 'ledger', 'walk', 'scene')
order by atom_word;
