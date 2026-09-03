-- ============================================================================
-- RAN 2026-09-02 (night) at KP's ⚛ word — "you are my hands today friend,
-- please use the keyring on the resonance-bridge and our tools" — by Sley 🎻
-- through resonance-grammar/scripts/seed-runner.py (the Management API, the
-- bridge's keyring read at call time, no key printed). HTTP 201. The VERIFY
-- block answered public_rows 15 · unversioned 17 · rows 40, exactly as
-- expected below; read back at the anon door after. §C stayed commented out.
-- ============================================================================
-- DRAFT ONLY — the beacons reckoned, 2026-09-02
--
-- Reconciled by the reckoner (read-only) at ~20:00 CDT against: the `beacons`
-- TABLE on the KNOWLEDGE base (40 rows, read through the-light-list's own
-- reader at the anon door; the `resonance_beacons` shim is gone — seed 097 has
-- run), a live GitHub census (repos_snapshot.py --dry: 40 repos visible to the
-- house key, 15 public / 25 private, unchanged against the 14:45 photograph),
-- and 38 folders on disk. NOTHING BELOW HAS BEEN RUN. This file runs ONLY by
-- KP's ⚛ hand, in his dashboard.
--
-- Dealt by Sley 🎻 (Fable) picking up handoff 43 — "the reckoner's SQL for the
-- beacons register (sirens and sistrum public, versions, theophany and void
-- rows) at his dashboard." The theophany and void rows are DONE (seed 146 ran:
-- both rows exist, slug · repo_url · home · definition · is_public · version
-- agree with disk). What is still waiting is (A) and (B) below.
--
-- SUPERSEDES DRAFT-2026-08-18-the-beacons-reckoning.sql §A/§B and
-- 098-the-coast-reckoned.sql §B: their 16 version fills carry 8 that are now
-- WRONG (bubbles 0.1.0→0.1.1 · compass 2.3.5→2.3.8 · echoes 1.3.2→1.4.1 ·
-- khoros 0.1.0→0.2.0 · lantern 0.1.1→0.2.1 · sistrum 0.1.0→0.2.0 ·
-- skapa 0.1.0→0.1.1 · weaver 0.1.0→2.0.0) and miss 7 repos that have since
-- gained code (ardan · cruthu · nectere · sceal · scribe · sirens · tarocchi).
-- Running either as written would write false versions.
--
-- Every statement carries WHERE slug =. No DELETE. status, beacon_type,
-- definition, story and every store column untouched — KP's authoring, not
-- the ground's.
--
-- One row unchecked and named: `aethelred-cello` (register false; its repo
-- lives under owner aethelred-cello, which the house key cannot see). Seed
-- 098 observed it public on 08-15; not confirmed through the sanctioned road
-- today. Nothing drafted for it.
-- ============================================================================


-- ─── (A) is_public — the census is the definition ────────────────────────
--
-- The column's own comment, read from the base tonight: "Whether the repo is
-- public. Defaults false: private is the reversible direction, public is not."
-- Both rows are plain factual errors in the safe direction — the register
-- under-claims. ZERO rows claim an openness the ground does not hold.

update public.beacons set is_public = true where slug = 'resonance-sirens';   -- GitHub: public
update public.beacons set is_public = true where slug = 'resonance-sistrum';  -- GitHub: public


-- ─── (B) version — null on all 40 rows; 23 fills from the code ───────────
--
-- Ground address for each: C:\_superposition\<slug>\package.json,
-- src-tauri\tauri.conf.json, src-tauri\Cargo.toml — the three manifests agree
-- with each other in every repo where three exist. Three carry package.json
-- only, marked. 15 rows have no version source among the three named files
-- and stay null: chamber · claude · daedalus · excavator · gahana · grammar ·
-- kendram · library · lucida · meetings · nemeton · papers · progenatrix ·
-- theophany · void. (resonance-grammar's top-level Cargo.toml names
-- "resonance-knowledge" 0.1.0 — not a named source; reported, not drafted.)

