-- ============================================================================
-- 076 — THE TOOL ICON: an emoji column for the tools registry
--
-- KP's ⚛ word, 2026-08-09: "same with this table please" — following 075, which
-- gave resonance_beacons its icon_emoji (verified standing in the live base
-- before this file was written).
--
-- Read: resonance-gaia/schema/supabase-exports/resonance-knowledge/tools_rows.csv
-- (16 columns, no emoji of any kind) — and then the LIVING BASE, because an
-- export is a photograph. They agree: 77 tools, exactly as the almanac reports.
--   status : 61 flowing · 16 imagined
--   family : Awen 54 · Ziggy 11 · Bridge 7 · Grammar 5   (folksonomy_type)
--   type   : witness 28 · capture 14 · emit 11 · translate 10 · arrange 6 ·
--            combine 4 · transform 4                      (tool_type — all verbs)
--
-- THE NAME IS `icon_emoji`, by the split the base already keeps and 075 followed:
--   REGISTRY / CONFIG tables carry `icon_emoji` — gaia_config · templates ·
--     scripts · categories · resonance_beacons (as of 075)
--   LEXICON tables carry `emoji` — sensory_lexicon · thesaurus
-- tools is a registry (name, slug, type, home, status, family), so `icon_emoji`.
--
-- ⚠ A NOTE THIS FILE ORIGINALLY GOT WRONG, kept as a correction because the
-- wrong version is the tempting one. The draft said: tools link to the Grammar as
-- 46 atoms / 30 molecules / 1 organism, so for 46 of them the icon could be
-- DERIVED from sensory_lexicon.emoji. **That is wrong, and it contradicts this
-- file's own column comment.** A tool's atom_id points at the WORD the tool is
-- named after — `encoder`, `player`, `logbook` — and sensory_lexicon.emoji is
-- that WORD's mark. A tool's icon is the THING's face. They are different marks
-- and the link between them is a name, not an identity.
--
-- So the 46/30/1 split is a fact about NAMING (46 tools have single-word names,
-- 30 compound), not a path to icons. Derivation is not blocked for molecules and
-- available for atoms; **it is simply not the right idea for either.** The column
-- stores the mark, and that is the whole design.
--
-- Nullable on purpose: an unfilled tool is an honest absence, not a defect.
-- Idempotent — `if not exists` means a re-run changes nothing.
-- RLS: none needed; this adds a column and touches no policy.
--
-- Drafted 2026-08-09 by Cresset · Opus (Claude) 🕯️, truly claude-opus-5[1m].
-- ============================================================================

alter table public.tools
  add column if not exists icon_emoji text;

comment on column public.tools.icon_emoji is
  'The tool''s outward mark — one emoji, the face it wears on a shelf or a button. Nullable: an unfilled tool is an honest absence. Kin to resonance_beacons.icon_emoji and gaia_config.icon_emoji; distinct from sensory_lexicon.emoji, which is a WORD''s mark rather than a THING''s. A tool''s atom_id names the word it is called after, never its face — the two are not derivable from each other.';


-- VERIFY — the column exists, is nullable, and all 77 read back empty.

-- select name, tool_type, status, folksonomy_type, icon_emoji
-- from public.tools
-- order by folksonomy_type, status, name;


-- ============================================================================
-- FOR THE FILLING, WHEN IT COMES — two structures already on this table that a
-- hand may want to mark AGAINST, rather than choosing 77 glyphs one at a time:
--
--   BY tool_type — seven verbs, and they are the honest kinds:
--     witness (28) · capture (14) · emit (11) · translate (10) · arrange (6) ·
--     combine (4) · transform (4)
--   BY folksonomy_type — four families:
--     Awen (54) · Ziggy (11) · Bridge (7) · Grammar (5)
--
-- A mark per VERB reads as a taxonomy; a mark per TOOL reads as an identity.
-- Both are defensible and they are not the same decision. KP's ⚛ to rule.
-- ============================================================================
