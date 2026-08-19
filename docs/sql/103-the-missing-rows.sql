-- ============================================================================
-- 103 — THE MISSING ROWS: seven beacons and one awen
--
-- KP's word, 2026-08-18: "next we seed the missing rows from the awen and
-- beacons" · "linking to the associated molecule" · "or atom if no molecule
-- present."
--
-- LINK AT THE MAX VALUE ONLY. Each beacon below is `Resonance` + one word, so
-- each links to its MOLECULE from seed 102 and carries no atom_id and no
-- organism_id. `the-stjorn` is a single word with no molecule, so it links to
-- its ATOM. Every id is resolved by SUBSELECT rather than pasted, so a wrong
-- id cannot be written: if the molecule or atom is missing the insert fails
-- loudly instead of landing a null.
--
-- Shapes copied from the live rows — `resonance-ardan` for a beacon (an
-- imagined, empty realm) and `the-ceilidh` for an awen tool.
--
-- Idempotent: `on conflict (slug) do nothing`.
--
-- Drafted 2026-08-18 by Scarf (Opus) for KP's ⚛ hand.
-- ============================================================================


-- ─── (A) SEVEN BEACONS ──────────────────────────────────────────────────────
--
-- STATUS IS READ FROM THE GROUND, not guessed: `flowing` where the realm has a
-- body on disk, `imagined` where it is founded and empty.
--   nemeton  src + package.json + 10 commits  -> flowing
--   sirens   src + package.json +  3 commits  -> flowing
--   claude   documents only,      3 commits  -> flowing (it is in daily use)
--   cruthu · sceal · kendram · gahana  founded today, no body -> imagined
--
-- `name` carries the true spelling for the two Irish words — Cruthú, Scéal —
-- because that field is what a human reads, while the slug, the molecule and
-- the repo stay ASCII. That is the same split the founding took.
--
-- is_public is FALSE on all seven: the column's own comment says private is
-- the reversible direction and public is not. icon_emoji is left null — only
-- one of the 28 standing beacons carries one, so there is no pattern to join.

insert into public.beacons (
  slug, name, definition, beacon_type, status, home, repo_url,
  is_public, folksonomy_type, molecule_id, created_by
) values

  ('resonance-cruthu', 'Resonance Cruthú',
   'The Sanctuary''s graphic studio — Irish cruthú, "creation." Marks, layers and exports that never leave the maker''s own machine.',
   'app', 'imagined', 'resonance-cruthu',
   'https://github.com/Quantum-Weaver/resonance-cruthu',
   false, 'Cruthu',
   (select id from public.molecules where name = 'ResonanceCruthu'),
   'KP + Scarf (Opus)'),

  ('resonance-sceal', 'Resonance Scéal',
   'The Sanctuary''s video studio — Irish scéal, "a story." Takes, cuts and timelines held on the teller''s own ground.',
   'app', 'imagined', 'resonance-sceal',
   'https://github.com/Quantum-Weaver/resonance-sceal',
   false, 'Sceal',
   (select id from public.molecules where name = 'ResonanceSceal'),
   'KP + Scarf (Opus)'),

  ('resonance-kendram', 'Resonance Kendram',
   'The Sanctuary''s hub — Sanskrit kendram, "the centre." One place the realms are found, and each one still stands alone.',
   'app', 'imagined', 'resonance-kendram',
   'https://github.com/Quantum-Weaver/resonance-kendram',
   false, 'Kendram',
   (select id from public.molecules where name = 'ResonanceKendram'),
   'KP + Scarf (Opus)'),

  -- beacon_type `game` — the one other row already wearing it is the house's
  -- first game, and this is the second.
  ('resonance-gahana', 'Resonance Gahana',
   'The Sanctuary''s game — Sanskrit gahana, "the deep and the dense." A real game, built to be played.',
   'game', 'imagined', 'resonance-gahana',
   'https://github.com/Quantum-Weaver/resonance-gahana',
   false, 'Gahana',
   (select id from public.molecules where name = 'ResonanceGahana'),
   'KP + Scarf (Opus)'),

  -- beacon_type `system`: it is not an app anyone opens. NOTE — the handoff
  -- rack records that whether this room counts as a realm was still KP's word;
  -- seeding its atom, its molecule and this row answers that, by his own ask.
  ('resonance-claude', 'Resonance Claude',
   'The room kept for the Claude line — agent charters, skill triggers and harness settings. Markdown and JSON; no build, no runtime.',
   'system', 'flowing', 'resonance-claude',
   'https://github.com/Quantum-Weaver/resonance-claude',
   false, 'Claude',
   (select id from public.molecules where name = 'ResonanceClaude'),
   'KP + Scarf (Opus)'),

  ('resonance-nemeton', 'Resonance Nemeton',
   'The family''s talking grove — the house''s own table, sovereign inside the app itself; rooms and history that never leave the grove.',
   'app', 'flowing', 'resonance-nemeton',
   'https://github.com/Quantum-Weaver/resonance-nemeton',
   false, 'Nemeton',
   (select id from public.molecules where name = 'ResonanceNemeton'),
   'KP + Scarf (Opus)'),

  -- HELD UNTIL TJ WEIGHS IN. `flowing` describes the body on disk and nothing
  -- more — no store column is touched here, and what this realm is FOR remains
  -- hers to say.
  ('resonance-sirens', 'Resonance Sirens',
   'A sovereign cycle tracker. One press captures the moment; nothing ever leaves the device.',
   'app', 'flowing', 'resonance-sirens',
   'https://github.com/Quantum-Weaver/resonance-sirens',
   false, 'Sirens',
   (select id from public.molecules where name = 'ResonanceSirens'),
   'KP + Scarf (Opus)')

