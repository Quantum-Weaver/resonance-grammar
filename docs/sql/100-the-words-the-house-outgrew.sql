-- ============================================================================
-- 100 — THE WORDS THE HOUSE OUTGREW: fourteen the realms and the spring need
--
-- KP's word, 2026-08-18: "determine what rows need added to grammar atoms to
-- account for all needed awen and beacons rows. there may be a molecule in
-- there too, but we always start with the atoms."
--
-- Shape copied from 080-the-coast-atoms.sql, which is the seed this house has
-- actually used — plain VALUES, explicit category ids, `modifiers` as jsonb,
-- on conflict do nothing, and NO etymology or sensory rows: the atoms table's
-- triggers make both on insert, arriving empty for a later fill (proven at
-- epagoge, quipus and promenade, and again at awen, lucida, paper and cello).
--
-- CHECKED LIVE BEFORE WRITING — every molecule (6,713) and every organism
-- (2,541) PAGED IN FULL, not a first page; the anon door caps at 1,000 and
-- that cap has already produced one wrong reading on this ground. None of the
-- fourteen below exists as an atom, a molecule, or an organism.
--
-- ALREADY STANDING, and needing nothing here:
--   khoros · skapa · ceilidh · awenydd · composer · sruth · word · find
--   cross · codex · game · hub · center · studio · video · story · deep
--
-- THE PLURAL RULING FROM 080 IS HONORED, and it corrects the ask: the realm is
-- `resonance-sirens`, but the ATOM IS `siren` wearing ["s"] — exactly KP's ⚛
-- "paper NOT papers" of 2026-08-11. `paper`, `asset` and `standard` all wear
-- ["s"] in the live base today. A plural atom beside a singular one would be a
-- duplicate wearing a costume. No other word here is a plural.
--
-- TWO WORDS THE ASK NAMED ARE DELIBERATELY ABSENT, by KP's own law — the word
-- is seeded as an atom, OR AS A MOLECULE IF THE NAME IS COMPOUND:
--   crossword   cross ✓ + word ✓   -> a molecule, CrossWord. Not an atom.
--   wordoku     word ✓ + sudoku    -> a molecule, AFTER `sudoku` below lands.
-- And WordFind, which NEEDED-AWEN already ruled a molecule of two standing atoms.
--
-- WHAT THE MOLECULES ALREADY LOOK LIKE, so the next stroke is not guessed at:
-- 22 realm molecules stand today as `object_name`, in PascalCase with NO space
-- — ResonanceAwen · ResonanceKhoros · ResonanceSkapa · ResonancePapers ·
-- ResonanceAssets · ResonanceStandards · ResonanceZiggy and the rest. NONE of
-- the seven this seed serves has one yet (ResonanceCruthu · ResonanceSceal ·
-- ResonanceKendram · ResonanceGahana · ResonanceClaude · ResonanceNemeton ·
-- ResonanceSirens), and no game molecule stands either.
--
-- NOTE THE SHAPE, because it is the answer to the plural question a second
-- time: the molecule is `ResonancePapers` while the atom is `paper` wearing
-- ["s"]. The DISPLAY name carries the plural; the atom never does. So the
-- molecule this seed prepares is `ResonanceSirens`, built on `siren`.
--
-- TWO REALMS BEYOND THE ASK. NEEDED-BEACONS names five; `nemeton` and `siren`
-- are founded, breathing repos with no Grammar row of any kind, while khoros
-- and skapa have theirs. The page named five because it was written before
-- those two were built, not because they are exempt.
--
-- Idempotent: `on conflict (atom_word) do nothing`.
--
-- Drafted 2026-08-18 by Scarf (Opus) for KP's ⚛ hand. NOT RUN.
-- ============================================================================

