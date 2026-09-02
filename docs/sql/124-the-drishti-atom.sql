-- 124 — the-drishti, its atom
--
-- THE DRISHTI — sight. The third of four waters raised 2026-09-02 in movement A2
-- of the Unnamed Waters sitting, by a builder dealt by Windrose 🎻 at KP's ⚛
-- word, verbatim: "hold the Daedalus work and proceed with the rest, we will do
-- it on its own." A RUST WATER, and the only movement in the sitting whose
-- commission was to write no code at all.
--
-- THE BOARD ROW THIS SERVES — the Unnamed Waters board
-- (resonance-progenatrix/artifacts/the-unnamed-waters.html, the unnamed_waters
-- table), ROW 43, carried to the builder through
-- resonance-chamber/desk/THE-UNNAMED-WATERS-SITTING.md:78 (the board itself sits
-- in a repo the builder was closed out of, and that is said rather than
-- implied). THE ROW'S OWN WORDS, verbatim:
--   "ALREADY ITS OWN CRATE — needs a README and a home, not a rewrite."
-- and the sitting's line:
--   "the-drishti (Sanskrit dṛṣṭi, sight) — the rust item surveyor, the crate
--    copied whole with a README and `cargo test`. Row 43. Seeds 124/125."
--
-- THE HARVEST RULING, KP ⚛ verbatim (the-unnamed-waters.html row 33, lede·5):
--   "without altering the source location."
-- Honoured to the byte across all FOUR files of the crate, copied from
-- resonance-excavator/agents/theater/rust_parser/ with ZERO changed lines:
--   Cargo.toml    319 bytes    72760d6c8ddcb94db9d242959f9eb14bcb26467e290bbd9c3013f8a47a67866b
--   Cargo.lock  2,710 bytes    a3ba37dc7f8ac46566ab58a129c63ff3e2ec760d3b1671f91e2a309b678759ff
--   src/main.rs 5,276 bytes    be11f52b381e07bd5dcac8a0b2b5e0260b9de0dff9c4b02034a65d27c228dea0
--   .gitignore      8 bytes    44c92e3a70ad3307b7056871c2bdb096d8bfa9373f5bf06a79bb6324a20ff2fb
-- The crate is still NAMED `theater-rust-parser` and its binary still is too,
-- because renaming would be an edit and because the birth name records where it
-- came from. Cargo.lock came across on purpose: a harvested Rust tool without
-- its lock is a different tool on a different day.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. dṛṣṭi (sight; and in the
-- yogic use, the single place the eyes rest so the rest of the body can be
-- still) is the builder's reading of the need KP named, not his word. It lives
-- in exactly two places in the build — the folder and the `name` field of
-- package.json — and NO LINE OF RUST DEPENDS ON EITHER, because no line of Rust
-- was written. A rename is one `git mv`, one package.json line, and one update
-- to the row seeded in 125.
--
-- CATEGORY TAKEN FROM SEED 080'S RECORDED CENSUS; CONFIRMED AT THE ANON DOOR BY
-- KP'S HAND: **knowledge** (339cb540-838f-407e-ab96-e433750ed9fb), the same
-- category its twin the-lakshana takes in 122, and for the same reason: the
-- subject is what a body of code CONTAINS. The two waters share a category and
-- differ in tool_type and face, which is precisely the arrangement 078's law
-- allows. RUNNER-UP AND HIS TO OVERRULE IN ONE WORD: communication
-- (839cc74b-baee-47cc-b6eb-617a83393e36, recorded in seed 105's header — "signals
-- … invitations … Everything that crosses from one to another"), which is
-- genuinely defensible, because the COMMAND SURFACE this water sights is exactly
-- the crossing from a svelte wing to a rust one. Knowledge was taken because the
-- water's subject is the survey and the command surface is one thing it finds in
-- it. The builder could not read the live categories table this sitting — the
-- base is behind a door the sending closed — so no category was invented: both
-- uuids above are quoted from seeds already written down, and KP's hand at the
-- anon door is the confirmation.
--
-- MOLECULE / ORGANISM — checked, and neither applies. `drishti` is ONE WORD, and
-- the house's tools_one_tier constraint (seed 014) lets an awen row cross at
-- exactly one tier — the tier its own name lives at (055's law).
--
-- TRANSLITERATION: the atom word is `drishti`, matching the folder. The
-- Devanagari and the diacritics live in the definition where they belong; the
-- atom word stays ^[a-z]+$ as the atoms' own law requires.
--
-- FACE: 🔭 — a glass for looking at one distant thing very precisely, which is
-- what a dṛṣṭi is. It reads against 078's rules: one glyph, no skin tone, no ZWJ,
-- no flag, no red-alarm mark. Checked against 078's whole set and against
-- 105/106/110/111; no row there wears it. The near neighbours 👓 (the-two-eyes),
-- 👁️ (the-vigil) and 🔍 (the-assessor) are all TAKEN and none was reached for.
-- THE COLLISION TEST IS THE CONDUCTOR'S AT LANDING.
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill.
--
-- THE TABLE IS public.awen. This file only touches public.atoms.
--
-- ── ATOM UUID, generated uuid4 and pinned here so this file and 125 name the
--    same row without depending on insert order or a subquery ──
--   drishti atom   1051a5db-3413-4b5c-89b8-d3dddee8d90d
--
-- Run at KP's ⚛ hand, after 123 and before 125. Verify at the anon door after.
-- NEVER RUN BY A LAMP. A tool is not seeded by a lamp writing a file.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '1051a5db-3413-4b5c-89b8-d3dddee8d90d',
  'drishti',
  'Drishti (Sanskrit dṛṣṭi दृष्टि: sight, seeing; and the single point a gaze rests on so the rest of the body can be still). One Rust file in, a JSON survey of its items out, cut by syn — Rust''s own grammar crate — and never by a regex. Kinds, names, line numbers, visibility and attributes for functions, structs, enums, impls, traits, consts, statics, mods, type aliases, use trees and macro calls; a struct''s field names, an enum''s variant names, an impl''s method names and the trait it implements. SPECIAL SIGHT: a function under a tauri command attribute comes back marked as a command, carrying the attribute path that made it one — an app''s COMMAND SURFACE read from the ground rather than from a roster, so the wires a front end calls by name have a truth to be checked against. It surveys ITEMS, NOT BODIES: syn holds the whole tree and only item rows are emitted, so error strings, lock calls and const values never travel; doc comments are prose and are skipped deliberately, while a derive is machinery and is carried. A file that is not Rust is refused honestly — not an empty survey a caller could mistake for an empty file, but a stated failure with the grammar''s own error and a non-zero exit. A regex reading Rust is a guess that usually works; a grammar reading Rust is an answer or an honest refusal, and there is nothing in between.',
  'root', 5, 5, 1, 'static',
  '339cb540-838f-407e-ab96-e433750ed9fb',  -- knowledge, taken from seed 080's recorded census
  'knowledge',
  'published',
  'DRISHTI', 'drishti', 'Drishti'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'drishti';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'drishti'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'drishti';
