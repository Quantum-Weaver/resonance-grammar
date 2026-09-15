-- ============================================================
-- 155 — THE ARDAN WATERS, SEEDED (four rows of public.awen)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
--
-- SOURCE, and the only source: resonance-ardan/docs/THE-ARDAN-WATERS.md,
-- rows W3, W4, W5 and W6 of its table "The waters to imagine". Each row's
-- definition is that row's own what-it-does, in and out. Each row's story is
-- that row's what-stands-already with the document's own addresses, its
-- shared-with column, its mark, and the step it holds in the document's order.
--
-- RUNS AFTER 153-the-imagined-waters-atoms.sql. Two of the four atoms are born
-- there, and every atom_id here is a subquery on atom_word, so this paper is
-- refused rather than half-seeded if 153 has not run.
--
-- THE FOUR ROWS:
--
--   the-parts  · atom `part`  · STANDS (content, modifiers ["s"] stands, so
--     the plural is the modifiers' work and the row rides the singular root)
--     type `transform` — an SVG document as text in, a tree of named parts
--       out: one truth, another form. Runner-up `translate`.
--     face 🧱 — the named pieces a body is built from. Runner-up 🪟, set down
--       because a window is a view and this water is a read.
--
--   the-reel   · atom `reel`  · BORN IN 153
--     type `arrange` — shots placed in deliberate relation in time on one
--       clock. Runner-up `combine`.
--     face 🎡 — a wheel that turns, the shots coming round on one clock.
--       Runner-up 🎢, set down because a coaster is a ride, not a reel.
--
--   the-stack  · atom `stack` · STANDS (collections)
--     type `arrange` — the layers put in paint order, each resolved at one
--       millisecond. Runner-up `combine`, set down because this water resolves
--       a stack and does not blend pixels.
--     face 🗂️ — dividers standing in order. Runner-up 🪜.
--
--   the-grade  · atom `grade` · BORN IN 153
--     type `transform` — a look key in, a per-channel transform out.
--       Runner-up `arrange`, for the grade track across shots.
--     face 🖌️ — a brush, the look laid on. Runner-up 🪣.
--
-- Every face is one grapheme, no skin tone, no ZWJ sequence, no flag, no
-- red-alarm mark, and none is worn by the 105 rows the spring carries today.
-- No two rows in this paper wear the same one. The live base may hold a face
-- this hand could not see, so the verify select below stands.
--
-- CATEGORY is a column of public.atoms and of no awen row — 153 holds the
-- category of `reel` and of `grade`, and `part` and `stack` carry theirs
-- already (content, collections).
--
-- THE ONE-TIER LAW (tools_one_tier), walked: every name here is one word, so
-- every row carries atom_id and leaves molecule_id and organism_id null. One
-- tier exactly, four times.
--
-- Etymology and sensory rows are not written here: the atoms table's triggers
-- make both on insert (the 077/059/106/108/128/144/151 precedent).
--
-- STATUS IS `imagined` ON ALL FOUR. Nothing here crosses to `flowing`: that is
-- KP's ⚛ hand alone, and no update on public.awen stands in this paper.
--
-- Ardan's W1 (the delivery planned), W2 (the keel) and W7 (the carry
-- reconciled) are the same waters as sceal's W1, W2 and W9 and are seeded once,
-- in 156. Ardan's W8 is an addition to the-metronome, not a water, and gets no
-- row.
--
-- The law the split follows, KP's word 2026-09-14
-- (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:710): "this is why awen
-- exists, because stand alone tools exist needed in multiple places."
-- ============================================================

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji,
   folksonomy_type, atom_id, molecule_id, organism_id, story, created_by)
values

('The Parts', 'the-parts', 'transform',
 'An SVG document read as parts. The document''s groups are walked in order: each group''s name, its transform, its opacity and its bounds are read, and the groups nest as a tree — the shape a rig or a puppet document is built from. In goes an SVG document as text. Out comes a tree of named parts, each carrying its bounds and its transform, and beside it a telling of what could not be read. The work is pure string work with no DOM, as the writing half of the same road already is: the house builds an SVG by pure string building, each layer a group carrying a name, a transform and an opacity, and nothing in the house reads one back. This water is that reading half.',
 'resonance-awen/tools/the-parts', 'imagined', '🧱', 'Awen',
 (select id from public.atoms where atom_word = 'part'), null, null,
 'Described 2026-09-14 as W3 of resonance-ardan/docs/THE-ARDAN-WATERS.md and seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS: the writing half only — resonance-cruthu/src/lib/vector/svg.ts (svgOfDocument, each layer a group with a data-name, a transform and an opacity, pure string building). Nothing in the house reads an SVG. The target shape is ardan''s src/lib/stage/rig.ts. CONSUMED BY ardan (§15 row 4.23), theophany (the puppet document) and cruthu (round trip). MARK medium, and the third step of the document''s order: with theophany''s W1 on a mirror this is the whole of 4.23. The wall named beside it — W3 reads cruthu''s own SVG, whose groups carry data-name and a transform, and a pivot is one point per part that cruthu does not carry today, so the pivot is placed after the read, on the board or in theophany''s own room. The charter it serves is KP''s, 2026-09-14 (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md §15): "meant to be animation studio, needs to work like one regardless of any misaligned wording found in the old comments- (create graphics in cruthu, animate them in ardan, if it is a deeper animation such as character movements, theophany would fall into the mix, finished products -> also then streaming through khoros.audhdities on a subdomain system". The row rides the root `part`, whose modifiers already carry "s", so the plural is the modifiers'' work. One hand and one verifier, proofs in the water''s own folder, mirrored into its consumers by copy with a MIRROR.md.',
 'a platform hand, at KP''s ⚛ word'),