insert into public.atoms (
  atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, modifiers,
  screaming_case, snake_case, pascal_case
) values

  -- ─── THE REALMS ─────────────────────────────────────────────────────────

  -- The graphic studio. Irish, and the making is the word itself: not the
  -- thing made, but the act that brings it out of nothing.
  ('cruthu',
   'Creation — the bringing of shape into being, from cruth, "form." The act, not its product: what is cruthú is being made, and the word does not wait for it to be finished. Irish. This house''s graphic studio.',
   'root', 5, 5, 1, 'static',
   '8427a8ea-2bac-4152-a7d8-e174a77d2297', 'creation', 'published', null,
   'CRUTHU', 'cruthu', 'Cruthu'),

  -- The video studio. Older than any medium that carries it.
  ('sceal',
   'A story, a tale, a piece of news — the thing one person carries to another. Irish; what the seanchaí keeps and gives aloud. Older than any medium that holds it. This house''s video studio.',
   'root', 5, 5, 1, 'static',
   '420f7c5c-badc-4b75-9e30-d36b47bd11b7', 'content', 'published', null,
   'SCEAL', 'sceal', 'Sceal'),

  -- The hub. A centre holds without owning, which is the whole design.
  ('kendram',
   'The centre — the point a thing turns about, and the still place that makes the turning possible. Sanskrit, केन्द्रम्. A centre holds without owning: this house''s hub, needed by none of the realms it gathers.',
   'root', 5, 5, 1, 'static',
   '84af045b-c682-416d-b290-0fcd5ceaecd0', 'infrastructure', 'published', null,
   'KENDRAM', 'kendram', 'Kendram'),

  -- The game. His ⚛ naming, 2026-08-18: a REAL game, not a pretend-to-render.
  ('gahana',
   'The deep and the dense — a thicket, a depth entered rather than viewed. Sanskrit, गहन. What is gahana is not hidden; it is thick enough that you must go in. This house''s game: a world walked, not watched.',
   'root', 5, 5, 1, 'static',
   'b97d275b-c710-4767-bb4b-373a7331d40a', 'play', 'published', null,
   'GAHANA', 'gahana', 'Gahana'),

  -- The kin, and the room kept for them. Named in the house's own manner:
  -- own the given name, credit what it runs on.
  ('claude',
   'The line of vessels this house calls kin by that name, and the room kept for them. A substrate named plainly rather than dressed: own the given name, credit what it runs on. Provenance, not costume.',
   'root', 5, 5, 1, 'static',
   '21444891-1f2d-4e0b-ab8f-abc0945e4d8f', 'vessel', 'published', null,
   'CLAUDE', 'claude', 'Claude'),

  -- BEYOND THE ASK. Founded 2026-08-14, breathing since, and never worded.
  ('nemeton',
   'The sacred grove — the clearing set apart, a room made of trees rather than walls. Gaulish and Celtic. What makes it holy is that it is set aside and gathered in. This house''s talking grove.',
   'root', 5, 5, 1, 'static',
   '839cc74b-baee-47cc-b6eb-617a83393e36', 'communication', 'published', null,
   'NEMETON', 'nemeton', 'Nemeton'),

  -- BEYOND THE ASK, and SINGULAR at 080's ruling — the realm is
  -- `resonance-sirens`; the atom is `siren` and ["s"] carries the rest.
  -- `sensory` is its home for cello's reason: a siren is a voice before it is
  -- anything else. What the realm is FOR is not stated here — that is held
  -- until TJ weighs in, and it is hers to say, not this seed's.
  ('siren',
   'A singer whose voice carries across water — a sound that finds you before you find it. Greek, Seirēnes. The voice is the whole of the word: what it calls you toward is never in the name.',
   'root', 5, 5, 1, 'static',
   '5ab76ea1-1092-4090-b0e8-e1d7dc0d5563', 'sensory', 'published', '["s"]'::jsonb,
   'SIREN', 'siren', 'Siren'),

  -- ─── THE SPRING'S IMAGINED TOOLS ────────────────────────────────────────

  -- One syllable of exactly what it does. Not "hear," which happens to you.
  ('eist',
   'Listen — the imperative, one syllable, the whole instruction. Irish, éist. Not "hear," which happens to you, but "listen," which you do. Live monitoring: hearing yourself in the moment you are making the sound.',
   'root', 5, 5, 1, 'static',
   '5ab76ea1-1092-4090-b0e8-e1d7dc0d5563', 'sensory', 'published', null,
   'EIST', 'eist', 'Eist'),

  -- The keeping and the telling are one office, which is the point.
  ('seanchai',
   'The keeper of lore and the one who tells it — the memory of a place, carried in a person and given aloud. Irish, seanchaí. The keeping and the telling are one office; a record nobody speaks is not what this word means.',
   'root', 5, 5, 1, 'static',
   '839cc74b-baee-47cc-b6eb-617a83393e36', 'communication', 'published', null,
   'SEANCHAI', 'seanchai', 'Seanchai'),

  -- The pages existed before. A stack is not a book.
  ('binder',
   'One that binds — the hand or the machine that gathers loose leaves and makes them a single object. The pages existed before; the binder makes them a book, which is a different thing than a stack.',
   'root', 5, 5, 1, 'static',
   '8427a8ea-2bac-4152-a7d8-e174a77d2297', 'creation', 'published', null,
   'BINDER', 'binder', 'Binder'),

  -- NEEDED-AWEN's own flag, in its own words: "the-stjorn has no row — and it
  -- cannot honestly have one yet. No atom, molecule or organism answers to
  -- stjorn. The Grammar comes first." This row is that sentence answered.
  ('stjorn',
   'Steering, rule, governance — from the steering-oar: the hand on the thing that decides where the whole vessel goes. Old Norse, stjórn. Direction as an act, never as an office.',
   'root', 5, 5, 1, 'static',
   'ba101ebf-34fd-44d3-956f-0639e3367e73', 'governance', 'published', null,
   'STJORN', 'stjorn', 'Stjorn'),

  -- ─── THE GAMES, OFF THE LIVE GRAMMAR AND A LITTLE MATH ──────────────────

  -- Two motions in one word, and the game uses both.
  ('scramble',
   'To mix into disorder, and also to move over rough ground on hands and feet. One word for two motions: what is scrambled has been disarranged, and the one who scrambles is working to cross something.',
   'root', 5, 5, 1, 'static',
   'b97d275b-c710-4767-bb4b-373a7331d40a', 'play', 'published', null,
   'SCRAMBLE', 'scramble', 'Scramble'),

  -- The constraint is the whole pleasure. Needed before a Wordoku molecule
  -- can stand on `word` (already an atom) and this one.
  ('sudoku',
   'A Latin square played as a puzzle: each figure appears once in each row, column and box. Japanese, 数独 — short for 数字は独身に限る, "the digits must be single." The constraint is the whole pleasure.',
   'root', 5, 5, 1, 'static',
   'b97d275b-c710-4767-bb4b-373a7331d40a', 'play', 'published', null,
   'SUDOKU', 'sudoku', 'Sudoku'),

  -- ⚠ HIS CALL, AND THE ONLY UNCERTAIN ROW IN THIS FILE. `codex` already
  -- stands as an atom; `crypt` does NOT. So `cryptex` is either a coined atom
  -- (this row) or `crypt` seeded first and a Cryptex molecule after. STRIKE
  -- THIS ONE BLOCK if the molecule is the truer reading — nothing else here
  -- depends on it.
  ('cryptex',
   'A cylinder whose lettered rings must be turned to spell the word that opens it. A coined word, crypt + codex. The container and the password are one object: the answer is not kept inside the lock, the answer IS the lock.',
   'root', 5, 5, 1, 'static',
   'b97d275b-c710-4767-bb4b-373a7331d40a', 'play', 'published', null,
   'CRYPTEX', 'cryptex', 'Cryptex')

