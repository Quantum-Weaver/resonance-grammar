-- 116 — the-nomos, its atom
--
-- THE NOMOS — the law, parsed. The policy parser, built 2026-09-02 by a
-- builder dealt by Windrose 🎻 at KP's ⚛ word, verbatim: "hold the Daedalus
-- work and proceed with the rest, we will do it on its own." Movement A1 of
-- the Unnamed Waters sitting, board row 37
-- (resonance-chamber/desk/THE-UNNAMED-WATERS-SITTING.md:72).
--
-- THE DISTINCTION THE BOARD ITSELF DREW, and it is the reason this is its own
-- water rather than a verb on another: "the policy parser, DISTINCT from
-- the-scrolls: this parses, those render." the-scrolls takes structure and
-- puts it on a screen; this takes a document somebody wrote as prose and finds
-- the columns already in it. THE WATER NEVER IMPORTS THE-SCROLLS, and the law
-- of the spring is checked there as ARITHMETIC rather than promised: proof 12
-- reads every .ts under src/, confirms no import or export-from line reaches
-- outside the folder, and confirms the string "the-scrolls" appears on no
-- import line anywhere and in neither harvested file at all.
--
-- THE HARVEST RULING THIS ROW RESTS ON — KP ⚛, verbatim, board row 33:
--   "without altering the source location"
-- AudHDities/src/lib/markdown/parsePrivacy.ts (131 lines) and parseTerms.ts
-- (76 lines) were COPIED byte-verbatim; AudHDities is untouched and still runs
-- both on two live pages. The SHA256 of each copy is pinned in the water's
-- verify.mjs and re-checked every run.
--
-- THREE LIVE FAULTS WERE FOUND IN THE ORIGIN AND NOT ONE WAS MENDED. They are
-- named here because a registry row is where the house looks:
--   1. THE TABLE LOSES ITS HEADER ROW (parsePrivacy.ts:64-67, :71-72). The
--      |---|---| separator is what sets inTable, so the real header line has
--      already gone past into `content`; the FIRST DATA ROW becomes `headers`.
--      On the live privacy page the header prints as prose above its own table
--      and the table is short a row.
--   2. A SUBSECTION'S BODY IS FILED UNDER ITS PARENT, in BOTH files
--      (parsePrivacy.ts:105-107, parseTerms.ts:50-52). Every subsection comes
--      back with content "" and the parent holds the LAST child's body.
--   3. parseTerms NEVER READS ITS DOCUMENT'S TITLE AND DEFAULTS ITS DATE
--      (parseTerms.ts:21-22): title is seeded 'Terms of Service' so its own
--      `if (… && !title)` can never fire, and lastUpdated is seeded
--      'March 19, 2026' — precisely the fault the privacy parser was mended to
--      stop doing on 2026-08-24.
-- All three are PROVEN AS THEY BEHAVE in the water's proofs, with the origin's
-- own line numbers. Mending a live page's parser is a ruling about that page
-- and it is KP's, not a lamp's tidy-up.
--
-- CATEGORY: **governance** (ba101ebf-34fd-44d3-956f-0639e3367e73) — category
-- taken from seed 108's recorded census; confirmed at the anon door by KP's
-- hand. Its live definition, quoted in 108's own header: "The laws and
-- charters that order the house — sovereignty, standards, consent,
-- enforcement. Rule as care, not control." A privacy policy and a terms of
-- service ARE that, and this water's whole subject is reading them.
--   RUNNER-UP AND HIS TO OVERRULE IN ONE WORD: **content**
--   (420f7c5c-badc-4b75-9e30-d36b47bd11b7, recorded in seeds 077 and 080 —
--   "The stuff itself — documents, fragments, lyrics, recordings. What the
--   house holds, as distinct from how"). Defensible, because the INPUT is a
--   document. Governance was taken because the SUBJECT is the law the document
--   carries; the markdown is the vessel, not the thing.
--
-- MOLECULE / ORGANISM — checked, and neither applies. `nomos` is ONE WORD, and
-- tools_one_tier (seed 014) lets an awen row cross at exactly one tier — the
-- tier its own name lives at (055's law). A one-word name crosses at the atom
-- tier; there is no molecule to make and no organism above it.
--
-- FACE: ⚖️ — the scales. One glyph, no skin tone, no ZWJ, no flag, no
-- red-alarm mark, and NO AWEN ROW WEARS IT (checked against 078's whole census
-- and the faces set since: 🗝️ 🔒 🪙). It IS worn by the `governance` CATEGORY
-- (seed 024) and by the atom `comparison` (004), and that is deliberate rather
-- than overlooked: 088's precedent is "the atom and its category wear the same
-- mark", and this row's category is governance.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. Greek νόμος — law,
-- custom, that which is apportioned and held to — is this hand's reading of
-- the need the board named. It lives in exactly two places in the build (the
-- constant TOOL_NAME and the folder).
--
-- THE NAME SWEEP: `nomos` is a TRUE ZERO among the 69 folders under
-- resonance-awen/tools/ and among the atom words in this seed corpus. The
-- workspace *.md sweep returns three hits and NONE is a name — the sitting's
-- own commission line, and twice an ETYMOLOGY CELL explaining the word
-- *taxonomy* ("Greek *taxis* (arrangement) + *nomos* (law)") at
-- resonance-grammar/docs/taxonomy-design/taxonomy-for-cartographer.md:428 and
-- in an archived conversation under mimirs-well. Free — and worth writing down
-- that the house already reached for this exact root once, to say "law".
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (077/059/106).
--
-- THE TABLE IS public.awen (096; shim dropped 097). This file only touches
-- public.atoms.
--
-- ── ATOM UUID, generated uuid4 and pinned here so this file and 117 name the
--    same row without depending on insert order or a subquery ──
--   nomos atom   c7150517-3960-4667-95cc-c7ef45fe8fd8
--
-- Run at KP's ⚛ hand, after 115 and before 117. Verify at the anon door after.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  'c7150517-3960-4667-95cc-c7ef45fe8fd8',
  'nomos',
  'Nomos (Greek νόμος: law, custom, that which is apportioned and held to — the law as a THING a house can point at). The policy document turned into columns: sections, subsections, the tables inside them and the date the document itself states, as DATA with no opinion about how any of it looks. DISTINCT FROM RENDERING, and the distinction is the whole reason it exists apart: a renderer takes structure and puts it on a screen, and this takes prose somebody wrote and finds the structure already in it. THE DATE IS THE DOCUMENT''S OR IT IS EMPTY — never a default, because a page printing a hardcoded date for a document that does not carry one is telling the reader something the document never said; both of the house''s labels are read, "Last updated:" and "Effective date:". A TABLE IS LIFTED, NOT FLATTENED: a markdown table inside a section comes back as headers and rows on that section. NESTING IS KEPT and the tree is the document''s own. NOTHING THROWS AND NOTHING IS INVENTED: an empty document, a document with no headings, a heading with no body, a subheading with no parent, a table outside any section, a header-less table and a ragged table all come back as calm shapes, and what the document does not say the parse does not say either. It parses a shape, not a language — lists, links, emphasis and code fences ride through as raw text, and only two heading levels nest. No clock, no disk, no network, no DOM, zero imports; reading the file stays the caller''s business.',
  'root', 5, 5, 1, 'static',
  'ba101ebf-34fd-44d3-956f-0639e3367e73',  -- governance: "The laws and charters that order the house — sovereignty, standards, consent, enforcement."
  'governance',
  'published',
  'NOMOS', 'nomos', 'Nomos'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'nomos';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'nomos'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'nomos';
