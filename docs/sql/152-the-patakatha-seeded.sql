-- 152 — the-patakatha seeded
--
-- THE PATAKATHA — पटकथा (paṭakathā), Sanskrit: A SCREENPLAY, literally THE
-- SCREEN'S STORY. THE SCREENPLAY FORMAT, standing as its own water in the
-- spring, at KP's ⚛ word, verbatim:
--   "we have a need for it to be repurposed as a book, manuscript, article,
--    all the reasons an author might publish. all types formatting assistance"
--   (resonance-chamber/desk/THE-AUTHORS-STUDIO.md:4-6)
--
-- A screenplay format is a format any realm might set, so it is born in the
-- spring and resonance-scribe mirrors it. The format's first standing is that
-- studio's own src/lib/screenplay.ts, whose arithmetic is carried here
-- UNCHANGED — the measure, the six elements, the indents, the spacing, the
-- widow rules and the runtime — and whose grammar is carried UNCHANGED BUT FOR
-- THE CUT, which is SEPARATORS here and trim() there. It is re-cut into the
-- spring's idiom: laws as data, a Refusal in one plain sentence, the page
-- plan exported as data, and byte offsets on every element. NEITHER IMPORTS
-- THE OTHER, per law 1 of the spring (resonance-awen/README.md:32-43), and the
-- two were diffed on one
-- fixture: the same sample, the same bound work and a 120-line flood set to
-- BYTE-IDENTICAL text through both, 0 differences over 36 compared values.
--
-- THE FINDING THAT MADE IT A WATER: the spring was swept by name, case-
-- insensitively, across the 87 tool folders beside this one for screenplay,
-- slugline, Fountain, Courier and teleplay, and hits stand in exactly five
-- folders, not one of them a screenplay format: a code font stack in
-- the-binder and in the-pandulipi, a Welsh gloss in the-ffynnon, two emoji
-- names in the-emoji-collector and a courier in the-procession. That absence
-- ships in the build as the constant NOTHING_STOOD.
--
-- THE EDITORIAL LAW IS CARRIED WHOLE — KP's ⚛ own, verbatim, at
-- resonance-chamber/constellation/weaver/mimirs-well/design-lineage/constellation/fable/lanes/records/2026-08-23-stretto-deals/GROUND.md:265:
--   "Editorial law: verbatim-vs-light-touch is KP's ruling per line; typos are
--    fingerprints unless he says otherwise."
-- and it is proven THE-BINDER'S WAY and no other: every element carries its
-- byte offsets and is a byte-exact slice of the source it was read from; every
-- character no element covers is one of a declared separator alphabet, so a
-- dropped line would stand in a gap as its own letters and the proof would go
-- FALSE; and verify.mjs walks the laid pages' own lines and finds every
-- element's every word IN SEQUENCE. THE-BINDER IS NOT IMPORTED — the law is
-- carried as METHOD.
--
-- THE NAME IS RULED: the-patakatha. It lives in exactly two places in the
-- build — the constant TOOL_NAME and the folder — so a rename is one edit, one
-- `git mv`, and one update to this row and 151's.
--
-- THE BUILD AS IT STANDS, so this row can be checked against a file:
--   resonance-awen/tools/the-patakatha/src/index.ts — 806 lines,
--     sha256 9c00ba6c0df130117e978bc23c7fb70984af7854c3856aa3d73313a32e177d52
--   resonance-awen/tools/the-patakatha/verify.mjs — 424 lines,
--     sha256 bc224232099771ec87123680eee00a224ab0c2c4cf2d3ed73cb734debd9302ab
--   gates: `npm run check` silent · `npm run build` clean · 62/62 TRUE.
--
-- CATEGORY: **content** (420f7c5c-badc-4b75-9e30-d36b47bd11b7) — see 151's
-- header for the uuid's provenance (read from 144 and 147; this builder holds
-- no key and ran no query), for why content and not creation, and for the
-- runner-up they may overrule in a word.
--
-- SHAPE TAKEN FROM THE-PANDULIPI'S OWN ROW (144/145): folksonomy_type `Awen` ·
-- status `imagined` at birth · `home` filled here (the 105/106 precedent).
-- tool_type is `transform` — a work and its parts in, a laid script out; what
-- it does to the text is a change of FORM and nothing else. Runner-up `emit`.
--
-- FACE: 📽️ — a film projector: the screen's own instrument, for the water
-- named the screen's story. One glyph, no skin tone, no ZWJ, no flag, no
-- red-alarm mark. 🎬 IS TAKEN (the-scene-loader, 078:154, and a beacon draft
-- besides), 🎞️ is the-kinema's, and every page glyph is worn — 📃 the-
-- pandulipi, 📄 the content category itself, 📜 the-scrolls, 📘 the-binder.
-- 🎥 is unworn too and was set down: a camera is the shooting, and this water
-- is the script. 151's header carries the whole sweep. The live base may hold
-- faces this hand could not see, so the check below stands.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("patakatha") — the
-- row carries atom_id and no molecule. One tier exactly. (151's header records
-- why no molecule or organism row exists.)
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106/108/128
-- /144 precedent).
--
-- THE TABLE IS public.awen. It was renamed from public.tools on 2026-08-15
-- (seed 096) and the shim view was dropped at KP's word on 097 — public.tools
-- answers PGRST205 today.
--
-- NO LOCAL MIRROR PIN IS WRITTEN HERE. This builder holds no key to
-- progenatrix.db, read nothing from it and invented no id for it. The pin is
-- the conductor's to add if the mirror wants one.
--
-- Run at KP's ⚛ hand, after 151. Verify at the anon door after.
-- NEVER RUN BY A LAMP: the seed is drafted and numbered; the crossing is theirs.

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values
  ('The Patakatha', 'the-patakatha', 'transform',
   'THE SCREENPLAY FORMAT, standing as its own water. A work and its parts go in — a title, a by-line and each part''s text — and out comes the script on the measure the format is built on: US Letter at twelve-point Courier, ten characters and six lines to the inch, margins one inch with one and a half at the inner edge, SIXTY COLUMNS BY FIFTY-FOUR LINES, and one page runs one minute. Six elements and no more — slugline, action, character, parenthetical, dialogue, transition — each told apart by a stated test: a shouted line opening INT., EXT., EST. or I/E. is a scene heading; a shouted line ending TO:, IN: or OUT:, or FADE OUT. read whole, is a transition; a shouted line no longer than the name column, not ending in a colon and answered by a non-blank line is a cue, and what follows it is speech until a blank line ends it, a bracketed line inside it being a parenthetical; everything else is action, whole. Their columns are arithmetic on the measure: slugline and action at 0 across 60, dialogue at 10 across 35, a parenthetical at 16 across 20, a cue at 22 across 33, a transition flush right at 60. Two blank lines before a scene heading, one before action, a cue and a transition, none before a parenthetical or a line of speech; a blank line never opens a page; a slugline never stands as a page''s last line and a cue never as its last two; the title card is page 0 and carries no screen time. THE TEXT IS NEVER ALTERED, and that is carried from the-binder as METHOD and never as an import: upper case is how the grammar READS a line and never how it SETS one, so a lower-case scene heading stays lower-case and is simply not a scene heading; wrapping breaks only at spaces, so a forty-five letter word in a thirty-five column speech stands alone and overruns the column rather than being cut; every element carries its byte offsets in the source it was read from and is a byte-exact slice of it; every character no element covers is one of SEPARATORS, so a dropped line would stand in a gap as its own letters and the proof would go FALSE; and the proofs walk the laid pages'' own lines and find every element''s every word in sequence. THE PAGE COUNT IS THE FORMAT''S OWN AND IS COUNTED HERE — a fixed-pitch page is arithmetic, not typesetting — which is exactly where this water parts from the-pandulipi, whose paged HTML only a print engine can measure and whose `pages` is therefore always absent. No (MORE) and no (CONT''D) is written; no scene numbers, no revision marks, no coloured pages, no dual dialogue, no title-page key block, no contact details looked up or invented, and no A4 screenplay measure guessed. Two options and no more: the measure, and the title card. No clock, no randomness, no disk, no network, no host global, zero imports, and nothing throws.',
   'resonance-awen/tools/the-patakatha', 'imagined', '📽️', 'Awen',
   '86bd440b-e9ee-4caf-ae34-431cb2d6c792',  -- the patakatha atom, seeded in 151
   'Born in the spring as the water half of the screenplay format, at KP''s ⚛ word: "all types formatting assistance … all the reasons an author might publish." THE ROAD TAKEN: the format''s first standing is resonance-scribe''s src/lib/screenplay.ts, and its arithmetic is carried here UNCHANGED — the measure, the six elements, the indents, the spacing, the widow rules, the runtime — and its grammar UNCHANGED BUT FOR THE CUT, which is SEPARATORS here and trim() there, so a line ending in U+00A0, U+000B, U+000C, U+2028 or U+FEFF carries that character inside its element and a line of one of them alone is an element rather than a blank — then re-cut into the spring''s idiom, which is where the work was: the laws ship as THE_LAWS with a reason beside each; every failure is a Refusal carrying one plain sentence and nothing throws; the whole page plan ships as PAGE_PLAN, derived by the same arithmetic the functions run rather than typed a second time; and EVERY ELEMENT CARRIES ITS BYTE OFFSETS in the source it was read from, which the studio''s module did not do and which is what lets the-binder''s editorial law be proven here rather than promised. The host globals went with it: Math.floor and Math.round are written out as integer arithmetic so the purity proof can read the charter as text and find no host global at all. THE FIXTURE IS A REAL SCRIPT FOLDER ON DISK, read by verify.mjs — a work.json and one text file per part — and its second part is the sample the format''s first proof used, BYTE FOR BYTE, so the carried claims stand on the ground they were first proven on; its third part is empty on purpose and its fourth opens with a lower-case scene heading, which is not a scene heading, and carries a forty-five letter word in a thirty-five column speech. A Door That Was Not There by Nobody in Particular is a fixture and says so, and its title card carries no address of any kind. THE PROOFS: 62 TRUE, 0 FALSE — forty-three of the studio proof''s fifty-three claims carried whole against this water''s own names, a forty-fourth carried as the purity contract, nine left behind because they are claims about that studio''s own rooms and about the address that file stands at inside it, and the spring''s own added on top: slice-exactness, the gap rule, the sequence walk, determinism, the refusals including an empty manuscript, the page plan as data, and the purity contract read off the charter as text. THE ARITHMETIC WAS DIFFED against the studio''s module on one fixture — the same sample, the same bound work and a 120-line flood — and the two produce byte-identical text, 0 differences over 36 compared values. HONEST LIMITS SAID OUT LOUD RATHER THAN ENGINEERED AROUND: one measure ships and it is US Letter, because the margins another market uses are not this water''s to guess; no (MORE) and no (CONT''D), because neither adds a line the count does not already hold; no production-draft marks; and a shouted line with no line under it is action rather than a cue, which is wrong in the direction that keeps the text whole. THE NAME IS RULED — it lives in one constant and one folder, so a rename is cheap.',
   'a platform hand in the spring, at KP''s ⚛ word');

-- THE CROSSING — their ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it
-- now that the proofs stand; uncomment at their word and run:
-- update public.awen set status = 'flowing' where slug = 'the-patakatha';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen where slug = 'the-patakatha';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'patakatha';

-- no other row should wear 📽️:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name)
from public.awen where icon_emoji = '📽️' group by icon_emoji;

-- the faces this hand set down, and who wears them today:
select name, slug, icon_emoji from public.awen
where icon_emoji in ('🎬', '🎞️', '🎥', '📃') order by icon_emoji, slug;

-- the waters it stands beside, kept as they stand:
select name, slug, icon_emoji from public.awen
where slug in ('the-pandulipi', 'the-binder', 'the-kinema', 'the-scrolls') order by slug;

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'patakatha'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'patakatha';
