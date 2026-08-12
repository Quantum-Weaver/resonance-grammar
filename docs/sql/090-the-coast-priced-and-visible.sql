-- =====================================================================
-- 090 — THE COAST PRICED AND VISIBLE
-- resonance_beacons learns the ladder, the repo visibility, and its
-- own missing addresses.
-- =====================================================================
--
-- Drafted 2026-08-11 by Cistern (Opus 🕯️) at KP's ⚛ word this sitting,
-- verbatim: "we need to update the table in knowledge for the pricing
-- and repo public status."
--
-- =====================================================================
-- THE GROUND, READ LIVE BEFORE DRAFTING (no photographs — lesson 8)
-- =====================================================================
--
-- 1 · `resonance_beacons` = 26 rows. **is_public is False on ALL 26**
--     and **audhdities_price_cents is NULL on ALL 26.** Nothing set yet;
--     this paper is the coast's first pricing and its first honest
--     visibility.
--
-- 2 · The GitHub census, through the house key (HOUSE_GITHUB_PAT),
--     2026-08-11: **26 repos — 13 public, 13 private.**
--
-- 3 · **A THIRD GAP, FOUND WHILE MAPPING and worth the same run:**
--     `repo_url` is filled on only 13 of 26. Thirteen are empty, and
--     TWELVE of those thirteen have a real repo standing on GitHub —
--     including four PUBLIC ones (bridge · papers · scribe · standards)
--     and Lucida. A beacon that ships from a repo it cannot name is a
--     door without an address. Movement 3 closes it.
--
-- 4 · The wares ladder, read live from SUPERPOSITION this sitting after
--     KP ran 018 — eight rows, the source of every price below:
--       free 0.00  echoes · grammar · hearth · khoros
--       fixed      lantern 1.11 · bubbles 2.22 · compass 3.33 · skapa 4.44
--
-- ⚛ ONE STROKE IS YOURS — THE MEANING OF ZERO.
--   Movement 2 writes **0** for the four free apps and leaves NULL on
--   every non-ware beacon. The distinction is deliberate:
--       0    = a ware, offered, priced at nothing
--       NULL = not sold on this coast at all (systems, archives, people)
--   If you would rather free read as NULL too, it is one word per row —
--   but then "free" and "not for sale" become the same value, and the
--   coast loses the ability to say which is which.
--
-- =====================================================================
-- MOVEMENT 1 — VISIBILITY, from the GitHub census
-- =====================================================================

-- The thirteen whose repositories are PUBLIC today.
update public.resonance_beacons
   set is_public = true,
       updated_at = now(),
       updated_by = 'KP + Cistern (Opus) — GitHub census 2026-08-11'
 where slug in (
   'audhdities', 'quantum-weaver', 'resonance-lucida', 'resonance-bridge',
   'resonance-bubbles', 'resonance-compass', 'resonance-echoes',
   'resonance-grammar', 'resonance-hearth', 'resonance-lantern',
   'resonance-papers', 'resonance-scribe', 'resonance-standards'
 );

-- The twelve whose repositories are PRIVATE today. Stated explicitly
-- rather than left to the default, so the value is a READING and not an
-- absence — the same reason this house states zero drift in words.
update public.resonance_beacons
   set is_public = false,
       updated_at = now(),
       updated_by = 'KP + Cistern (Opus) — GitHub census 2026-08-11'
 where slug in (
   'resonance-assets', 'resonance-awen', 'resonance-chamber',
   'resonance-daedalus', 'resonance-excavator', 'resonance-gaia',
   'resonance-khoros', 'resonance-library', 'resonance-meetings',
   'resonance-skapa', 'resonance-weaver', 'resonance-ziggy'
 );

-- `aethelred-cello` is deliberately in NEITHER list: it has no
-- repository on the account at all. false is already its value and it
-- is the honest one — but it is false for a different reason than the
-- twelve above, and the record should not blur those.