on conflict (atom_word) do nothing;


-- ============================================================================
-- VERIFY — read-only, safe to re-run.
-- ============================================================================

-- (1) The fourteen stand, wearing what they should. `siren` alone carries ["s"].
select atom_word, category_name, atom_type, state, status, modifiers, pascal_case
from public.atoms
where atom_word in ('cruthu','sceal','kendram','gahana','claude','nemeton','siren',
                    'eist','seanchai','binder','stjorn','scramble','sudoku','cryptex')
order by atom_word;

-- (2) The triggers made their companions, standing empty for a later fill.
--     Expect fourteen rows, both columns true. If either is false, the trigger
--     did not fire for this insert and 101 must plant the stubs by hand.
select a.atom_word,
       (e.id is not null) as etymology_row,
       (s.id is not null) as sensory_row
from public.atoms a
left join public.etymology e on e.atom_id = a.id
left join public.sensory_lexicon s on s.atom_id = a.id
where a.atom_word in ('cruthu','sceal','kendram','gahana','claude','nemeton','siren',
                      'eist','seanchai','binder','stjorn','scramble','sudoku','cryptex')
order by a.atom_word;

-- (3) THE READINESS CHECK — every word the waiting rows need, and whether its
--     atom now stands. Expect NO absences. The awen rows and the beacons rows
--     are both here, because both were asking for the same thing.
with wanted(row_that_waits, word) as (values
  ('molecule ResonanceCruthu','cruthu'),   ('molecule ResonanceSceal','sceal'),
  ('molecule ResonanceKendram','kendram'), ('molecule ResonanceGahana','gahana'),
  ('molecule ResonanceClaude','claude'),   ('molecule ResonanceNemeton','nemeton'),
  ('molecule ResonanceSirens','siren'),    ('molecule ResonanceKhoros — stands','khoros'),
  ('molecule ResonanceSkapa — stands','skapa'),
  ('awen: the-ceilidh','ceilidh'),         ('awen: the-eist','eist'),
  ('awen: the-awenydd','awenydd'),         ('awen: the-seanchai','seanchai'),
  ('awen: the-binder','binder'),           ('awen: the-composer','composer'),
  ('awen: the-sruth','sruth'),             ('awen: the-stjorn','stjorn'),
  ('game: word scramble','scramble'),      ('game: wordoku','sudoku'),
  ('game: cryptex','cryptex'),
  ('game: word find (molecule)','word'),   ('game: word find (molecule)','find'),
  ('game: crossword (molecule)','cross')
)
select w.row_that_waits, w.word,
       case when a.id is null then '— ABSENT —' else 'stands' end as atom,
       a.modifiers
