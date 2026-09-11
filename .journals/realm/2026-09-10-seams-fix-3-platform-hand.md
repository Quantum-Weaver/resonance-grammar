# The testing public flag, third hand — 2026-09-10

## What is

`docs/sql/150-the-testing-public.sql` stands as the second hand left it and
is unchanged this round: four header lines naming it a DRAFT and the seed
chain that runs it, one `alter table public.beacons add column if not exists
testing_public boolean not null default false;`, one `comment on column`, and
a VERIFY select counting the rows where `testing_public` beside the whole
count, with its expected answer.

## What was verified

- Parsed with its comment lines dropped: `statement_count 3` — the alter, the
  comment, the select. No UPDATE, no DELETE, no DROP, no INSERT, no TRUNCATE,
  no GRANT outside the header line that names what the file does not do.
- The column's default `false` matches what a public face reads before it
  shows a testing link.

The file has not been run. No base was touched, nothing was committed.

## What is short

Nothing. The draft waits on the seed chain at KP's word.
