-- 123 — the-lakshana seeded
--
-- THE ORDER THE HOUSE KEEPS: the atom seed FIRST, as its own numbered file
-- (077-the-promenade-atom.sql's shape), then the awen row. 122 is the atom; this
-- is the row, and it references the uuid 122 pins explicitly rather than looking
-- it up by `select … where atom_word =`.
--
-- THE LAKSHANA — the defining mark. The second of four waters raised 2026-09-02
-- in movement A2 of the Unnamed Waters sitting, by a builder dealt by
-- Windrose 🎻 at KP's ⚛ word, verbatim: "hold the Daedalus work and proceed with
-- the rest, we will do it on its own." THE ONLY PYTHON WATER OF THE FOUR — there
-- is nothing to build, and `python` is the whole stack.
--
-- THE BOARD ROW THIS SERVES — the Unnamed Waters board, ROW 42, carried through
-- resonance-chamber/desk/THE-UNNAMED-WATERS-SITTING.md:77:
--   "the-lakshana (Sanskrit lakṣaṇa, a defining mark) — the signature-only
--    parser, a Python water; its refusal to read bodies proven, not commented.
--    Row 42. Seeds 122/123."
--
-- THE HARVEST RULING, KP ⚛ verbatim (row 33, lede·5): "without altering the
-- source location." Honoured to the byte — see 122's header for the sha256 that
-- matches on both sides, and the folder's own HARVEST.md for the whole record,
-- including the two behaviours the run turned up and the build did NOT repair.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. It lives in exactly two
-- places in the build — the constant TOOL_NAME and the folder — so a rename is
-- one edit, one `git mv`, and one update to this row.
--
-- CATEGORY TAKEN FROM SEED 080'S RECORDED CENSUS; CONFIRMED AT THE ANON DOOR BY
-- KP'S HAND: **knowledge** (339cb540-838f-407e-ab96-e433750ed9fb). See 122's
-- header for the reading and for the governance runner-up left there for KP to
-- overrule in one word.
--
-- SHAPE TAKEN FROM THE-MERISMOS'S OWN ROW (seed 110), which was itself read from
-- the live shelf: folksonomy_type `Awen` · status `imagined` at birth · `home`
-- filled here (the 105/106/110 precedent). tool_type is `capture` — the verb
-- marks are the Grammar's own (capture 📸 · combine 🥣 · arrange 🎼 · witness 🧿 ·
-- emit 📤 · transform 🦋 · translate 🌏, recorded in 078's header), and this
-- water TAKES the marks out of a file. Its twin the-drishti (row 43, seeds
-- 124/125) takes `witness` instead, because it LOOKS at one file and reports
-- what stands; the two verbs are the difference between the two waters and are
-- not an accident.
--
-- FACE: 🔖 — a mark set in a text to say THIS. One glyph, no skin tone, no ZWJ,
-- no flag, no red-alarm mark. Absent from 078's census and from 105/106/110/111.
-- THE COLLISION TEST IS THE CONDUCTOR'S AT LANDING.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("lakshana") — the
-- row carries atom_id and no molecule. One tier exactly. (122's header records
-- why no molecule or organism row exists.)
--
-- GATES AT LANDING: `npm run check` (python -m py_compile) silent, `npm run
-- prove` 10/10 TRUE over ten fixtures — eight real files copied byte-for-byte
-- from five repos of the house, and two authored sentinel files that say in
-- their own first lines that they are authored.
--
-- Run at KP's ⚛ hand, after 122. Verify at the anon door after.
-- NEVER RUN BY A LAMP.
--
-- Local mirror pin (progenatrix): a5b6b2a2-d455-46c9-bc06-614d78d08237

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values
  ('The Lakshana', 'the-lakshana', 'capture',
   'THE DEFINING MARK — a source file''s signatures, and its refusal to read anything else, PROVEN rather than commented. A PYTHON water: the whole of it is resonance-excavator/agents/parser.py, harvested byte-for-byte and unedited, given a package that re-exports its surface and the ten printing proofs it never had. Eight languages are dispatched on — python, typescript, javascript, rust, sql, css, config (toml/yaml/json) and markdown — and each returns names, types, line numbers and WHOLE SIGNATURES: parameter types and return annotations for a function, field names for an interface, variant names for an enum, column names for a table, section headers for a config, headings and terms of art for markdown. IT NEVER READS A BODY. Function bodies, string values and data payloads do not travel, and the proof is a fixture carrying one sentinel token fourteen times in Python and eight in TypeScript — docstrings, bodies, nested three-deep payloads, comments, a union member, a private field — whose output contains the token ZERO times; and the same refusal is proven again on real ground, against a real app''s error strings, a real agent''s dictionary keys and a real library''s example paths. A Rust function under #[tauri::command] comes back typed `command` rather than `function`, carrying the attribute that made it one, so an app''s COMMAND SURFACE is read from the ground rather than from a roster that drifts. A file recorded as a secret returns nothing BEFORE its language is consulted, so a .env or a keyfile that arrived by mistake is not read at all. An unknown language returns nothing rather than a guess and never falls through to the nearest reader; a path that does not exist returns nothing rather than raising, so a survey of a whole tree never dies on one strange file. Read-only, deterministic, no clock, no network, no write, and STDLIB ONLY — re, pathlib, typing, and one open() that is a read. There is nothing to build.',
   'resonance-awen/tools/the-lakshana', 'imagined', '🔖', 'Awen',
   'e8bb25b2-86d4-43f6-bfc5-b8a4185a896d',  -- the lakshana atom, seeded in 122
   'Built 2026-09-02 by a builder dealt by Windrose 🎻, at KP''s ⚛ word "hold the Daedalus work and proceed with the rest" — movement A2 of the Unnamed Waters sitting, four waters in one hand, this one second and the only Python among them. THE COMMISSION WAS A PROOF, NOT A PROGRAM: the origin has said "Never reads function bodies, string values, or data payloads" since the day it was written, and nothing had ever checked. So the build harvested 596 lines unedited and spent its whole effort on the proofs — eight real fixtures from five different repos of the house, two authored sentinel files that say in their own first lines that they are authored, and the refusal demonstrated twice: once on a token planted for the purpose, once on the real error strings of a real app. TWO FINDINGS THE RUN TURNED UP AND THE BUILD DID NOT REPAIR: a schema-qualified SQL table loses its schema (`create table public.tools` comes back named `public`, with all its columns correct), and an exported array constant is typed `function` outside a .tsx file. Both are the origin''s behaviour, both are named in HARVEST.md and in the README''s honest limits, and both were left exactly as they stand — "without altering the source location" is a ruling about the origin, and mending the copy would publish a different tool under the origin''s provenance. THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE.',
   'a builder dealt by Windrose 🎻, at KP''s ⚛ word');

-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it now
-- that the proofs stand; uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug = 'the-lakshana';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen where slug = 'the-lakshana';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'lakshana';

-- no other row should wear 🔖 — and per 078's law, if one does it must at least
-- carry a DIFFERENT tool_type:
select icon_emoji, count(*) as wearers, string_agg(name || ' (' || tool_type || ')', ' · ' order by name)
from public.awen where icon_emoji = '🔖' group by icon_emoji;

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'lakshana'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'lakshana';