('The Reel', 'the-reel', 'arrange',
 'A shot, and shots in a row. What a shot is, held as keys: a slug, a size key, a move key, a duration key and an order. In go shots as keys and durations. Out comes the reel laid on one clock — each shot with its start and its length — and the runtime derived from the whole. The shot is the unit this water names and holds, and the row of shots on a single clock is what it derives: the runtime is arithmetic over the durations rather than a number carried beside them. Neither a lane of beats, nor a board called a storyboard frame, nor a count of screenplay pages stands in for a shot here.',
 'resonance-awen/tools/the-reel', 'imagined', '🎡', 'Awen',
 (select id from public.atoms where atom_word = 'reel'), null, null,
 'Described 2026-09-14 as W4 of resonance-ardan/docs/THE-ARDAN-WATERS.md and seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS: nothing that knows a shot. the-conductor lays beats in lanes and knows no shot. the-scene-loader calls a board a storyboard frame and declares no shot. the-patakatha counts screenplay pages and runtime and knows no shot. CONSUMED BY skapa (§15 row 4.17''s storyboard room), ardan, sceal and scribe. MARK medium, and the sixth step of the document''s order, which needs no app surface: it is written, proven and mirrored on its own. The atom `reel` is born in 153. One hand and one verifier, proofs in the water''s own folder, mirrored into its consumers by copy with a MIRROR.md.',
 'a platform hand, at KP''s ⚛ word'),

('The Stack', 'the-stack', 'arrange',
 'The stack at a millisecond. A layer stack in which blend, opacity, transform and adjustment each ride a track of keys, and the stack resolved in order at one moment — compositing over time, as arithmetic. In goes a stack, its tracks and a millisecond. Out comes the stack in paint order, each layer carrying its blend key, its opacity and its transform at that moment. Two questions are answered at once: in what order the layers paint, and what each layer is at the millisecond asked. Varying a stack over time is the part nothing standing does — still layers composite in one realm, one mark at a millisecond derives in another, and neither of those is a water and neither varies a stack.',
 'resonance-awen/tools/the-stack', 'imagined', '🗂️', 'Awen',
 (select id from public.atoms where atom_word = 'stack'), null, null,
 'Described 2026-09-14 as W5 of resonance-ardan/docs/THE-ARDAN-WATERS.md and seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS: resonance-cruthu/src/lib/image/composite.ts (1 037 lines) and blend.ts composite still layers, and src/lib/stage/score.ts (soundingAt) and rig.ts (rigAt) in ardan derive one mark at a millisecond. Neither is a water, and neither varies a stack over time. CONSUMED BY ardan (row 4.17), sceal and cruthu. MARK medium, and the seventh step of the document''s order, which needs no app surface. The wall named beside it — W5 resolves a stack and does not blend pixels: the pixel arithmetic stands in cruthu and is a harvest question. One hand and one verifier, proofs in the water''s own folder, mirrored into its consumers by copy with a MIRROR.md.',
 'a platform hand, at KP''s ⚛ word'),

('The Grade', 'the-grade', 'transform',
 'A grade, as keys. A look is named as a key and resolved at play time to a per-channel transform, and a grade track carries looks across shots. In goes a look key, a channel value and a millisecond. Out comes the resolved per-channel transform for that moment. Keys are stored and numbers are derived, which is A0''s law applied to colour. What is new is the track: the per-channel arithmetic of levels, curves, exposure, hue and saturation and lookup tables stands already and holds no track of its own, and the water that validates a palette does not grade.',
 'resonance-awen/tools/the-grade', 'imagined', '🖌️', 'Awen',
 (select id from public.atoms where atom_word = 'grade'), null, null,
 'Described 2026-09-14 as W6 of resonance-ardan/docs/THE-ARDAN-WATERS.md and seeded imagined 2026-09-15 at KP''s ⚛ word. WHAT STANDS: resonance-cruthu/src/lib/image/adjust.ts (levels, curves, exposure, hue and saturation, LUTs) and image/curve.ts (curve points to a 256-entry LUT), both cruthu''s own code and holding no track. the-dath validates a palette and does not grade. CONSUMED BY cruthu, ardan (row 3.36) and sceal. MARK small, after W5, and the eighth and last step of the document''s order, which needs no app surface. The wall named beside it — W6''s per-channel arithmetic stands in cruthu and is a harvest, not new thinking, and what is new is the track. The atom `grade` is born in 153. One hand and one verifier, proofs in the water''s own folder, mirrored into its consumers by copy with a MIRROR.md.',
 'a platform hand, at KP''s ⚛ word');

-- ── verify (read-only, safe to re-run) ───────────────────────────────

-- the four rows as seeded:
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen
where slug in ('the-parts', 'the-reel', 'the-stack', 'the-grade')
order by slug;

-- each face of this paper should have exactly one wearer:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name) as worn_by
from public.awen
where icon_emoji in ('🧱', '🎡', '🗂️', '🖌️')
group by icon_emoji
order by icon_emoji;

-- the atoms the four rows ride:
select atom_word, category_name, atom_type, state, status, modifiers, pascal_case
from public.atoms
where atom_word in ('part', 'reel', 'stack', 'grade')
order by atom_word;

-- the faces this hand set down, and who wears them today:
select name, slug, icon_emoji
from public.awen
where icon_emoji in ('🪟', '🎢', '🪜', '🪣')
order by icon_emoji, slug;

-- the waters they stand beside, kept as they stand:
select name, slug, tool_type, status, icon_emoji
from public.awen
where slug in ('the-kinema', 'the-conductor', 'the-metronome', 'the-scene-loader',
               'the-patakatha', 'the-dath', 'the-effects-engine', 'the-stack-engine')
order by slug;
