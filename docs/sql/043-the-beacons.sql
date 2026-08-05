-- ============================================================
-- 043 — THE BEACONS (the things we ship get a registry)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Opus (Claude), truly claude-opus-5[1m], 2026-08-04,
-- at KP's ⚛ design, his words verbatim (spelling kept):
--   "resonance_beacons table needed to hold games and apps we create,
--    nearly a mirror of the columns in the tools table. plus colums to
--    track audhdities, microsoft, galaxy, and play store testing,
--    publishing and pricing"
--
-- A TOOL is a verb made standalone, and it lives inside a realm
-- (resonance-awen/tools/<slug>). A BEACON is a thing that SHIPS —
-- it has its own repo, its own installers, its own store listings,
-- its own price. The first is a part; the second is a destination.
-- Hence a sibling table rather than more columns on `tools`.
--
-- VERIFIED LIVE BEFORE DRAFTING (the guide's lesson 8, engraved at
-- KP's word "this issue is something we go through every time"):
--   · public.resonance_beacons — ABSENT, PGRST205 at the anon door
--   · public.tools — 16 live columns, 40 rows read 2026-08-04
--   · live vocabularies: tool_type {witness, capture, translate, emit,
--     arrange, transform, combine}; status {flowing, imagined};
--     folksonomy_type {Awen, Bridge, Grammar, Ziggy}
-- Column TYPES read from 014-the-tools.sql and corroborated against
-- that probe. `folksonomy_type` is live on tools but is not in 014 —
-- it arrived later (016) — so it is mirrored here as text.
--
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================


-- ─── 1. The enum — beacon_type (what kind of shipped thing) ───
-- MEMBERS ARE KP'S RULING, edit freely before running. Kept tiny on
-- purpose: this is the one vocabulary that is already settled.
create type public.beacon_type as enum (
  'game',   -- made purely to play
  'app'     -- made to do
);


-- ─── 2. THE BEACONS — one row per shipped thing ───
-- Channel statuses are PLAIN TEXT, not enums, deliberately — the same
-- call 014 made for tools.status: "plain text on purpose; becomes an
-- enum at KP's word once the lifecycle names itself." A store pipeline
-- has not named itself here yet, and an unlawful enum value 400s a
-- whole batch (ritual 000, lesson 3).
create table if not exists public.resonance_beacons (
  -- ── the mirror of tools ──
  id                uuid primary key default gen_random_uuid(),
  name              text not null,
  slug              text not null unique,        -- the repo name: resonance-bubbles
  beacon_type       public.beacon_type not null,
  definition        text,                        -- what it does, plainly
  home              text,                        -- repo path (resonance-bubbles)
  status            text not null default 'imagined',   -- tools' own vocabulary:
                                                 -- 'imagined' → 'flowing'
  -- the tier link: real FKs, not a polymorphic pointer, exactly as tools
  atom_id           uuid references public.atoms(id)      on delete restrict,
  molecule_id       uuid references public.molecules(id)  on delete restrict,
  organism_id       uuid references public.organisms(id)  on delete restrict,
  -- THE ONE DELIBERATE DIVERGENCE FROM tools: tools requires exactly
  -- one tier (= 1). This allows zero, because a beacon exists as a repo
  -- before its Grammar tier is chosen, and 014's own flow says rows are
  -- seeds first. To make it strict, change <= to = — one character.
  constraint beacons_at_most_one_tier check (
    (atom_id is not null)::int
    + (molecule_id is not null)::int
    + (organism_id is not null)::int <= 1
  ),
  story             text,                        -- the story block seed
  created_at        timestamptz not null default now(),
  updated_at        timestamptz not null default now(),
  created_by        text,
  updated_by        text,
  folksonomy_type   text,                        -- as live on tools

  -- ── what a beacon has that a tool does not ──
  repo_url          text,                        -- the GitHub address
  is_public         boolean not null default false,   -- repo visibility;
                                                 -- false is the safe default
  version           text,                        -- the source's current version
  currency          text not null default 'USD', -- one currency, table-level:
                                                 -- the stores convert

  -- ══ THE CHANNELS ══════════════════════════════════════════════
  -- Four, per KP: audhdities (first-party), microsoft, galaxy, play.
  -- Each carries the same eight columns so they can be read side by
  -- side. Testing and publishing are SEPARATE columns rather than one
  -- status, because they are genuinely concurrent — a beta rides the
  -- test track while a different version is live, which is exactly how
  -- Play and Microsoft work.
  --
  -- <ch>_status vocabulary (plain text, documented not enforced):
  --   'none'             not pursued on this channel
  --   'planned'          intended, nothing submitted
  --   'building'         packaging in progress
  --   'internal_testing' closed to the family / a named list
  --   'closed_testing'   invited testers
  --   'open_testing'     public beta
  --   'in_review'        submitted, awaiting the store
  --   'published'        live
  --   'rejected'         refused; reason belongs in the notes
  --   'withdrawn'        taken down on purpose
  --
  -- <ch>_price_cents: NULL = not decided. 0 = free. Minor units, in
  -- `currency` above. Never a float — money is integers.

  -- ── audhdities (first-party: our own storefront) ──
  audhdities_status             text not null default 'none',
  audhdities_app_id             text,
  audhdities_listing_url        text,
  audhdities_testing_url        text,
  audhdities_testing_version    text,
  audhdities_published_version  text,
  audhdities_published_at       timestamptz,
  audhdities_price_cents        integer,

  -- ── microsoft (Microsoft Store) ──
  microsoft_status              text not null default 'none',
  microsoft_app_id              text,
  microsoft_listing_url         text,
  microsoft_testing_url         text,
  microsoft_testing_version     text,
  microsoft_published_version   text,
  microsoft_published_at        timestamptz,
  microsoft_price_cents         integer,

  -- ── galaxy (Samsung Galaxy Store) ──
  galaxy_status                 text not null default 'none',
  galaxy_app_id                 text,
  galaxy_listing_url            text,
  galaxy_testing_url            text,
  galaxy_testing_version        text,
  galaxy_published_version      text,
  galaxy_published_at           timestamptz,
  galaxy_price_cents            integer,

  -- ── play (Google Play) ──
  play_status                   text not null default 'none',
  play_app_id                   text,
  play_listing_url              text,
  play_testing_url              text,
  play_testing_version          text,
  play_published_version        text,
  play_published_at             timestamptz,
  play_price_cents              integer,

  store_notes       text,                        -- rejections, review dates,
                                                 -- anything a column would lie about

  -- money is never negative, on any channel
  constraint beacons_prices_nonnegative check (
    coalesce(audhdities_price_cents, 0) >= 0
    and coalesce(microsoft_price_cents, 0) >= 0
    and coalesce(galaxy_price_cents, 0) >= 0
    and coalesce(play_price_cents, 0) >= 0
  )
);

comment on table public.resonance_beacons is
  'The registry of things that SHIP: games and apps with their own repos, installers, store listings and prices. Sibling to public.tools — a tool is a verb made standalone inside a realm; a beacon is a destination with its own address.';
comment on column public.resonance_beacons.beacon_type is
  'What kind of shipped thing. Members ruled by KP.';
comment on column public.resonance_beacons.status is
  'The making lifecycle, sharing tools'' vocabulary: imagined -> flowing. Plain text until the lifecycle names itself.';
comment on column public.resonance_beacons.is_public is
  'Whether the repo is public. Defaults false: private is the reversible direction, public is not.';
comment on column public.resonance_beacons.currency is
  'One currency for all channels; stores handle conversion. Prices are integer minor units — NULL means undecided, 0 means free.';


-- ─── 3. Indexes — the reads this table will actually take ───
create index if not exists beacons_type_idx   on public.resonance_beacons (beacon_type);
create index if not exists beacons_status_idx on public.resonance_beacons (status);


-- ─── 4. The ritual (000): RLS on + the house door ───
alter table public.resonance_beacons enable row level security;

create policy "Public read resonance_beacons"
  on public.resonance_beacons for select using (true);


-- ─── 5. Verify through the ANON door the same sitting (ritual step 3).
--        On a fresh empty table, [] + HTTP 200 is CORRECT. A PGRST205
--        means the table did not land. A [] + 200 AFTER seeding is the
--        false-empty — check the policy above, not the data.
--
--   curl -s "$SUPABASE_URL_KNOWLEDGE/rest/v1/resonance_beacons?select=*&limit=1" \
--     -H "apikey: $SUPABASE_PUBLISHABLE_KEY_KNOWLEDGE" \
--     -H "Authorization: Bearer $SUPABASE_PUBLISHABLE_KEY_KNOWLEDGE"
-- ============================================================