update public.beacons set version = '2.0.0' where slug = 'audhdities';         -- package.json only
update public.beacons set version = '0.1.0' where slug = 'resonance-ardan';
update public.beacons set version = '0.1.0' where slug = 'resonance-assets';
update public.beacons set version = '0.1.0' where slug = 'resonance-awen';
update public.beacons set version = '0.2.0' where slug = 'resonance-bridge';   -- package.json only
update public.beacons set version = '0.1.1' where slug = 'resonance-bubbles';
update public.beacons set version = '2.3.8' where slug = 'resonance-compass';
update public.beacons set version = '0.2.0' where slug = 'resonance-cruthu';
update public.beacons set version = '1.4.1' where slug = 'resonance-echoes';
update public.beacons set version = '0.1.0' where slug = 'resonance-gaia';
update public.beacons set version = '0.1.1' where slug = 'resonance-hearth';
update public.beacons set version = '0.2.0' where slug = 'resonance-khoros';
update public.beacons set version = '0.2.1' where slug = 'resonance-lantern';
update public.beacons set version = '0.1.0' where slug = 'resonance-nectere';  -- package.json only
update public.beacons set version = '0.1.0' where slug = 'resonance-sceal';
update public.beacons set version = '0.1.0' where slug = 'resonance-scribe';
update public.beacons set version = '0.1.1' where slug = 'resonance-sirens';
update public.beacons set version = '0.2.0' where slug = 'resonance-sistrum';
update public.beacons set version = '0.1.1' where slug = 'resonance-skapa';
update public.beacons set version = '0.1.0' where slug = 'resonance-standards';
update public.beacons set version = '0.1.0' where slug = 'resonance-tarocchi';
update public.beacons set version = '2.0.0' where slug = 'resonance-weaver';
update public.beacons set version = '0.1.0' where slug = 'resonance-ziggy';


-- ─── (C) icon_emoji — KP's stroke, drafted commented-out ─────────────────
--
-- The void's README heading wears the hole mark; seed 146 left the column
-- null on purpose ("KP's to row"). Theophany's README heading carries no
-- emoji yet, so its null agrees — a README matter, nothing to draft.

-- update public.beacons set icon_emoji = '🕳️' where slug = 'resonance-void';


-- ─── after ────────────────────────────────────────────────────────────────
--
-- Seed 098 followed its beacon changes with  select bond_tender();
-- select public.gaia_sync();  — whether plain column updates warrant that
-- ritual is KP's call, not drafted.


-- ─── VERIFY ───────────────────────────────────────────────────────────────

select slug, is_public, version from public.beacons
 where slug in ('resonance-sirens','resonance-sistrum','resonance-theophany','resonance-void')
 order by slug;

select count(*) filter (where is_public)      as public_rows,
       count(*) filter (where version is null) as unversioned,
       count(*)                                as rows
  from public.beacons;
-- expect: public_rows 15 (= GitHub's 15 public repos) · unversioned 17 · rows 40


-- ─── README badges — findings, not SQL ────────────────────────────────────
--
-- Code is the finding, the badge the defect (the register reads code):
--   resonance-khoros  badge 0.1.0 vs code 0.2.0
--   resonance-sirens  badge 0.1.0 vs code 0.1.1
--   resonance-sistrum badge 0.1.0 vs code 0.2.0
--   resonance-skapa   badge 0.1.0 vs code 0.1.1
-- Six READMEs wear a badge with no code version behind it (daedalus 0.0.0;
-- excavator · gahana · grammar · kendram · progenatrix 0.1.0) — unbacked, not
-- disagreements. The four the 08-18 draft named (bridge · compass · lantern ·
-- standards) now agree with their code.
--
-- Absences: AudHDities-Resonance is a private repo on GitHub with no folder
-- and no row (named absent on 08-18 too); no disk folder lacks a row.