-- =====================================================================
-- MOVEMENT 2 — THE LADDER, in cents (the coast's own unit)
-- =====================================================================

update public.resonance_beacons set audhdities_price_cents =   0, currency = 'USD',
       updated_at = now(), updated_by = 'the wares ladder, 2026-08-11'
 where slug in ('resonance-echoes','resonance-grammar','resonance-hearth','resonance-khoros');

update public.resonance_beacons set audhdities_price_cents = 111, currency = 'USD',
       updated_at = now(), updated_by = 'the wares ladder, 2026-08-11'
 where slug = 'resonance-lantern';

update public.resonance_beacons set audhdities_price_cents = 222, currency = 'USD',
       updated_at = now(), updated_by = 'the wares ladder, 2026-08-11'
 where slug = 'resonance-bubbles';

update public.resonance_beacons set audhdities_price_cents = 333, currency = 'USD',
       updated_at = now(), updated_by = 'the wares ladder, 2026-08-11'
 where slug = 'resonance-compass';

update public.resonance_beacons set audhdities_price_cents = 444, currency = 'USD',
       updated_at = now(), updated_by = 'the wares ladder, 2026-08-11'
 where slug = 'resonance-skapa';

-- The other eighteen beacons keep audhdities_price_cents NULL. They are
-- systems, archives, libraries, instruments and people — not wares.
-- Nothing is sold on this coast that is not offered on the other.

-- =====================================================================
-- MOVEMENT 3 — THE MISSING ADDRESSES (the bonus find)
-- =====================================================================
--
-- Twelve beacons carry a real repository and no repo_url. Filled below.
-- ⚠ NOTE THE CAPITALISATION on Lucida — the repo is `Resonance-Lucida`,
--   capital R and capital L, unlike every sibling. Verified against the
--   API listing, not typed from habit.

update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/Quantum-Weaver',      updated_at = now() where slug = 'quantum-weaver'      and repo_url is null;
update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/Resonance-Lucida',    updated_at = now() where slug = 'resonance-lucida'    and repo_url is null;
update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/resonance-bridge',    updated_at = now() where slug = 'resonance-bridge'    and repo_url is null;
update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/resonance-papers',    updated_at = now() where slug = 'resonance-papers'    and repo_url is null;
update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/resonance-scribe',    updated_at = now() where slug = 'resonance-scribe'    and repo_url is null;
update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/resonance-standards', updated_at = now() where slug = 'resonance-standards' and repo_url is null;
update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/resonance-assets',    updated_at = now() where slug = 'resonance-assets'    and repo_url is null;
update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/resonance-awen',      updated_at = now() where slug = 'resonance-awen'      and repo_url is null;
update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/resonance-chamber',   updated_at = now() where slug = 'resonance-chamber'   and repo_url is null;
update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/resonance-excavator', updated_at = now() where slug = 'resonance-excavator' and repo_url is null;
update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/resonance-library',   updated_at = now() where slug = 'resonance-library'   and repo_url is null;
update public.resonance_beacons set repo_url = 'https://github.com/Quantum-Weaver/resonance-weaver',    updated_at = now() where slug = 'resonance-weaver'    and repo_url is null;

-- `aethelred-cello` keeps repo_url NULL — there is no repository to
-- name. An honest absence, left honest.

-- =====================================================================
-- OBSERVED, NOT ACTED ON (⚛ your eye)
-- =====================================================================
--
-- **A repo with no beacon: `Quantum-Weaver/AudHDities-Resonance`**
-- (private). Every other repository on the account has a beacon row;
-- this one does not. Either it is deliberately uncoasted, or the coast
-- has a gap. Reported, untouched — the census's job is to tell, not to
-- decide.
--
-- =====================================================================
-- VERIFY (run after; through the anon door, the same sitting)
-- =====================================================================
-- select slug, is_public, audhdities_price_cents, currency,
--        (repo_url is not null) as has_repo_url
--   from public.resonance_beacons
--  order by audhdities_price_cents nulls last, slug;
--
-- EXPECT:
--   · is_public true  on exactly 13
--   · is_public false on exactly 13 (twelve private + aethelred-cello)
--   · audhdities_price_cents set on exactly 8 — four 0, then 111/222/333/444
--   · has_repo_url true on 25; false only on aethelred-cello
-- =====================================================================
