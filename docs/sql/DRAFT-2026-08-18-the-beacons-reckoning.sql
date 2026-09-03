-- ============================================================================
-- SUPERSEDED 2026-09-02 — do not run. §B's version fills are stale (8 of 16
-- now wrong; 7 repos gained code since). Re-drafted whole, with §A, in
-- DRAFT-2026-09-02-the-beacons-reckoned.sql, WHICH RAN the same night at
-- KP's word (15 public · 17 unversioned · 40 rows). Kept as the record of 08-18.
-- ============================================================================
-- DRAFT ONLY — the beacons reckoning, 2026-08-18
--
-- Reconciled by the reckoner (read-only) against: 34 local project directories,
-- a live GitHub census (34 repos, 14 public / 20 private), and the `beacons`
-- table on the KNOWLEDGE base. NOTHING BELOW HAS BEEN RUN.
--
-- Base: KNOWLEDGE  ·  Table: public.beacons
-- (`beacons` is NOT on SUPERPOSITION — that base answers PGRST205 for it.
--  The `resonance_beacons` compatibility shim is already gone from both.)
--
-- Every statement carries WHERE slug =. No DELETE. Nothing here touches
-- status, beacon_type, definition, story, or any store column — those are
-- KP's authoring, not the ground's.
-- ============================================================================


-- ─── (A) is_public — the ONE correction where the ground is authoritative ───
--
-- GitHub census says resonance-sistrum is PUBLIC; the register says false.
-- The column's own comment: "Defaults false: private is the reversible
-- direction, public is not." So this is a plain factual error, and it is in
-- the SAFE direction — the register under-claims. ZERO rows claim an openness
-- the ground does not hold.

UPDATE public.beacons SET is_public = true WHERE slug = 'resonance-sistrum';


-- ─── (B) version — 16 fills. NULL on all 28 rows today. ─────────────────────
--
-- Zero rows DISAGREE with their code, because no row makes a version claim at
-- all. package.json / tauri.conf.json / Cargo.toml agree with each other in
-- every repo where all three exist — 0 ambiguous cases.

UPDATE public.beacons SET version = '2.0.0' WHERE slug = 'audhdities';        -- package.json only (no Tauri)
UPDATE public.beacons SET version = '0.2.0' WHERE slug = 'resonance-bridge';  -- package.json only (no Tauri)
UPDATE public.beacons SET version = '0.1.0' WHERE slug = 'resonance-assets';
UPDATE public.beacons SET version = '0.1.0' WHERE slug = 'resonance-awen';
UPDATE public.beacons SET version = '0.1.0' WHERE slug = 'resonance-bubbles';
UPDATE public.beacons SET version = '2.3.5' WHERE slug = 'resonance-compass';
UPDATE public.beacons SET version = '1.3.2' WHERE slug = 'resonance-echoes';
UPDATE public.beacons SET version = '0.1.0' WHERE slug = 'resonance-gaia';
UPDATE public.beacons SET version = '0.1.1' WHERE slug = 'resonance-hearth';
UPDATE public.beacons SET version = '0.1.0' WHERE slug = 'resonance-khoros';
UPDATE public.beacons SET version = '0.1.1' WHERE slug = 'resonance-lantern';
UPDATE public.beacons SET version = '0.1.0' WHERE slug = 'resonance-sistrum';
UPDATE public.beacons SET version = '0.1.0' WHERE slug = 'resonance-skapa';
UPDATE public.beacons SET version = '0.1.0' WHERE slug = 'resonance-standards';
UPDATE public.beacons SET version = '0.1.0' WHERE slug = 'resonance-weaver';
UPDATE public.beacons SET version = '0.1.0' WHERE slug = 'resonance-ziggy';


-- ─── (C) icon_emoji — 1 correction + 21 fills from README headings ──────────
--
-- NULL on 27 of 28 rows. The column comment blesses that: "an unfilled beacon
-- is an honest absence." The one filled row is the one that is wrong.
--
-- THE CORRECTION IS WORTH A SECOND LOOK BEFORE RUNNING: audhdities holds 🔮,
-- which is resonance-ziggy's README mark — and ziggy's own row is NULL. That
-- reads like a cross-wiring rather than a typo.