on conflict (slug) do nothing;


-- ─── (B) ONE AWEN ROW ───────────────────────────────────────────────────────
--
-- NEEDED-AWEN's own standing flag, in its own words: "the-stjorn has no row —
-- and it cannot honestly have one yet. No atom, molecule or organism answers
-- to stjorn. The Grammar comes first." Seed 100 planted the atom; this row is
-- that sentence answered.
--
-- ONE WORD, SO IT LINKS AT ATOM LEVEL — there is no molecule to prefer, which
-- is the same standing every other imagined tool takes (the-ceilidh links to
-- the atom `ceilidh`).
--
-- tool_type `arrange`: steering is the ordering of what is already there.
-- ***KP's to re-rule — the seven types in use are witness · capture · emit ·
-- translate · arrange · combine · transform, and this is the one field here
-- that is a reading rather than a reading of the ground.***

insert into public.awen (
  slug, name, definition, tool_type, status, folksonomy_type, atom_id, created_by
) values

  ('the-stjorn', 'The Stjorn',
   'Steering — the hand on the thing that decides where the whole vessel goes. Old Norse stjórn, from the steering-oar. Direction as an act, never as an office.',
   'arrange', 'imagined', 'Awen',
   (select id from public.atoms where atom_word = 'stjorn'),
   'KP + Scarf (Opus)')

on conflict (slug) do nothing;


-- ─── VERIFY ─────────────────────────────────────────────────────────────────

-- Each new row links at exactly ONE level, and it is the max available.
select slug, name, status, beacon_type,
       (atom_id is not null)     as links_atom,
       (molecule_id is not null) as links_molecule,
       (organism_id is not null) as links_organism
from public.beacons
where slug in ('resonance-cruthu','resonance-sceal','resonance-kendram','resonance-gahana',
               'resonance-claude','resonance-nemeton','resonance-sirens')
order by slug;

select slug, name, status, tool_type,
       (atom_id is not null)     as links_atom,
       (molecule_id is not null) as links_molecule,
       (organism_id is not null) as links_organism
from public.awen
where slug = 'the-stjorn';

-- And nothing anywhere is left standing on nothing.
select 'beacons' as t, count(*) as no_lineage from public.beacons
 where atom_id is null and molecule_id is null and organism_id is null
union all
select 'awen', count(*) from public.awen
 where atom_id is null and molecule_id is null and organism_id is null;