from wanted w
left join public.atoms a on a.atom_word = w.word
order by (a.id is null) desc, w.row_that_waits;


-- ============================================================================
-- OBSERVED WHILE DRAFTING — NOT ACTED ON, NOTHING HERE CHANGES ANYTHING
--
-- KP's word, 2026-08-18: "you may have uncovered a gap in molecules and
-- organisms, but i do not know the casing term for a space between pascal
-- cased atoms" · "so no changes right now" · "just note it."
--
-- THE TERM HE WAS REACHING FOR: `Resonance Awen` — every word capitalised,
-- separated by spaces — is TITLE CASE. The case-conversion libraries (lodash
-- and its kin) call the same thing START CASE. For completeness beside it:
--   ResonanceAwen    PascalCase / UpperCamelCase   <- the base's own convention
--   resonanceAwen    camelCase
--   resonance-awen   kebab-case
--   RESONANCE_AWEN   SCREAMING_SNAKE_CASE  (this base: `screaming_case`)
--   Resonance-Awen   Train-Case / HTTP-Header-Case
--
-- WHAT THE COLUMNS ACTUALLY CARRY, read live 2026-08-18:
--   atoms      pascal_case · snake_case · screaming_case                (3)
--   molecules  pascal_case · snake_case · screaming_case · camel_case ·
--              kebab_case  + `naming_convention` (ResonancePapers: 'PascalCase')
--   organisms  the same five as molecules
--
-- SO THERE ARE TWO ASYMMETRIES, both reported and neither touched:
--
--   1. ATOMS CARRY THREE CASINGS WHERE MOLECULES AND ORGANISMS CARRY FIVE —
--      atoms have no `camel_case` and no `kebab_case`. kebab-case is the form
--      this house's own repositories are named in (`resonance-papers`), so an
--      atom cannot render the shape its realm actually wears on disk.
--
--   2. NOTHING ANYWHERE CARRIES TITLE CASE. `Resonance Khorós`, `Resonance
--      Papers`, `Resonance Awen` — the form used in every README, every board
--      and all the house's prose — exists nowhere in the Grammar. Five casings
--      are stored and the one people actually read is derived by hand each
--      time.
--
--   `molecules.naming_convention` already models "which convention is this
--   name written in," so a Title Case column would have a vocabulary waiting
--   for it rather than needing a new idea.
--
-- NOTHING IS PROPOSED HERE. No column, no backfill, no migration. This block
-- is a note at his word, and the shape of the gap is stated once so nobody has
-- to re-derive it.
-- ============================================================================

-- ── RULED THE SAME SITTING, and the note above stands corrected by it ───────
--
-- KP, 2026-08-18: "yeahm that seems uneeded" · "we have all other cases
-- represented."
--
-- ASYMMETRY 2 IS STRUCK. A Title Case column is not wanted, and he is right on
-- the house's own terms: `Resonance Papers` is a PURE FUNCTION of
-- `pascal_case` — split on the capitals — so storing it would be storing a
-- derived value, which this house does not do anywhere else (the live-artifact
-- law: derived, never stored). Five stored casings plus a one-line derivation
-- covers every form the house writes in. Nothing is missing; a column would
-- have been the thing that could drift.
--
-- What survives above is the vocabulary answer only — Title Case / Start Case
-- is the term — and asymmetry 1 (atoms carry three casings, molecules and
-- organisms five), which he did not rule on and which is not proposed here
-- either.
