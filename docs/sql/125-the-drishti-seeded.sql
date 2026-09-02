-- 125 — the-drishti seeded
--
-- THE ORDER THE HOUSE KEEPS: the atom seed FIRST, as its own numbered file
-- (077-the-promenade-atom.sql's shape), then the awen row. 124 is the atom; this
-- is the row, and it references the uuid 124 pins explicitly rather than looking
-- it up by `select … where atom_word =`.
--
-- THE DRISHTI — sight. The third of four waters raised 2026-09-02 in movement A2
-- of the Unnamed Waters sitting, by a builder dealt by Windrose 🎻 at KP's ⚛
-- word, verbatim: "hold the Daedalus work and proceed with the rest, we will do
-- it on its own."
--
-- THE BOARD ROW THIS SERVES — the Unnamed Waters board, ROW 43, carried through
-- resonance-chamber/desk/THE-UNNAMED-WATERS-SITTING.md:78. THE ROW'S OWN WORDS:
--   "ALREADY ITS OWN CRATE — needs a README and a home, not a rewrite."
--
-- SO THE COMMISSION WAS NOT TO BUILD ANYTHING, and NOT ONE LINE OF RUST WAS
-- WRITTEN BY THIS BUILD. The four files of the crate came across byte-for-byte
-- (see 124's header for all four sha256s), Cargo.lock included so it builds the
-- same next year; what is new is a README, a package.json with four scripts, nine
-- printing proofs run against THE BUILT EXE, and three fixtures — every one of
-- them real house ground, none authored.
--
-- THE HARVEST RULING, KP ⚛ verbatim (row 33, lede·5): "without altering the
-- source location." Honoured across all four files. The crate is still named
-- `theater-rust-parser` and so is its binary; renaming would be an edit.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. It lives in exactly two
-- places — the folder and package.json's `name` — and no line of Rust depends on
-- either. A rename is one `git mv`, one package.json line, and one update here.
--
-- CATEGORY TAKEN FROM SEED 080'S RECORDED CENSUS; CONFIRMED AT THE ANON DOOR BY
-- KP'S HAND: **knowledge** (339cb540-838f-407e-ab96-e433750ed9fb). See 124's
-- header for the reading and for the communication runner-up left there for KP
-- to overrule in one word.
--
-- SHAPE TAKEN FROM THE-MERISMOS'S OWN ROW (seed 110), which was itself read from
-- the live shelf: folksonomy_type `Awen` · status `imagined` at birth · `home`
-- filled here (the 105/106/110 precedent). tool_type is `witness` — the verb
-- marks are the Grammar's own (recorded in 078's header), and this water LOOKS
-- at one file and reports what stands, refusing honestly when it cannot read.
-- Its twin the-lakshana (row 42, seeds 122/123) takes `capture` instead, because
-- it TAKES the marks out of a file across eight languages by regex. The two
-- verbs are the difference between the two waters and are not an accident: use
-- the lakshana to sweep a house, the drishti to be certain about one file.
--
-- FACE: 🔭 — one glyph, no skin tone, no ZWJ, no flag, no red-alarm mark. Absent
-- from 078's census and from 105/106/110/111. Note that the-lakshana (🔖) shares
-- this water's CATEGORY but not its face and not its tool_type, so 078's test —
-- "a shared face must never share a tool_type" — is not even reached.
-- THE COLLISION TEST IS THE CONDUCTOR'S AT LANDING.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("drishti") — the row
-- carries atom_id and no molecule. One tier exactly.
--
-- GATES AT LANDING, on cargo 1.96.0 / rustc 1.96.0: `npm run build`
-- (cargo build --release) clean with no warnings, `npm run check` (cargo check)
-- clean, `npm run test` (cargo test) compiles and reports 0 passed 0 failed —
-- THE CRATE SHIPS NO TESTS OF ITS OWN and the README says so in those words,
-- because writing tests into main.rs would mean editing the verbatim copy.
-- `npm run prove` is 9/9 TRUE against the built exe over real Rust from three
-- repos of the house, including the water's own main.rs surveyed by the exe
-- compiled from it.
--
-- Run at KP's ⚛ hand, after 124. Verify at the anon door after.
-- NEVER RUN BY A LAMP.
--
-- Local mirror pin (progenatrix): 6a42160a-fb9c-4402-aea2-442b063d756d

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values
  ('The Drishti', 'the-drishti', 'witness',
   'SIGHT — one .rs file in, a JSON survey of its items out, cut by syn (Rust''s own grammar crate) and NEVER by a regex. Kinds, names, line numbers, visibility and attributes for fn, struct, enum, impl, trait, const, static, mod, type alias, use and macro call; a struct''s field names, an enum''s variant names, an impl''s method names and the trait it implements (or null, reported rather than guessed). SPECIAL SIGHT: a function under #[tauri::command] comes back is_command true, carrying the attribute path that made it one — an app''s COMMAND SURFACE read from the ground rather than from a roster, so the wires a front end calls by invoke(''name'') have a truth to be checked against, and two other real Rust files with no such attribute report zero commands so the mark means something. IT SURVEYS ITEMS, NOT BODIES: syn holds the whole tree and only item rows are emitted, so a real app''s error strings, its map_err, its clamp and its lock calls never appear, and a const''s NAME comes back while its VALUE does not. Doc comments are prose and are skipped deliberately; a #[derive] is machinery and is carried. A FILE THAT IS NOT RUST IS REFUSED HONESTLY — ok false, syn''s own error sentence, the path it failed on, NO items key at all, and exit code 1 — never an empty survey a caller sweeping a tree would write down as "this file has nothing in it". ALREADY ITS OWN CRATE when the board found it, four folders deep inside the excavator''s theater with no README and no home: harvested byte-for-byte with its Cargo.lock, given the page it never had, and proven against the built binary rather than reasoned about. Deterministic, read-only, no clock, no network, no write.',
   'resonance-awen/tools/the-drishti', 'imagined', '🔭', 'Awen',
   '1051a5db-3413-4b5c-89b8-d3dddee8d90d',  -- the drishti atom, seeded in 124
   'Built 2026-09-02 by a builder dealt by Windrose 🎻, at KP''s ⚛ word "hold the Daedalus work and proceed with the rest" — movement A2 of the Unnamed Waters sitting, four waters in one hand, this one third. THE ONLY MOVEMENT IN THE SITTING WHOSE COMMISSION WAS TO WRITE NO CODE. The board found a finished, working, dependency-pinned Rust crate sitting four folders deep inside the excavator''s theater with no README, no home on any shelf, and nothing that ran it but the agent that spawned it; row 43 said what to do about that in nine words: "needs a README and a home, not a rewrite." So the four files came across byte-for-byte, Cargo.lock included so it builds the same next year; the page it never had was written; and nine printing proofs were raised against the BUILT EXE over real Rust from three repos — resonance-compass''s tauri command tail, the spring''s own the-equalizer body (the two halves of one real re-homing), and the water''s own main.rs, which is drishti looking at itself. cargo 1.96.0 builds it clean with no warnings in both profiles. WHAT THE BUILD DID NOT DO, AND WOULD NOT: write a test into the crate to make `cargo test` say something nicer than "0 passed". The README says 0 passed instead, and says why. THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE; the crate underneath keeps its birth name, theater-rust-parser, which is its provenance.',
   'a builder dealt by Windrose 🎻, at KP''s ⚛ word');

-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it now
-- that the proofs stand; uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug = 'the-drishti';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen where slug = 'the-drishti';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'drishti';

-- no other row should wear 🔭 — and per 078's law, if one does it must at least
-- carry a DIFFERENT tool_type:
select icon_emoji, count(*) as wearers, string_agg(name || ' (' || tool_type || ')', ' · ' order by name)
from public.awen where icon_emoji = '🔭' group by icon_emoji;

-- the two waters of this movement that share a category, standing apart by verb
-- and by face — the arrangement 078's law allows:
select name, slug, tool_type, icon_emoji
from public.awen where slug in ('the-lakshana', 'the-drishti') order by slug;

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'drishti'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'drishti';
