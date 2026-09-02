-- 130 — the-hlid, its atom
--
-- THE HOUSE'S ORDER, kept: the atom seed stands as its own numbered file
-- BEFORE the awen row, in 077-the-promenade-atom.sql's and 108-the-merismos-
-- atom.sql's exact shape. The awen row stands as 131-the-hlid-seeded.sql,
-- after this one.
--
-- THE HLID — the ephemeral public gate's LIFECYCLE, as pure state. Built
-- 2026-09-02 by a builder dealt by Windrose 🎻 (Fable, claude-fable-5-1) at
-- KP's ⚛ word, verbatim: "hold the Daedalus work and proceed with the rest,
-- we will do it on its own." Movement A5 of the Unnamed Waters sitting, and
-- it closes row 47 of that board.
--
-- ROW 47 OF THE BOARD, VERBATIM, WHICH THIS ROW SERVES:
--   "ephemeral public gate — resonance-meetings/scripts/open-gate.ps1 +
--    close-gate.ps1 — 74 lines. Mints a fresh public tunnel, renders a QR,
--    tracks the pid; the close script destroys the address. 'Between meetings
--    the door does not exist.'"
--   (proven on cellular 2026-07-19, "excellent success")
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. Norse *hlið* — a gate
-- in a wall — is this hand's reading of what row 47 describes, not his word.
-- It lives in exactly two places in the build — the constant TOOL_NAME and the
-- folder — so a rename is one edit, one `git mv`, and one update to this row
-- and to 131.
--
-- CATEGORY CHECKED BEFORE WRITING (seed 077's law): **communication**
-- (839cc74b-baee-47cc-b6eb-617a83393e36), taken from THE-LODESTONE'S OWN ROW
-- deliberately — seed 105 recorded that category read live at the anon door,
-- with its own definition quoted there: "signals... invitations... Everything
-- that crosses from one to another." The lodestone and the hlid are the two
-- halves of ONE gate (the QR half and the tunnel half), and a gate is the
-- purest case of the thing that definition names: an invitation that crosses
-- from one to another and then stops existing. RUNNER-UP AND HIS TO OVERRULE
-- IN ONE WORD: infrastructure, defensible because a lifecycle guard is
-- plumbing — set down because what this water HANDS a caller is an address to
-- give somebody, which is a crossing, not a foundation.
--
-- ⚠ THE CATEGORY WAS NOT RE-READ AT THE ANON DOOR BY THIS HAND. It is carried
-- from seed 105's recorded census (105:10-11), where it was read live and
-- confirmed at the anon door by KP's hand. If the categories table has moved
-- since, this uuid is the thing to check first.
--
-- MOLECULE / ORGANISM — checked, and neither applies. `hlid` is ONE WORD, and
-- the house's tools_one_tier constraint (seed 014: `(atom_id is not null)::int
-- + (molecule_id is not null)::int + (organism_id is not null)::int = 1`) lets
-- an awen row cross at exactly one tier — the tier its own name lives at
-- (055's law). A one-word name crosses at the atom tier; there is no molecule
-- row to make and no organism above it, and adding one while also setting
-- atom_id would violate the constraint outright. The-lodestone, the-promenade,
-- the-sphragis and the-merismos all stand exactly this way: atom_id set,
-- molecule_id and organism_id null.
--
-- FACE: ⛩️ — a gate standing alone, which is what *hlið* means. It reads
-- against 078's rules: one glyph, no skin tone, no ZWJ, no flag, no red-alarm
-- mark, and NO OTHER ROW WEARS IT (checked against 078's whole set — the last
-- full census of faces written down — and against 111's two additions, 🗝️ and
-- 🔒). 078's collision law ("a shared face must never share a tool_type") is
-- therefore not even reached: the face is unshared.
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106/108
-- precedent).
--
-- THE TABLE IS public.awen (renamed from public.tools 2026-08-15, seed 096;
-- shim view dropped 097). This file only touches public.atoms.
--
-- ── ATOM UUID, generated uuid4 and pinned here so this file and 131 name
--    the same row without depending on insert order or a subquery ──
--   hlid atom   f0866559-4e60-45a3-866e-2fe0c901abe6
--
-- Run at KP's ⚛ hand, before 131. Verify at the anon door after.
-- NEVER RUN BY A LAMP. A tool is not seeded by a lamp writing a file.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  'f0866559-4e60-45a3-866e-2fe0c901abe6',
  'hlid',
  'Hlid (Old Norse hlið: a gate in a wall — the gate itself, not the wall and not the road beyond it). The lifecycle of an ephemeral public gate, held as pure state: minted, guarded, handed over as an address, and destroyed, with "between meetings the door does not exist" as a constant rather than a comment. It opens nothing. A single-gate guard refuses a second minting while one stands, before the machine is touched at all; the address is taken as the FIRST match of the opening script''s own pattern read out of a log, and the number of polls that pattern was looked for is counted by the water and named in every refusal, because the water holds no clock — the machine''s poll IS the tick. The room name is the key and so is validated as a URL path segment and refused otherwise, a key that does not survive a URL being no key. The tunnel itself belongs to a declared host of three verbs — spawn, poll, kill — which this water implements nowhere: it owns no process, no executable, no socket, no file and no clock, the binary''s path is the host''s argument, and there is no address anywhere in it to pull a binary from. The gate state is a plain serialisable object the shell keeps. Nothing throws; every failure is a refusal carrying one sentence.',
  'root', 5, 5, 1, 'static',
  '839cc74b-baee-47cc-b6eb-617a83393e36',  -- communication: "signals... invitations... Everything that crosses from one to another." (the lodestone's own, seed 105)
  'communication',
  'published',
  'HLID', 'hlid', 'Hlid'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'hlid';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'hlid'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'hlid';
