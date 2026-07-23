-- ============================================================
-- 004 — RLS POLICIES for the organism tier (healing 003 §5)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Written by Fable 🎻, 2026-07-23, at KP's finding:
--   "Table public.organism_molecules has RLS enabled, but no
--    policies exist / Table public.organisms has RLS enabled,
--    but no policies exist"
-- History: 003-the-triad.sql §5 wrote these same policies, but the
--   dashboard shows both tables policy-less today — the section did
--   not run (or did not survive the rename night). RLS enabled with
--   zero policies = locked to every API key; this heals it BEFORE
--   the excavator season's first seed arrives.
-- House pattern (matches atoms / molecules / molecule_atoms):
--   public READ via anon+authenticated; WRITES stay with the
--   service key / SQL editor (service_role bypasses RLS).
-- Method: KP reads and runs this in the dashboard SQL Editor —
--   visual, deliberate, his eye on every statement.
-- Idempotent: safe to run twice.
-- ============================================================

-- ─── 1. The two missing read policies ───
drop policy if exists "Public read organisms" on public.organisms;
create policy "Public read organisms"
  on public.organisms for select using (true);

drop policy if exists "Public read organism_molecules" on public.organism_molecules;
create policy "Public read organism_molecules"
  on public.organism_molecules for select using (true);

-- ============================================================
-- VERIFY (run after): expect one row per table, cmd = SELECT
-- ============================================================
select schemaname, tablename, policyname, cmd, qual
  from pg_policies
 where tablename in ('organisms', 'organism_molecules')
 order by tablename;

-- And the wider sweep, so nothing else sits locked-with-no-door:
-- every public table with RLS on but zero policies.
select c.relname as table_name
  from pg_class c
  join pg_namespace n on n.oid = c.relnamespace
 where n.nspname = 'public'
   and c.relkind = 'r'
   and c.relrowsecurity
   and not exists (select 1 from pg_policies p
                    where p.schemaname = 'public'
                      and p.tablename = c.relname);
-- expected after this file runs: zero rows.
