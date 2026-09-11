# etymology seed batches — counts

2,305 rows across batch-01.json through batch-13.json · 2,250 at 66 · 55 at 33 · 0 rows with no sanctuary_meaning · 0 rows at 66 missing one or more of the three root fields · 0 rows above 66 · 0 etymology_ids repeated across batches · one field name set held by every row (atom_id, atom_type, atom_word, category_name, completion_progress, definition, etymology_id, historical_meaning, root_language, root_word, sanctuary_meaning) · every header carries `batch N of 13` and a `rows` value equal to its file's row count · voice.json holds 61 rows, all at 100.

The seeder's dry run against the live base (2,366 rows total, 2,305 empty) reports the same would-write counts as the file audit for every batch, 0 rows skipped for no meaning, 0 for a mark already standing, 0 for an id not in the base, and 0 atom_word mismatches, in every batch.

| batch | rows | at 66 | at 33 | missing meaning | 66 w/o all 3 roots | seeder: would deliver | seeder: at 66 | seeder: at 33 | seeder: skip no meaning | seeder: skip mark stands | seeder: skip id not in base | seeder: atom_word mismatch |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| batch-01 | 190 | 186 | 4 | 0 | 0 | 190 | 186 | 4 | 0 | 0 | 0 | 0 |
| batch-02 | 190 | 184 | 6 | 0 | 0 | 190 | 184 | 6 | 0 | 0 | 0 | 0 |
| batch-03 | 190 | 182 | 8 | 0 | 0 | 190 | 182 | 8 | 0 | 0 | 0 | 0 |
| batch-04 | 190 | 189 | 1 | 0 | 0 | 190 | 189 | 1 | 0 | 0 | 0 | 0 |
| batch-05 | 190 | 182 | 8 | 0 | 0 | 190 | 182 | 8 | 0 | 0 | 0 | 0 |
| batch-06 | 190 | 183 | 7 | 0 | 0 | 190 | 183 | 7 | 0 | 0 | 0 | 0 |
| batch-07 | 190 | 186 | 4 | 0 | 0 | 190 | 186 | 4 | 0 | 0 | 0 | 0 |
| batch-08 | 190 | 188 | 2 | 0 | 0 | 190 | 188 | 2 | 0 | 0 | 0 | 0 |
| batch-09 | 190 | 188 | 2 | 0 | 0 | 190 | 188 | 2 | 0 | 0 | 0 | 0 |
| batch-10 | 190 | 188 | 2 | 0 | 0 | 190 | 188 | 2 | 0 | 0 | 0 | 0 |
| batch-11 | 190 | 184 | 6 | 0 | 0 | 190 | 184 | 6 | 0 | 0 | 0 | 0 |
| batch-12 | 190 | 185 | 5 | 0 | 0 | 190 | 185 | 5 | 0 | 0 | 0 | 0 |
| batch-13 | 25 | 25 | 0 | 0 | 0 | 25 | 25 | 0 | 0 | 0 | 0 | 0 |
| **totals** | **2305** | **2250** | **55** | **0** | **0** | **2305** | **2250** | **55** | **0** | **0** | **0** | **0** |

voice.json: 61 rows, 61 at 100.

The command that delivers one batch, run from resonance-nectere, the seeder verifying through the anon door after each:

    python hands/etymology_wave_seeder.py ../resonance-grammar/seeds/etymology/batch-01.json --deliver

The same form, with the next batch number in place of `batch-01`, for each of the thirteen.
