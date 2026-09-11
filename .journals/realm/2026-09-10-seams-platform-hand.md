# The testing public flag — 2026-09-10

## What is

`docs/sql/150-the-testing-public.sql` stands, a DRAFT: not run.

    alter table public.beacons add column if not exists testing_public boolean not null default false;

with a `comment on column` stating that true shows a beacon's testing links on
a public face and false hides them, and a VERIFY select counting the rows where
`testing_public` beside the table's row count. The header names the run:
`resonance-nectere/chains/the-seed-chain/seed_chain.py run
docs/sql/150-the-testing-public.sql --base knowledge --deliver`.

No UPDATE, no DELETE, no other column touched. The status vocabulary this flag
sits beside is `docs/sql/043-the-beacons.sql` lines 84-147; the file adds no
word to it.

## What was verified

The file was not run and nothing was sent to any base. Its shape follows
`docs/sql/149-the-store-standings.sql`: header lines, the statements, a VERIFY
block with the expected answer written under it — `testing_public_rows 0 ·
beacon_rows 40`, 40 being the register's row count as `149` records it.

## What is short

The column is not in the base. `150` runs at KP's word through the seed chain;
the VERIFY answer is read then.
