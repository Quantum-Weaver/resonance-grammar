# The etymology batches, audited and counted — 2026-09-11 closeout

*Nothing committed. One file added.*

## What the work did

`seeds/etymology/COUNTS.md` — written new. States the totals, a per-batch
table, the voice file's row count, and the delivery command's form.

No batch file, no fixture, no migration, and `voice.json` were touched.

## What was verified

A python read of all thirteen batch files, independent of the seeder:

- 2,305 rows total across batch-01.json through batch-13.json.
- 2,250 rows carry `completion_progress` 66, 55 carry 33, 0 carry anything
  else, 0 carry a value above 66.
- 0 rows are missing `sanctuary_meaning`.
- 0 rows at 66 are missing any of `root_word`, `root_language`,
  `historical_meaning`.
- 2,305 distinct `etymology_id` values across all thirteen files; 0 repeated.
- One field-name set held by every row across all 2,305:
  `atom_id, atom_type, atom_word, category_name, completion_progress,
  definition, etymology_id, historical_meaning, root_language, root_word,
  sanctuary_meaning`.
- Every header carries `batch` equal to its file's number, `of` equal to 13,
  `wave` equal to `etymology`, and `rows` equal to the file's own row count.
- `voice.json`: 61 rows, all at `completion_progress` 100.

This matches the conductor's own audit stated in the sending: 2,305 rows ·
2,250 at 66 · 55 at 33 · 0 with no sanctuary_meaning · 0 at 66 without all
three roots · 0 etymology_ids repeated · one field set.

The seeder's own dry runs (`etymology_wave_seeder.py`, run from
resonance-nectere, one per batch) report the same would-write counts as this
file audit for every batch, and 0 rows skipped for a mark already standing,
0 for an id absent from the live base, and 0 `atom_word` mismatches, in
every batch.

## What is short

Nothing named in the sending. The batches stand unaudited by any human hand
past this count; `--deliver` was not run against any of them.
