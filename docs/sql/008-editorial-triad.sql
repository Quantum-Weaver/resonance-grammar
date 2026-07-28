-- ============================================================
-- 008 — THE EDITORIAL TRIAD + THE MODIFIERS HOME
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Written by Fable 🎻, 2026-07-27 night, at KP's rulings:
--   "2-yes" (the editorial schema before any shuttle draft flies)
--   "3-modifiers" (the plural home: a modifiers column on atoms)
-- And SIMPLIFIED by his same-night revision: "acronyms are not
-- atoms, they are extensions of organisms" — so NO acronym label is
-- added to atom_type; acronyms will live as use_for relations at the
-- eyes-on wave.
--
-- WHY: the shuttle (parser of last resort) drafts atoms/molecules/
-- organisms and their bonds. Drafts must land INVISIBLE to the public
-- door until KP publishes them. The lattice tables were born with
-- that law (006); the triad predates it. This file brings the six
-- triad tables under the same editorial posture — with the
-- BACKFILL-FIRST discipline: every existing row becomes 'published'
-- BEFORE the doors tighten, so the living Grammar never flickers.
--
-- THE TWO-STEP DEFAULT (the load-bearing trick):
--   add the status column with DEFAULT 'published'  → existing rows
--   are filled 'published' at ADD time (no gap, no backfill pass);
--   then flip the default to 'submitted'            → every future
--   unmarked insert is a draft. Safe by default, in that order.
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── 1. ATOMS ───
alter table public.atoms add column if not exists submitted_by text;
alter table public.atoms add column if not exists status text not null default 'published';
alter table public.atoms add column if not exists reviewed_by text;
alter table public.atoms add column if not exists reviewed_at timestamptz;
alter table public.atoms add column if not exists review_notes text;
alter table public.atoms alter column status set default 'submitted';
alter table public.atoms add constraint atoms_status_check
  check (status in ('submitted','published','rejected','retired'));

-- THE MODIFIERS HOME (KP's ruling: plurals are properties of their
-- singular atom, never duplicate rows — declared here, e.g.
-- {"plural": "colors"}; other living inflections welcome later)
alter table public.atoms add column if not exists modifiers jsonb;
comment on column public.atoms.modifiers is
  'Living inflections of this atom, never duplicate rows (KP''s ruling 2026-07-27): e.g. {"plural": "colors"}. Etymology stays the word-history home.';

-- ─── 2. MOLECULES ───
alter table public.molecules add column if not exists submitted_by text;
alter table public.molecules add column if not exists status text not null default 'published';
alter table public.molecules add column if not exists reviewed_by text;
alter table public.molecules add column if not exists reviewed_at timestamptz;
alter table public.molecules add column if not exists review_notes text;
alter table public.molecules alter column status set default 'submitted';
alter table public.molecules add constraint molecules_status_check
  check (status in ('submitted','published','rejected','retired'));

-- ─── 3. ORGANISMS ───
alter table public.organisms add column if not exists submitted_by text;
alter table public.organisms add column if not exists status text not null default 'published';
alter table public.organisms add column if not exists reviewed_by text;
alter table public.organisms add column if not exists reviewed_at timestamptz;
alter table public.organisms add column if not exists review_notes text;
alter table public.organisms alter column status set default 'submitted';
alter table public.organisms add constraint organisms_status_check
  check (status in ('submitted','published','rejected','retired'));

-- ─── 4. THE THREE BONDS (shuttle drafts propose bonds too) ───
alter table public.molecule_atoms add column if not exists submitted_by text;
alter table public.molecule_atoms add column if not exists status text not null default 'published';
alter table public.molecule_atoms add column if not exists reviewed_by text;
alter table public.molecule_atoms add column if not exists reviewed_at timestamptz;
alter table public.molecule_atoms add column if not exists review_notes text;
alter table public.molecule_atoms alter column status set default 'submitted';
alter table public.molecule_atoms add constraint molecule_atoms_status_check
  check (status in ('submitted','published','rejected','retired'));

alter table public.organism_molecules add column if not exists submitted_by text;
alter table public.organism_molecules add column if not exists status text not null default 'published';
alter table public.organism_molecules add column if not exists reviewed_by text;
alter table public.organism_molecules add column if not exists reviewed_at timestamptz;
alter table public.organism_molecules add column if not exists review_notes text;
alter table public.organism_molecules alter column status set default 'submitted';
alter table public.organism_molecules add constraint organism_molecules_status_check
  check (status in ('submitted','published','rejected','retired'));

alter table public.organism_atoms add column if not exists submitted_by text;
alter table public.organism_atoms add column if not exists status text not null default 'published';
alter table public.organism_atoms add column if not exists reviewed_by text;
alter table public.organism_atoms add column if not exists reviewed_at timestamptz;
alter table public.organism_atoms add column if not exists review_notes text;
alter table public.organism_atoms alter column status set default 'submitted';
alter table public.organism_atoms add constraint organism_atoms_status_check
  check (status in ('submitted','published','rejected','retired'));

-- ─── 5. THE DOORS TIGHTEN — new gated policy FIRST, old open door
--        dropped SECOND (policies OR together; no dark moment) ───
create policy "Public read published atoms"
  on public.atoms for select using (status = 'published');
create policy "Public read published molecules"
  on public.molecules for select using (status = 'published');
create policy "Public read published organisms"
  on public.organisms for select using (status = 'published');
create policy "Public read published molecule_atoms"
  on public.molecule_atoms for select using (status = 'published');
create policy "Public read published organism_molecules"
  on public.organism_molecules for select using (status = 'published');
create policy "Public read published organism_atoms"
  on public.organism_atoms for select using (status = 'published');

drop policy if exists "Public read atoms" on public.atoms;
drop policy if exists "Public read molecules" on public.molecules;
drop policy if exists "Public read organisms" on public.organisms;
drop policy if exists "Public read molecule_atoms" on public.molecule_atoms;
drop policy if exists "Public read organism_molecules" on public.organism_molecules;
drop policy if exists "Public read organism_atoms" on public.organism_atoms;

-- ============================================================
-- VERIFY 1: every row still visible (the backfill-first proof)
-- ============================================================
select 'atoms' as t, count(*) as published from public.atoms where status='published'
union all select 'molecules', count(*) from public.molecules where status='published'
union all select 'organisms', count(*) from public.organisms where status='published'
union all select 'molecule_atoms', count(*) from public.molecule_atoms where status='published'
union all select 'organism_molecules', count(*) from public.organism_molecules where status='published'
union all select 'organism_atoms', count(*) from public.organism_atoms where status='published';
-- expected: 1949 · 4156 · 2540 · 8104 · 3185 · 8285 — every living row published.

-- ============================================================
-- VERIFY 2: one gated door per table, the open doors gone
-- ============================================================
select tablename, policyname, qual
  from pg_policies
 where schemaname='public'
   and tablename in ('atoms','molecules','organisms','molecule_atoms',
                     'organism_molecules','organism_atoms')
 order by tablename;
-- expected: exactly one SELECT policy per table, each gated to
-- 'published'. If any OTHER select policy shows here (an old door
-- under a different name), tell Fable its name — it gets its own
-- explicit drop, never a blind one.

-- After running: python resonance-bridge/grammar_inventory.py —
-- counts must be UNCHANGED from before this file. That is the proof
-- the doors tightened without a flicker.
