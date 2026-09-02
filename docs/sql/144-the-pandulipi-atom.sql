-- 144 — the-pandulipi, its atom
--
-- THE ORDER THIS FILE KEEPS: atom seed BEFORE awen row, and as its own
-- numbered file, in 077-the-promenade-atom.sql's exact shape and 128's
-- (the-stereos) most recent reading of it. The awen row stands as
-- 145-the-pandulipi-seeded.sql and runs after this one.
--
-- THE PANDULIPI — पाण्डुलिपि (pāṇḍulipi), Sanskrit: A MANUSCRIPT. Not the
-- book: the typescript you post to an editor. Founded 2026-09-02 by a builder
-- dealt by Windrose 🎻 in THE AUTHOR'S STUDIO sitting, as the water half of
-- movement S3, at KP's ⚛ word, verbatim:
--   "we have a need for it to be repurposed as a book, manuscript, article,
--    all the reasons an author might publish. all types formatting assistance"
--   (resonance-chamber/desk/THE-AUTHORS-STUDIO.md:6-7)
--
-- THE FINDING THAT MADE IT A WATER AND NOT A ROOM: a read-only scout swept the
-- house 2026-09-02 for Shunn, MLA and Chicago — the three names the standard
-- manuscript submission format goes by — across the tools, the papers and the
-- library, and found NOTHING, ANYWHERE. The house had the-binder, which makes
-- a book, and the-scrolls, which renders a screen. It had no submission format
-- at all. That absence ships in the build as the constant NOTHING_STOOD, so
-- the claim carries its own reason.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE — it is HIS OWN, taken
-- from the plan he ruled, and it lives in exactly two places in the build:
-- the constant TOOL_NAME and the folder. A rename is one edit, one `git mv`,
-- and one update to this row and 145's.
--
-- ── CATEGORY ─────────────────────────────────────────────────────────
-- **content** (420f7c5c-badc-4b75-9e30-d36b47bd11b7).
--
-- THE UUID IS THE LIVE ONE, CONFIRMED THROUGH THE BRIDGE BY THE CONDUCTOR ON
-- 2026-09-02 — this builder holds no key to the base and ran no query of its
-- own. The four confirmed live that day: content 420f7c5c…, creation
-- 8427a8ea…, communication 839cc74b…, knowledge 339cb540….
--
-- WHY CONTENT: the category's own definition (024-the-category-faces.sql:74-76)
-- is "The stuff itself — documents, fragments, lyrics, recordings. What the
-- house holds, as distinct from how." A pāṇḍulipi IS the stuff itself: the
-- document, before anybody has decided it is a book.
--
-- RUNNER-UP, AND HIS TO OVERRULE IN ONE WORD: **communication**
-- (839cc74b-baee-47cc-b6eb-617a83393e36) — "Everything that crosses from one
-- to another" — because a submission format exists for exactly one crossing,
-- author to editor, and the whole shape of it (the contact block, the word
-- count, the running head with a surname on it) is addressed to a stranger.
-- It was set down because the thing itself is a document and the crossing is
-- what it is FOR — 076's correction, honoured: a face, and a category, is what
-- the THING is, never what it is used for. **creation** (8427a8ea…) was set
-- down for the same reason: this water makes no new writing, it sets writing
-- that already exists.
--
-- MOLECULE / ORGANISM — checked, and neither applies. `pandulipi` is ONE WORD,
-- and the house's tools_one_tier constraint (seed 014) lets an awen row cross
-- at exactly one tier — the tier its own name lives at (055's law). A one-word
-- name crosses at the ATOM tier; there is no molecule row to make and no
-- organism above it, and adding one while also setting atom_id would violate
-- the constraint outright. The-promenade, the-sphragis, the-merismos and
-- the-stereos all stand exactly this way: atom_id set, molecule_id and
-- organism_id null.
--
-- SHAPE TAKEN FROM THE-STEREOS'S OWN ROW (128/129, the most recent water
-- seeded in this shape): folksonomy_type `Awen` · status `imagined` at birth ·
-- `home` filled in 145 (the 105/106 precedent). tool_type is `transform`: a
-- manuscript folder in, one set page out. Runner-up `emit`, and defensible —
-- it hands back a document — set down because what it does to the text is a
-- change of FORM and nothing else, which is transform's own word. The house's
-- verb marks read from the live atoms into
-- resonance-awen/src/lib/data/type-lexicon.json give transform 🦋.
--
-- FACE: 📃 — a page with a curl: one plain typed page, which is exactly what
-- this water makes and all it makes. It reads against 078's rules: one glyph,
-- no skin tone, no ZWJ sequence, no flag, no red-alarm mark. NO OTHER ROW
-- WEARS IT — checked against every icon_emoji written in this seed folder's
-- whole history: 078's full census (79 face lines, 76 distinct glyphs), 111's two, the sixteen seeded
-- 2026-09-02 (🎲🌈⚖️🛡️📊🔖🔭📑🧊⛩️🎞️➰🏞️🧳🔠🪧) and the merismos's 🪙. The
-- near neighbours are all taken and all by the right things: 📘 the-binder
-- (078:156, "manuscript to book"), 📜 the-scrolls (078:134), 📖 · 📚 · 📔 · 📝
-- · 📑 elsewhere in the same census. 📄 (page facing up) was the first
-- instinct and was SET DOWN: it is the **content category's** own face
-- (024-the-category-faces.sql:74), and a tool wearing its category's mark
-- reads as the category.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("pandulipi") — the
-- awen row (145) carries atom_id and no molecule. One tier exactly.
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106/108/128
-- precedent).
--
-- THE TABLE IS public.awen (renamed from public.tools 2026-08-15, seed 096;
-- shim view dropped 097 — public.tools answers PGRST205 today). This file only
-- touches public.atoms.
--
-- ── ATOM UUID, generated uuid4 and pinned here so this file and 145 name
--    the same row without depending on insert order or a subquery ──
--   pandulipi atom   05466162-2209-4c7d-912a-76be936809ab
--
-- Run at KP's ⚛ hand, before 145. Verify at the anon door after.
-- NEVER RUN BY A LAMP: the seed is drafted and numbered; the crossing is his.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '05466162-2209-4c7d-912a-76be936809ab',
  'pandulipi',
  'Pandulipi (Sanskrit पाण्डुलिपि: a manuscript — literally a pale-ochre writing, the sheet before it is a book). The typescript as an editor expects to receive it, and nothing beyond that: twelve-point monospace with Courier named first and the family names left as data a consumer may override, double-spaced, one-inch margins on a US Letter page and A4 by one option that switches the @page size VALUE and not one other character of the sheet; a title page carrying the author''s contact block top-left verbatim and the word count top-right rounded to the nearest hundred, with the exact count riding beside it so the convention loses nothing; the title a third of the way down and the by-line beneath it; every chapter beginning a third of the way down a fresh page; a scene break set as one centred hash, whether it was written as a hash, three stars or three spaced stars; paragraphs indented half an inch with no blank line between them; italics kept as italics, underline one option away and one CSS rule wide. THE TEXT IS NEVER ALTERED, and that is the whole carefulness of it: every literal run of the source is recorded with its byte offsets and is a byte-exact slice, every character no run covers is one of a declared markup alphabet so a dropped word would stand in a gap as its own letters, and markdown the dialect does not set rides as its own characters, never mended — no smart quotes, no folded ellipsis, no dash substitution, no collapsed whitespace, no corrected typo. THE PAGE COUNT IS THE PRINT ENGINE''S: the running head is one @page margin box with a CSS counter in it, upper-cased by CSS so no case change touches the text, and the result declares `pages` and never sets it. No glyph typesetting, no hyphenation, no kerning, and no widow or orphan rule claimed or written. No clock, no disk, no network, no host global, zero imports: a manuscript in, one paged HTML out.',
  'root', 5, 5, 1, 'static',
  '420f7c5c-badc-4b75-9e30-d36b47bd11b7',  -- content: "The stuff itself — documents, fragments, lyrics, recordings. What the house holds, as distinct from how."
  'content',
  'published',
  'PANDULIPI', 'pandulipi', 'Pandulipi'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'pandulipi';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'pandulipi'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'pandulipi';
