-- ============================================================
-- 005 — HEAL THE READ LINE on the Grammar tables
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Written by Fable 🎻, 2026-07-23, after discovery: anon reads on
--   atoms / categories / etymology / sensory_lexicon / molecules /
--   molecule_atoms return HTTP 500 through the API — policy-shaped
--   errors (not 403 permission, not 404 absence). organisms and
--   organism_molecules read cleanly under 004's fresh policies.
-- KP's ruling the same evening: only atoms, categories,
--   sensory_lexicon carry data; other Grammar tables are empty;
--   gaia_config is slated for removal (untouched here).
-- The heal: drop ALL existing policies on the named tables and
--   re-lay the one standard house door — public read, writes stay
--   with the secret key. Wholesale re-lay is safe because
--   public-read IS the house pattern for every Grammar table.
-- Method: KP reads and runs in the dashboard SQL Editor.
-- Idempotent: safe to run twice.
-- ============================================================

do $$
declare
  t text;
  p record;
begin
  foreach t in array array[
    'atoms', 'categories', 'etymology', 'sensory_lexicon',
    'molecules', 'molecule_atoms'
  ] loop
    -- drop every existing policy on the table, whatever its name
    for p in select policyname from pg_policies
              where schemaname = 'public' and tablename = t loop
      execute format('drop policy %I on public.%I', p.policyname, t);
    end loop;
    -- RLS on, one clean read door
    execute format('alter table public.%I enable row level security', t);
    execute format(
      'create policy %I on public.%I for select using (true)',
      'Public read ' || t, t);
  end loop;
end $$;

-- ============================================================
-- VERIFY: one SELECT policy per table, and anon can actually read
-- ============================================================
select tablename, policyname, cmd
  from pg_policies
 where schemaname = 'public'
   and tablename in ('atoms','categories','etymology','sensory_lexicon',
                     'molecules','molecule_atoms')
 order by tablename;

begin; set local role anon;
select (select count(*) from public.atoms)           as atoms,
       (select count(*) from public.categories)      as categories,
       (select count(*) from public.sensory_lexicon) as sensory_lexicon;
rollback;
-- expected: real counts, no error. If this still errors, the cause is
-- deeper than policies (a broken view/trigger/grant) — paste the error.
