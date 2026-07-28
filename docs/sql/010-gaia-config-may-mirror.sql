-- ============================================================
-- 010 — GAIA_CONFIG GROWS TO ITS MAY SHAPE (+ the scripts registry)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Written by Fable 🎻, 2026-07-27 night, at KP's word ("please
-- continue with … the darft 010"), from the blueprint HIS OWN HAND
-- exported this sitting: gaia_config_rows.csv (151 rows, superposition)
-- — the May registry that already carried the complete self-aware
-- law: mapping (template/script/enum/composite refs), generation
-- (dependencies/targets/flags), access (visibility/api_access), and
-- VERIFICATION (schema counts + hash + verified_at + human tags).
-- 009 built the subset; 010 completes the mirror. The Surveyor gains
-- its drift instrument: recorded shape vs actual shape, hash-checked.
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── 1. SCRIPTS — the generation tools as data (May scripts table's
--        shape, from scripts_rows.csv) ───
create table if not exists public.scripts (
  id              uuid primary key default gen_random_uuid(),
  name            text not null unique,
  description     text,
  file_path       text,          -- where the tool lives (behind the bridge)
  script_type     text,          -- e.g. generator / seeder / steward / verifier
  input_requires  jsonb,
  output_produces jsonb,
  is_active       boolean not null default true,
  icon_emoji      text,
  created_at      timestamptz not null default now(),
  updated_at      timestamptz not null default now(),
  created_by      text,
  updated_by      text
);
comment on table public.scripts is
  'The base''s generation and stewardship tools as data (May mirror). lattice_seeder, the wave generators, grammar_inventory, verify_terms — all belong here as rows.';

alter table public.scripts enable row level security;
create policy "Public read scripts" on public.scripts for select using (true);

-- ─── 2. gaia_config grows the May columns ───
-- mapping
alter table public.gaia_config add column if not exists deity_group text;
alter table public.gaia_config add column if not exists script_id uuid
  references public.scripts(id) on delete set null;
alter table public.gaia_config add column if not exists enum_refs jsonb;
alter table public.gaia_config add column if not exists composite_refs jsonb;
alter table public.gaia_config add column if not exists scheme_id uuid
  references public.schemes(id) on delete set null;
alter table public.gaia_config add column if not exists family_ref text;
-- generation
alter table public.gaia_config add column if not exists generation_dependencies jsonb;
alter table public.gaia_config add column if not exists generation_targets jsonb;
alter table public.gaia_config add column if not exists generation_flags jsonb;
-- access
alter table public.gaia_config add column if not exists visibility text;
alter table public.gaia_config add column if not exists api_access text;
-- VERIFICATION — the drift instrument (the May registry's crown)
alter table public.gaia_config add column if not exists schema_columns_count integer;
alter table public.gaia_config add column if not exists schema_policies_count integer;
alter table public.gaia_config add column if not exists schema_triggers_count integer;
alter table public.gaia_config add column if not exists schema_indexes_count integer;
alter table public.gaia_config add column if not exists schema_verified_at timestamptz;
alter table public.gaia_config add column if not exists schema_hash text;
alter table public.gaia_config add column if not exists schema_notes text;
alter table public.gaia_config add column if not exists human_verified_tags jsonb;
alter table public.gaia_config add column if not exists is_active boolean not null default true;

comment on column public.gaia_config.deity_group is
  'The pantheon grouping (May: deity_group); deity_name (007) stays for the individual who answers. Both await KP''s naming.';
comment on column public.gaia_config.scheme_id is
  'The lattice-aware heir of May''s taxonomy_id: which scheme classifies this table, if any.';
comment on column public.gaia_config.family_ref is
  'May''s family_id linkage, carried as text until its target is ruled — recorded, not guessed.';
comment on column public.gaia_config.schema_hash is
  'The drift instrument: hash of the table''s recorded shape. The Surveyor compares recorded vs actual; mismatch is a health finding, never silently healed.';

-- ─── 3. The registry learns of scripts ───
insert into public.gaia_config (table_name, status, sort_order, notes, created_by)
values
  ('scripts', 'active', 8, 'Generation and stewardship tools as data (May mirror); born 2026-07-27 with 010.', 'Fable via KP')
on conflict (table_name) do nothing;

-- ============================================================
-- VERIFY: the mirror complete
-- ============================================================
select count(*) as registry_rows from public.gaia_config;   -- expected: 23
select count(*) as gaia_config_columns
  from information_schema.columns
 where table_schema='public' and table_name='gaia_config';
-- expected: 31 (the 007 ten + template_id/icon_emoji from 009 + the
-- nineteen May columns above)
select tablename, policyname, qual from pg_policies
 where schemaname='public' and tablename='scripts';
-- expected: one plain SELECT door (registry class).

-- SEEDING NOTE, deferred to the steward: the verification columns
-- (counts + hash + verified_at) are WRITTEN BY THE SYNC STEWARD from
-- pg_catalog readings — never hand-typed. First sync fills them for
-- all 23 tables; every later sync compares and reports drift. The
-- scripts table seeds from the living tools behind the bridge
-- (lattice_seeder, the five wave generators, grammar_inventory,
-- verify_terms) — one row each, at KP's word.
