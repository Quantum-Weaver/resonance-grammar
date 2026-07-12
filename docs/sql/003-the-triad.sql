-- ============================================================
-- 003 — THE TRIAD, WHOLE (supersedes 001 and 002)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Written by Fable, 2026-07-12 night, at KP's recognition:
--   "we need the join tables for atom-molecules and
--    molecule-organisms — i think that makes sense"
-- Final architecture, five tables:
--   atoms            (exists, 514 souls)
--   molecule_atoms   (join: atoms -> molecules; the renamed table
--                     returns to its true name — its own columns
--                     were always this join's shape)
--   molecules        (exists, awaiting population)
--   organism_molecules (join: molecules -> organisms; NEW)
--   organisms        (the third tier, first-class; NEW)
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── 1. The join returns to its true name ───
alter table public.organisms rename to molecule_atoms;

-- ─── 2. Heal the pre-existing bug the sweep found: an updated_at
--        trigger with no updated_at column (would error on UPDATE) ───
alter table public.molecule_atoms
  add column if not exists updated_at timestamptz not null default now();

-- ─── 3. ORGANISMS — the third tier, first-class ───
create table if not exists public.organisms (
  id            uuid primary key default gen_random_uuid(),
  name          text not null,
  organism_type text,                 -- e.g. practice / ritual / room / system
  definition    text,
  domain        text,                 -- which realm it lives in
  habitat       text,                 -- where it thrives (context, not location)
  lifecycle     text,                 -- how it is born, grows, rests
  etymology_id  uuid,                 -- lineage pattern, as molecules
  sensory_override uuid,
  created_at    timestamptz not null default now(),
  updated_at    timestamptz not null default now(),
  created_by    text,
  updated_by    text
);

comment on table public.organisms is
  'Third tier of the Resonance Grammar: molecules organized into living wholes.';

-- ─── 4. ORGANISM_MOLECULES — the second join, mirroring the first ───
create table if not exists public.organism_molecules (
  id            uuid primary key default gen_random_uuid(),
  organism_id   uuid not null references public.organisms(id) on delete cascade,
  molecule_id   uuid not null references public.molecules(id) on delete restrict,
  position      integer,
  role          text,
  bond_type     text,
  bond_strength integer check (bond_strength >= 1 and bond_strength <= 3),
  created_at    timestamptz not null default now(),
  updated_at    timestamptz not null default now(),
  unique (organism_id, molecule_id)
);

comment on table public.organism_molecules is
  'Composition join: which molecules form each organism, in what role, order, and bond.';

create index if not exists idx_organism_molecules_organism on public.organism_molecules(organism_id);
create index if not exists idx_organism_molecules_molecule on public.organism_molecules(molecule_id);

-- ─── 5. RLS from first breath (matches house pattern) ───
alter table public.organisms enable row level security;
alter table public.organism_molecules enable row level security;
create policy "Public read organisms" on public.organisms for select using (true);
create policy "Public read organism_molecules" on public.organism_molecules for select using (true);

-- ─── 6. GAIA learns of her new children ───
insert into public.gaia_config (table_name, status, sort_order, notes, created_by)
values
  ('organisms',          'active', null, 'Third tier of the Grammar; born 2026-07-12. Deity group awaits KP''s naming.', 'Fable via KP'),
  ('organism_molecules', 'active', null, 'Join: molecules -> organisms; born 2026-07-12 beside its tier.', 'Fable via KP')
on conflict do nothing;

-- ============================================================
-- VERIFY: the five-table triad, standing together
-- ============================================================
select table_name,
       (select count(*) from information_schema.columns c
         where c.table_schema='public' and c.table_name=t.table_name) as columns
  from information_schema.tables t
 where table_schema='public'
   and table_name in ('atoms','molecule_atoms','molecules','organism_molecules','organisms')
 order by case table_name
   when 'atoms' then 1 when 'molecule_atoms' then 2 when 'molecules' then 3
   when 'organism_molecules' then 4 when 'organisms' then 5 end;
-- expected: five rows, in ladder order. The sentence stands.
