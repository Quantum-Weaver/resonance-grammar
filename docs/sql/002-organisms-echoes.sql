-- ============================================================
-- 002 — ORGANISMS: healing the rename's echoes
-- ⚠ SUPERSEDED by 003-the-triad.sql (2026-07-12, same night) — kept per lose-nothing.
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Written by Fable, 2026-07-12 night, after the echo-map sweep.
-- Visual-run method: read each block, run top to bottom.
-- Column renames are NOT here — awaiting KP's grammar words.
-- ============================================================

-- ─── 1. FUNCTIONAL: gaia_config must know the new name ───
update public.gaia_config
   set table_name = 'organisms', updated_at = now(), updated_by = 'KP (rename, 2026-07-12)'
 where table_name = 'molecule_atoms';

-- ─── 2. HEAL: the updated_at trigger without its column ───
-- (pre-existing bug exposed by the sweep: trg_molecule_atoms_updated_at
--  fires on UPDATE but the table has no updated_at column — any update
--  would error. Empty table = never bitten. Adding the column matches
--  every sibling table's shape.)
alter table public.organisms
  add column if not exists updated_at timestamptz not null default now();

-- ─── 3. TIDY: constraints carry their true family name ───
alter table public.organisms rename constraint molecule_atoms_pkey to organisms_pkey;
alter table public.organisms rename constraint molecule_atoms_atom_id_fkey to organisms_atom_id_fkey;
alter table public.organisms rename constraint molecule_atoms_molecule_id_fkey to organisms_molecule_id_fkey;
alter table public.organisms rename constraint molecule_atoms_bond_strength_check to organisms_bond_strength_check;

-- ─── 4. TIDY: indexes ───
-- (renaming the pkey constraint above renames its index with it)
alter index if exists idx_molecule_atoms_molecule rename to idx_organisms_molecule;
alter index if exists idx_molecule_atoms_atom rename to idx_organisms_atom;

-- ─── 5. TIDY: the trigger ───
alter trigger trg_molecule_atoms_updated_at on public.organisms
  rename to trg_organisms_updated_at;

-- ─── 6. TIDY: policies say whose they are ───
alter policy "Council manage molecule_atoms" on public.organisms
  rename to "Council manage organisms";
alter policy "Public read molecule_atoms" on public.organisms
  rename to "Public read organisms";

-- ============================================================
-- VERIFY (run after): no echo of the old name should remain
-- ============================================================
select 'constraint' as kind, conname as name
  from pg_constraint where conrelid = 'public.organisms'::regclass
   and conname ilike '%molecule_atoms%'
union all
select 'index', indexname from pg_indexes
 where schemaname='public' and indexname ilike '%molecule_atoms%'
union all
select 'policy', policyname from pg_policies
 where schemaname='public' and policyname ilike '%molecule_atoms%'
union all
select 'gaia_config', table_name from public.gaia_config
 where table_name = 'molecule_atoms';
-- expected result: zero rows. Silence is health.