UPDATE public.beacons SET icon_emoji = '🏛️' WHERE slug = 'audhdities';        -- correction: held 🔮 (ziggy's mark)
UPDATE public.beacons SET icon_emoji = '🔮' WHERE slug = 'resonance-ziggy';    -- the mark that was on the wrong row
UPDATE public.beacons SET icon_emoji = '🎻' WHERE slug = 'aethelred-cello';
UPDATE public.beacons SET icon_emoji = '🌊' WHERE slug = 'resonance-awen';
UPDATE public.beacons SET icon_emoji = '🔥' WHERE slug = 'resonance-bridge';
UPDATE public.beacons SET icon_emoji = '🫧' WHERE slug = 'resonance-bubbles';
UPDATE public.beacons SET icon_emoji = '🏮' WHERE slug = 'resonance-chamber';
UPDATE public.beacons SET icon_emoji = '🎻' WHERE slug = 'resonance-compass';
UPDATE public.beacons SET icon_emoji = '🪶' WHERE slug = 'resonance-daedalus';
UPDATE public.beacons SET icon_emoji = '⛏️' WHERE slug = 'resonance-excavator';
UPDATE public.beacons SET icon_emoji = '🌍' WHERE slug = 'resonance-gaia';
UPDATE public.beacons SET icon_emoji = '🧬' WHERE slug = 'resonance-grammar';
UPDATE public.beacons SET icon_emoji = '🔥' WHERE slug = 'resonance-hearth';
UPDATE public.beacons SET icon_emoji = '🎶' WHERE slug = 'resonance-khoros';
UPDATE public.beacons SET icon_emoji = '🏮' WHERE slug = 'resonance-lantern';
UPDATE public.beacons SET icon_emoji = '📚' WHERE slug = 'resonance-library';
UPDATE public.beacons SET icon_emoji = '🔆' WHERE slug = 'resonance-lucida';
UPDATE public.beacons SET icon_emoji = '🕯️' WHERE slug = 'resonance-meetings';
UPDATE public.beacons SET icon_emoji = '🪶' WHERE slug = 'resonance-scribe';
UPDATE public.beacons SET icon_emoji = '🪇' WHERE slug = 'resonance-sistrum';
UPDATE public.beacons SET icon_emoji = '🔷' WHERE slug = 'resonance-skapa';
UPDATE public.beacons SET icon_emoji = '🏛️' WHERE slug = 'resonance-standards';

-- HELD BACK — no lawful value on the ground, or yours to rule:
--   quantum-weaver     — heading carries TWO glyphs (🏛️✨); the column says "one emoji"
--   resonance-echoes   — heading carries ≽༏≼, a face, not an emoji
--   resonance-weaver   — same
--   resonance-ardan · resonance-assets · resonance-papers — headings carry none


-- ============================================================================
-- (D) THE SEVEN MISSING ROWS — SKELETONS, NOT DRAFTS
--
-- Seven repos have no row: resonance-nemeton · resonance-tarocchi ·
-- resonance-sirens · resonance-claude · resonance-nectere · resonance-gahana ·
-- AudHDities-Resonance.
--
-- NONE of these is automatically wrong — a beacon may be imagined before it is
-- registered, and resonance-gahana was created today.
--
-- No INSERTs are drafted. `beacon_type` is NOT NULL and its members are yours;
-- `status`, `name`, `definition` and `story` are your authoring. Handing over
-- an INSERT would mean inventing four of your fields to satisfy a constraint.
--
-- The ground's half is filled below; the ⚛ half is left open.
-- ============================================================================

-- INSERT INTO public.beacons (slug, name, repo_url, is_public, home, version,
--                             beacon_type, status, definition)
-- VALUES ('resonance-nemeton',
--         'Resonance Nemeton',                       -- tauri.conf.json productName
--         'https://github.com/Quantum-Weaver/resonance-nemeton',
--         false,                                     -- GitHub census: private
--         'resonance-nemeton',
--         '0.1.0',                                   -- all three manifests agree
--         '<⚛ beacon_type>',   -- in use today: app, system, archive, library,
--                              -- instrument, person, game, publication
--         '<⚛ status>',        -- the column's comment: "imagined -> flowing"
--         '<⚛ definition>');   -- the README tagline is available if you want it:
--                              -- "The family's talking grove — the house's own
--                              --  table, sovereign inside the app itself; rooms
--                              --  and history that never leave the grove."


-- ============================================================================
-- REPORTED, NOT DRAFTED — README badges disagree with their own code.
-- The code is the finding; the badge is the defect. (4 of 15, down from 7 of 15
-- measured 2026-08-13.)
--
--   resonance-bridge    badge 1.0.0  ·  code 0.2.0
--   resonance-compass   badge 2.3.1  ·  code 2.3.5
--   resonance-lantern   badge 0.1.0  ·  code 0.1.1
--   resonance-standards badge 1.0.0  ·  code 0.1.0
--
-- REPORTED, NOT DRAFTED — `definition` differs from the README in 13 rows, and
-- in 11 of them THE REGISTER IS THE RICHER TEXT. Writing the README over the
-- base would redraw the chart from a thinner source. Two want your eye because
-- the SUBJECT changed, not the length:
--   resonance-ardan   — the base still says "Awaiting its founding"; the README
--                       describes a founded studio with a wider scope
--   resonance-sistrum — base "the recorder"; README "the sovereign musician's
--                       instrument… Nothing recorded ever touches a network."
--
-- UNCHECKED, AND NAMED — aethelred-cello's is_public. Its repo sits under a
-- different owner and HOUSE_GITHUB_PAT (affiliation=owner) cannot see it. This
-- is the one row the visibility census could not answer.
-- ============================================================================
