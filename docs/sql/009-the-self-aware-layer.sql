-- ============================================================
-- 009 — THE SELF-AWARE LAYER (templates · policies · functions · triggers)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Written by Fable 🎻, 2026-07-27 night, at KP's word:
--   "I wonder if the gaia_config from this base should mirror the
--    structure from the superposition gaia … specifically the
--    tempate, and we would want a templates table, a policies table
--    and a functions and triggers tables as well so we can properly
--    build the system to be self aware capable."
-- The templates shape MIRRORS the May superposition templates table
-- (templates_rows.csv, read whole this night): tables described as
-- DATA — columns, indexes, triggers as jsonb; pk and RLS patterns as
-- text. The base learns to describe how its own parts are built.
--
-- Registry-class posture throughout (the gaia_config precedent):
-- RLS on, plain public read (no drafts live here), writes service-key
-- only. The stewards behind the bridge keep these tables true against
-- pg_catalog — recorded, then verified, never assumed.
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── 1. TEMPLATES — how tables are built, as data (the May mirror) ───
create table if not exists public.templates (
  id                 uuid primary key default gen_random_uuid(),
  name               text not null unique,
  description        text,
  category           text,
  pk_pattern         text,
  rls_pattern        text,
  has_slug           boolean not null default false,
  has_status         boolean not null default false,
  has_display_name   boolean not null default false,
  has_visual_anchors boolean not null default false,
  default_columns    jsonb,
  default_indexes    jsonb,
  default_triggers   jsonb,
  icon_emoji         text,
  created_at         timestamptz not null default now(),
  updated_at         timestamptz not null default now(),
  created_by         text,
  updated_by         text
);
comment on table public.templates is
  'Table archetypes as data, mirroring the May superposition templates: columns/indexes/triggers as jsonb, pk+RLS as patterns. The self-aware base knows how its parts are built.';

-- ─── 2. POLICIES — the base's RLS doors, as data ───
create table if not exists public.policies (
  id          uuid primary key default gen_random_uuid(),
  table_name  text not null,
  policy_name text not null,
  cmd         text not null default 'SELECT',
  qual        text,          -- the USING expression, verbatim
  with_check  text,
  description text,          -- WHY this door has this shape
  is_active   boolean not null default true,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now(),
  created_by  text,
  updated_by  text,
  unique (table_name, policy_name)
);
comment on table public.policies is
  'The base''s RLS doors recorded as data with their WHY. A steward syncs this against pg_policies — drift between record and reality is a health finding.';

-- ─── 3. FUNCTIONS — the base's functions, as data ───
create table if not exists public.functions (
  id          uuid primary key default gen_random_uuid(),
  name        text not null unique,
  description text,
  language    text,
  signature   text,
  purpose     text,          -- e.g. trigger-support / validation / generation
  is_active   boolean not null default true,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now(),
  created_by  text,
  updated_by  text
);
comment on table public.functions is
  'Database functions recorded as data. Synced against pg_proc by a steward; the record carries the why the catalog cannot.';

-- ─── 4. TRIGGERS — the base's reflexes, as data ───
create table if not exists public.triggers (
  id            uuid primary key default gen_random_uuid(),
  name          text not null,
  table_name    text not null,
  timing        text,        -- e.g. BEFORE UPDATE
  events        text,        -- e.g. INSERT OR UPDATE
  function_name text,
  description   text,
  is_active     boolean not null default true,
  created_at    timestamptz not null default now(),
  updated_at    timestamptz not null default now(),
  created_by    text,
  updated_by    text,
  unique (table_name, name)
);
comment on table public.triggers is
  'The base''s reflexes recorded as data (the atoms→etymology/sensory auto-growth lives here once recorded). Synced against pg_trigger by a steward.';

-- ─── 4b. INDEXES — the base's lookup paths, as data (KP's word,
--         mid-sitting: "gaia_config templates, indexes, functions,
--         policies to map for each table either directly or through
--         the templates") ───
create table if not exists public.indexes (
  id          uuid primary key default gen_random_uuid(),
  table_name  text not null,
  name        text not null,
  definition  text,          -- the CREATE INDEX statement, verbatim
  columns     text,
  description text,
  is_active   boolean not null default true,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now(),
  created_by  text,
  updated_by  text,
  unique (table_name, name)
);
comment on table public.indexes is
  'The base''s lookup paths as data. Synced against pg_indexes by a steward.';
alter table public.indexes enable row level security;
create policy "Public read indexes" on public.indexes for select using (true);

