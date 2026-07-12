-- ============================================================
-- 001 — ORGANISMS: the triad completes
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Written by Fable, 2026-07-12 night, at KP's word:
--   "atom-molecules needs to become organisms"
-- Method: KP reads and runs this in the dashboard SQL Editor —
--   visual, deliberate, his eye on every statement.
-- Shapes mirror the existing molecules/molecule_atoms design
--   (bond_type, functional_group, position/role pattern) so the
--   chemistry metaphor stays coherent up the whole ladder:
--   atoms -> molecules -> organisms.
-- Run order: each block is independent; run top to bottom.
-- ============================================================

-- ─── 1. ORGANISMS — living wholes composed of molecules ───
create table if not exists public.organisms (
  id            uuid primary key default gen_random_uuid(),
  name          text not null,
  organism_type text,                    -- e.g. practice / ritual / room / system
  definition    text,
  domain        text,                    -- which realm it lives in
  habitat       text,                    -- where it thrives (context, not location)
  lifecycle     text,                    -- how it is born, grows, rests
  etymology_id  uuid,                    -- same lineage pattern as molecules
  sensory_override uuid,                 -- optional sensory identity of the whole
  created_at    timestamptz not null default now(),
  updated_at    timestamptz not null default now(),
  created_by    text,                    -- provenance (G-013: close the loop)
  updated_by    text
);

comment on table public.organisms is
  'The third tier of the Resonance Grammar: molecules organized into living wholes. Atoms bond into molecules; molecules organize into organisms.';

-- ─── 2. ORGANISM_MOLECULES — the composition join ───
-- Mirrors molecule_atoms (position / role / bond) one level up.
create table if not exists public.organism_molecules (
  id            uuid primary key default gen_random_uuid(),
  organism_id   uuid not null references public.organisms(id) on delete cascade,
  molecule_id   uuid not null references public.molecules(id) on delete restrict,
  position      integer,                 -- ordering within the organism
  role          text,                    -- what this molecule does for the whole
  bond_type     text,                    -- how it is held (structural / seasonal / optional)
  bond_strength numeric,
  created_at    timestamptz not null default now(),
  unique (organism_id, molecule_id)
);

comment on table public.organism_molecules is
  'Composition: which molecules make up each organism, in what role and order.';

-- ─── 3. Row Level Security — locked by default, readable to all keys ───
-- (Write access stays with the secret key / SQL editor until roles mature.)
alter table public.organisms enable row level security;
alter table public.organism_molecules enable row level security;

create policy "organisms are readable"
  on public.organisms for select using (true);
create policy "organism composition is readable"
  on public.organism_molecules for select using (true);

-- ─── 4. updated_at housekeeping (same pattern as siblings, if the
--        moddatetime extension is available; harmless to skip) ───
-- create extension if not exists moddatetime;
-- create trigger organisms_updated_at before update on public.organisms
--   for each row execute procedure moddatetime(updated_at);

-- ============================================================
-- VERIFY (run after): both tables exist, empty, RLS on
-- ============================================================
select relname as table_name, relrowsecurity as rls_enabled
from pg_class
where relname in ('organisms', 'organism_molecules');
