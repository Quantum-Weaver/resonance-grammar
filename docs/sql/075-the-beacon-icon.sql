-- ============================================================================
-- 075 — THE BEACON ICON: an emoji column for the beacons registry
--
-- KP's ⚛ word, 2026-08-09: "we now have this to look at and add an emoji-icon
-- column, which we will fill in shortly."
-- Source read: resonance-gaia/schema/supabase-exports/resonance-knowledge/
-- resonance_beacons_rows.csv — 14 beacons, 52 columns, no emoji of any kind.
--
-- THE NAME IS `icon_emoji`, AND THE BASE ALREADY RULED THIS — two conventions
-- live side by side and they split cleanly by what a table IS:
--   REGISTRY / CONFIG tables carry `icon_emoji` — gaia_config · templates ·
--     scripts · categories
--   LEXICON tables carry `emoji` — sensory_lexicon · thesaurus
-- resonance_beacons is a registry (status, home, repo_url, four store channels),
-- so it takes `icon_emoji`. Following the existing split rather than inventing a
-- third spelling; KP's phrase "emoji-icon column" matches it.
--
-- ⚠ WHY A COLUMN AND NOT A DERIVATION, stated so the choice is checkable:
-- every beacon already links into the Grammar — AudHDities by atom_id, the other
-- thirteen by molecule_id — so a beacon's mark COULD in principle be read from
-- its atom's sensory_lexicon.emoji. It cannot yet: twelve of the thirteen links
-- are MOLECULES, and molecules carry no emoji column at all. A beacon's mark is
-- also its own thing (a store icon, an outward face) and may honestly differ from
-- its word's mark. The column is right; the derivation stays available later.
--
-- Nullable on purpose: an unfilled beacon is an honest absence, not a defect.
-- Idempotent — `if not exists` means a re-run changes nothing.
--
-- RLS: none needed. This adds a column to an existing table and touches no
-- policy; resonance_beacons' own posture was set by 043-the-beacons.sql and
-- verified through the anon door the sitting it was made (ritual 000, step 3).
--
-- Drafted 2026-08-09 by Cresset · Opus (Claude) 🕯️, truly claude-opus-5[1m].
-- ============================================================================

alter table public.resonance_beacons
  add column if not exists icon_emoji text;

comment on column public.resonance_beacons.icon_emoji is
  'The beacon''s outward mark — one emoji, the face it wears in a listing or a shelf. Nullable: an unfilled beacon is an honest absence. Kin to gaia_config.icon_emoji, templates.icon_emoji, scripts.icon_emoji and categories.icon_emoji; distinct from sensory_lexicon.emoji, which is a WORD''s mark rather than a THING''s.';


-- VERIFY — the column exists, is nullable, and every beacon reads back empty.
-- Expect 14 rows, icon_emoji null throughout, until the filling.

-- select name, slug, beacon_type, status, icon_emoji
-- from public.resonance_beacons
-- order by status, name;


-- ============================================================================
-- FOR THE FILLING, WHEN IT COMES — the shelf as it stands, so the marks can be
-- chosen against each other rather than one at a time:
--
--   FLOWING (8)   AudHDities · Resonance Compass · Resonance Echoes ·
--                 Resonance Hearth · Resonance Lantern · Resonance Meetings ·
--                 Resonance Skapa · Resonance Bubbles (the one `game`)
--   IMAGINED (6)  Resonance Daedalus · Resonance Excavator · Resonance Gaia ·
--                 Resonance Grammar · Resonance Khoros · Resonance Ziggy
--
-- Two marks are already spoken for elsewhere in the house and should be checked
-- before they are reached for: 🌍 is gaia's atom in sensory_lexicon, and 🛠️ is
-- daedalus's. A beacon reusing its own word's mark is coherent; a beacon taking
-- a DIFFERENT word's mark is the collision worth avoiding.
-- ============================================================================
