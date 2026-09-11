# The testing public flag, second hand — 2026-09-10

## What is

`docs/sql/150-the-testing-public.sql` stands, a DRAFT: not run. The column
comment's text now reads

    'true shows this beacon''s testing links on a public face, false hides them'

with a comma where a semicolon stood. The header lines, the
`alter table public.beacons add column if not exists testing_public boolean not
null default false;`, the `comment on column` and the VERIFY select with its
expected answer are unchanged. No UPDATE, no DELETE, no other column touched.

## What was verified

`statement_count` of
`resonance-nectere/chains/the-seed-chain/seed_chain.py`, run over the file,
answers 3 — the three statements that stand. Over
`docs/sql/149-the-store-standings.sql` it answers 25. The dry sheet the seed
chain prints therefore states the file's true statement count.

The file was not run and nothing was sent to any base. Nothing was committed.

## What is short

The column is not in the base. `150` runs at KP's word through the seed chain;
the VERIFY answer is read then.