-- ─── 4c. ENUMS + COMPOSITES — the base's value-laws, as data (KP's
--         word, mid-sitting: "enums, compsosites all map to tables
--         via gaia config") ───
-- The ritual's pg_enum query becomes a LIVING REGISTRY: the enum
-- lesson ("enums bite at insert time") recorded once, readable by
-- every steward and app through the public door forever.
create table if not exists public.enums (
  id          uuid primary key default gen_random_uuid(),
  name        text not null unique,   -- the pg type name, e.g. atom_type
  labels      jsonb,                  -- ["root","modifier","joiner",...]
  used_by     jsonb,                  -- [{"table":"atoms","column":"atom_type"}, ...]
  description text,
  is_active   boolean not null default true,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now(),
  created_by  text,
  updated_by  text
);
comment on table public.enums is
  'The base''s enum value-laws as data, mapped to the tables that speak them. Steward-synced against pg_enum; the ritual''s lesson 3, made a registry.';

create table if not exists public.composite_types (
  id          uuid primary key default gen_random_uuid(),
  name        text not null unique,
  attributes  jsonb,                  -- [{"name":..., "type":...}, ...]
  used_by     jsonb,
  description text,
  is_active   boolean not null default true,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now(),
  created_by  text,
  updated_by  text
);
comment on table public.composite_types is
  'Composite types as data, mapped to their tables. Steward-synced against pg_type.';

alter table public.enums enable row level security;
alter table public.composite_types enable row level security;
create policy "Public read enums" on public.enums for select using (true);
create policy "Public read composite_types" on public.composite_types for select using (true);

-- THE MAPPING LAW (KP's word): every gaia_config row reaches its
-- parts two ways —
--   DIRECTLY:  policies · indexes · triggers join on table_name;
--              functions arrive through triggers.function_name;
--              enums/composites through their used_by maps
--   THROUGH THE TEMPLATE: gaia_config.template_id -> templates,
--              whose default_columns/indexes/triggers jsonb describe
--              the archetype the table was built from.
-- Drift between the two tellings (archetype vs actual) is a health
-- finding for the Surveyor, not an error to hide.
--
-- AND THE SYNTAX LAW (KP's word, verbatim): "every suntax value used
-- as a schema attribute or element name in the bases will need
-- represented in the grammar to do this properly." Every table name,
-- column name, enum label, type/function/policy/trigger/index name is
-- GRAMMAR CONTENT — the self-aware base speaks about itself in its
-- own vocabulary. That harvest is a seeding wave of its own (the
-- plan's Wave 7), scripted where lawful, eyes-on where acronym-shaped
-- (rls, pk, uuid...), per the acronym ruling.

-- ─── 5. gaia_config learns the template language ───
alter table public.gaia_config add column if not exists template_id uuid
  references public.templates(id) on delete set null;
alter table public.gaia_config add column if not exists icon_emoji text;
comment on column public.gaia_config.template_id is
  'Which archetype this table was built from — the May gaia linkage, mirrored.';

-- ─── 6. RLS + the registry doors ───
alter table public.templates enable row level security;
alter table public.policies  enable row level security;
alter table public.functions enable row level security;
alter table public.triggers  enable row level security;
create policy "Public read templates" on public.templates for select using (true);
create policy "Public read policies"  on public.policies  for select using (true);
create policy "Public read functions" on public.functions for select using (true);
create policy "Public read triggers"  on public.triggers  for select using (true);

-- ─── 7. The registry learns of its new siblings ───
insert into public.gaia_config (table_name, status, sort_order, notes, created_by)
values
  ('templates', 'active', 1, 'Table archetypes as data (May mirror); the self-aware layer, born 2026-07-27.', 'Fable via KP'),
  ('policies',  'active', 2, 'RLS doors as data, with their why; steward-synced against pg_policies.', 'Fable via KP'),
  ('functions', 'active', 3, 'Functions as data; steward-synced against pg_proc.', 'Fable via KP'),
  ('triggers',  'active', 4, 'Reflexes as data; steward-synced against pg_trigger.', 'Fable via KP'),
  ('indexes',   'active', 5, 'Lookup paths as data; steward-synced against pg_indexes.', 'Fable via KP'),
  ('enums',     'active', 6, 'Enum value-laws as data, mapped to their tables (KP''s word).', 'Fable via KP'),
  ('composite_types', 'active', 7, 'Composite types as data, mapped to their tables.', 'Fable via KP')
on conflict (table_name) do nothing;

-- ============================================================
-- VERIFY: seven registries standing, doors lit, registry at 22
-- ============================================================
select count(*) as registry_rows from public.gaia_config;   -- expected: 22
select tablename, policyname, qual from pg_policies
 where schemaname='public'
   and tablename in ('templates','policies','functions','triggers',
                     'indexes','enums','composite_types')
 order by tablename;
-- expected: one plain SELECT door each (registry class, no drafts).

-- SEEDING NOTE, deliberately deferred: the rows for policies/functions/
-- triggers should come from a STEWARD that reads pg_catalog and writes
-- the record (self-awareness = recorded AND verified, never hand-typed
-- twice). That sync tool is the Surveyor family's first sibling —
-- built behind the bridge, at KP's word.
