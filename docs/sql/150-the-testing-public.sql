-- 150 — the testing public flag. DRAFT: not run. It runs through resonance-nectere/chains/the-seed-chain/seed_chain.py run docs/sql/150-the-testing-public.sql --base knowledge --deliver.
-- Register: public.beacons (table, not the view), 40 rows, anon door.
-- One column added; no UPDATE, no DELETE, no other column touched.
-- The flag a public face reads before it shows a testing link: 043-the-beacons.sql lines 84-147.

alter table public.beacons add column if not exists testing_public boolean not null default false;

comment on column public.beacons.testing_public is
  'true shows this beacon''s testing links on a public face, false hides them';

-- VERIFY
select count(*) filter (where testing_public) as testing_public_rows,
       count(*)                               as beacon_rows
  from public.beacons;
-- expect: testing_public_rows 0 · beacon_rows 40
