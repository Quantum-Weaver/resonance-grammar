-- 127 — the-suchi seeded
--
-- THE ORDER THE HOUSE KEEPS: the atom seed FIRST, as its own numbered file
-- (077-the-promenade-atom.sql's shape), then the awen row. 126 is the atom; this
-- is the row, and it references the uuid 126 pins explicitly rather than looking
-- it up by `select … where atom_word =`.
--
-- THE SUCHI — the index. The fourth of four waters raised 2026-09-02 in movement
-- A2 of the Unnamed Waters sitting, by a builder dealt by Windrose 🎻 at KP's ⚛
-- word, verbatim: "hold the Daedalus work and proceed with the rest, we will do
-- it on its own." This file closes the movement, and 127 closes the block of
-- eight seeds it drafted (120–127).
--
-- THE BOARD ROW THIS SERVES — the Unnamed Waters board, ROW 44, carried through
-- resonance-chamber/desk/THE-UNNAMED-WATERS-SITTING.md:79:
--   "the-suchi (Sanskrit sūcī, an index) — the repo that reads itself; the
--    glob's result is the host surface, Vite is never called. Row 44.
--    Seeds 126/127."
--
-- THE HARVEST RULING, KP ⚛ verbatim (row 33, lede·5): "without altering the
-- source location." Honoured to the byte — see 126's header for both sha256s,
-- for which of the sending's two roads was taken and why, and the folder's own
-- HARVEST.md for the function-by-function record of the re-expression, the three
-- deliberate widenings, and the two behaviours the run turned up that the build
-- did NOT repair.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. It lives in exactly two
-- places in the build — the constant TOOL_NAME and the folder — so a rename is
-- one edit, one `git mv`, and one update to this row.
--
-- CATEGORY TAKEN FROM SEED 077'S RECORDED CENSUS; CONFIRMED AT THE ANON DOOR BY
-- KP'S HAND: **content** (420f7c5c-badc-4b75-9e30-d36b47bd11b7). See 126's
-- header for the reading and for the knowledge runner-up left there for KP to
-- overrule in one word.
--
-- SHAPE TAKEN FROM THE-MERISMOS'S OWN ROW (seed 110), which was itself read from
-- the live shelf: folksonomy_type `Awen` · status `imagined` at birth · `home`
-- filled here (the 105/106/110 precedent). tool_type is `arrange` — the verb
-- marks are the Grammar's own (recorded in 078's header), and this water groups
-- and orders papers a host hands it. It SHARES that verb with the-panti (row 39,
-- seeds 120/121) of the same movement and wears a DIFFERENT face (📑 against 📊),
-- which is exactly what 078's law requires of two rows that share anything: the
-- test is "a shared face must never share a tool_type", and these two share the
-- type and not the face.
--
-- FACE: 📑 — tabbed pages. One glyph, no skin tone, no ZWJ, no flag, no
-- red-alarm mark. Absent from 078's census and from 105/106/110/111.
-- THE COLLISION TEST IS THE CONDUCTOR'S AT LANDING.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("suchi") — the row
-- carries atom_id and no molecule. One tier exactly.
--
-- GATES AT LANDING: `npm install && npm run build && npm run check` silent
-- (strict, with "types": [] per the-ffynnon's precaution), `npm run prove`
-- 12/12 TRUE over a transcribed slice of resonance-standards' OWN docs tree —
-- eight real files across the repo root and two real folders, which between them
-- already contained every case this water had to get right, so not one test case
-- was invented.
--
-- Run at KP's ⚛ hand, after 126. Verify at the anon door after.
-- NEVER RUN BY A LAMP.
--
-- Local mirror pin (progenatrix): 4562eb97-affc-4d05-ac9d-fe11bb592ce5

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values
  ('The Suchi', 'the-suchi', 'arrange',
   'THE INDEX — the repo that reads itself, lifted out of the one build tool that made it unshareable. A repo''s own tree drawn from its own file paths, folders before files at every depth and then by name, drawn fresh each time and stored nowhere. Its own markdown grouped by its own folders, the root sorting FIRST whatever it would do alphabetically, each group''s label DERIVED from the folder name rather than looked up in a table somebody has to maintain. AND EACH PAPER''S TITLE TAKEN FROM THE PAPER''S OWN FIRST HEADING — never a string typed beside it — so a document renamed in its own first line is renamed everywhere at once, emoji and em-dashes surviving verbatim. The house''s one-line italic gloss under a heading becomes the blurb where it is there and null where it is not: a badge line is not a gloss and neither is a bold-prefixed one. A FILE WITH NO HEADING FALLS BACK TO ITS OWN FILENAME and is not dropped from the index — a fallback said out loud, with no title invented. A paper that declares itself a MIRROR-class self-map is known by that phrase in its own text and never by its filename, so a future self-map inherits the rule by saying so. THE WATER OWNS NEITHER VITE NOR THE GLOB: it declares the glob''s RESULT as a host surface of ONE VERB — entries(): path to raw text — and supplies none of it, with two reference hosts beside it, a Node readdir+readFile host that ships built and a Vite glob wrapper kept as SOURCE TO COPY because import.meta.glob is a build-time transform tsc cannot be truthfully told about without a dependency. The verbatim harvested originals stand in src/origin/, excluded from the build and kept so the re-expression can be diffed rather than trusted. The built module contains no import.meta of any kind, no vite import, no node:fs, and not one import statement — proven, not asserted. Zero runtime dependencies, no clock, no network, and no disk: the disk is the host''s business.',
   'resonance-awen/tools/the-suchi', 'imagined', '📑', 'Awen',
   'a0716d09-fd6a-4383-90a1-3ad78ad7f54f',  -- the suchi atom, seeded in 126
   'Built 2026-09-02 by a builder dealt by Windrose 🎻, at KP''s ⚛ word "hold the Daedalus work and proceed with the rest" — movement A2 of the Unnamed Waters sitting, four waters in one hand, this one last. THE THING BEING RESCUED WAS NEVER BROKEN: tree.ts and papers.ts work, and have worked, inside resonance-standards'' own app — a repo drawing its own map and indexing its own papers, every title read from the paper''s own first line. What made them unshareable was one call, import.meta.glob, at the top of each file, welding good logic to one build tool. Row 44 named the cure in nine words: "the glob''s result is the host surface, Vite is never called." The originals could not compile outside Vite, so the second of the sending''s two roads was taken and is named plainly in the README, in HARVEST.md and in seed 126: the verbatim copies stand in src/origin/ excluded from the build, and src/index.ts is the byte-faithful re-expression over a one-verb host surface, so the claim of faithfulness can be checked with diff rather than believed. THE FIXTURE IS RESONANCE-STANDARDS'' OWN DOCS TREE, transcribed, and the build did not have to invent a single test case: the real repo already contains a heading with an emoji, a heading with an em-dash, three real italic glosses, a badge line that is not a gloss, a bold line that is not a gloss, TWO files with no # heading at all, and ONE that declares itself a MIRROR-class self-map. TWO FINDINGS THE RUN TURNED UP AND THE BUILD DID NOT REPAIR: a wholly-bold line is taken as a blurb with its asterisks, and blurbOf stops at the first non-blank line rather than searching its window. Both are the origin''s, both are named in HARVEST.md and in the honest limits, and proof 5 asserts the first rather than hiding it. THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE.',
   'a builder dealt by Windrose 🎻, at KP''s ⚛ word');

-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it now
-- that the proofs stand; uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug = 'the-suchi';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen where slug = 'the-suchi';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'suchi';

-- no other row should wear 📑 — and per 078's law, if one does it must at least
-- carry a DIFFERENT tool_type:
select icon_emoji, count(*) as wearers, string_agg(name || ' (' || tool_type || ')', ' · ' order by name)
from public.awen where icon_emoji = '📑' group by icon_emoji;

-- ── the whole movement, once 120–127 have run: four rows, four faces, four
--    atoms, two categories, three verbs. 078's test is that no two rows share a
--    face AND a tool_type; the-panti and the-suchi share `arrange` and differ in
--    face, which passes.
select a.name, a.slug, a.tool_type, a.icon_emoji, a.status, t.atom_word, t.category_name
from public.awen a
join public.atoms t on t.id = a.atom_id
where a.slug in ('the-panti', 'the-lakshana', 'the-drishti', 'the-suchi')
order by a.slug;

select icon_emoji, tool_type, count(*) as rows_sharing_both
from public.awen
where icon_emoji in ('📊', '🔖', '🔭', '📑')
group by icon_emoji, tool_type
having count(*) > 1;

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'suchi'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'suchi';
