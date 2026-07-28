-- ============================================================
-- 007 — GAIA_CONFIG comes home to resonance-knowledge
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Written by Fable 🎻, 2026-07-27 night, at KP's question:
--   "gaia_config is in the other base, should it be in this one too?"
-- Answer: yes — the knowledge base stands sovereign (the migration
-- ruling: nothing here depends on superposition), and the stewards
-- behind the bridge need a queryable map of the tables they tend.
-- 006's section 7 failed against the missing table; this file
-- creates the registry and lays ALL fifteen rows (the nine standing
-- Grammar tables + the five lattice tables + itself).
-- Deity names await KP's naming, per the pantheon precedent (003).
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── 1. The registry ───
create table if not exists public.gaia_config (
  id          uuid primary key default gen_random_uuid(),
  table_name  text not null unique,
  status      text not null default 'active'
              check (status in ('active','dormant','retired')),
  sort_order  integer,
  deity_name  text,          -- the pantheon: who answers for this table (KP's naming)
  notes       text,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now(),
  created_by  text,
  updated_by  text
);

comment on table public.gaia_config is
  'The base''s own registry: every table, its lifecycle status, and (at KP''s naming) the deity who answers for it. The stewards'' authoritative map — Surveyor reads this, never a hardcoded list.';

-- ─── 2. RLS + the house door ───
-- Plain public read (the ritual's canonical door): this is a registry
-- of table names and lifecycle notes — no editorial drafts live here,
-- so the published-gate of 006 is not needed. Writes stay with the
-- service key; no anon write policies exist.
alter table public.gaia_config enable row level security;
create policy "Public read gaia_config"
  on public.gaia_config for select using (true);

-- ─── 3. The fifteen rows: the base learns its own shape ───
insert into public.gaia_config (table_name, status, sort_order, notes, created_by)
values
  ('gaia_config',               'active',  0, 'The registry itself; born 2026-07-27 the same night as the lattice.', 'Fable via KP'),
  ('categories',                'active', 10, 'Pre-Grammar category ground.', 'Fable via KP'),
  ('atoms',                     'active', 20, 'First tier of the Resonance Grammar: single-word concepts.', 'Fable via KP'),
  ('etymology',                 'active', 21, 'Word lineages riding beside the atoms.', 'Fable via KP'),
  ('sensory_lexicon',           'active', 22, 'The senses of the vocabulary: emoji, color, sound, texture, temperature.', 'Fable via KP'),
  ('molecules',                 'active', 30, 'Second tier: multi-word concepts bonded from atoms.', 'Fable via KP'),
  ('molecule_atoms',            'active', 31, 'Join: atoms -> molecules.', 'Fable via KP'),
  ('organisms',                 'active', 40, 'Third tier: living wholes.', 'Fable via KP'),
  ('organism_molecules',        'active', 41, 'Join: molecules -> organisms.', 'Fable via KP'),
  ('organism_atoms',            'active', 42, 'Join: atoms -> organisms directly (KP''s hand, 2026-07-26).', 'Fable via KP'),
  ('schemes',                   'active', 50, 'The lattice''s dimensions as data; born 2026-07-27, the night KP ruled: omnidimensional lattice, not a hierarchy.', 'Fable via KP'),
  ('scheme_memberships',        'active', 51, 'Entity ∈ dimension; the framework and the Grammar share one spine.', 'Fable via KP'),
  ('concept_relations',         'active', 52, 'The typed edges (BT/RT/UF + dimensions); polyhierarchy lawful by design.', 'Fable via KP'),
  ('classification_paths',      'active', 53, 'Authored classification claims with confidence and provenance.', 'Fable via KP'),
  ('classification_path_steps', 'active', 54, 'Ordered rungs of authored paths; visibility rides the parent.', 'Fable via KP')
on conflict (table_name) do nothing;

-- ============================================================
-- VERIFY 1: the registry stands, lit, and holds fifteen rows
-- ============================================================
select count(*) as registry_rows from public.gaia_config;
-- expected: 15

-- ============================================================
-- VERIFY 2: RLS + the one door, properly in place
-- ============================================================
select tablename, policyname, cmd, qual
  from pg_policies
 where schemaname = 'public' and tablename = 'gaia_config';
-- expected: one SELECT policy, qual = true (registry; no drafts here).

-- After running: the anon door should now count 15 —
--   the registry is deliberately readable by every app and steward.
