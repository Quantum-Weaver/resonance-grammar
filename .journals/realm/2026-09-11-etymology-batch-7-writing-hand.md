# Etymology batch 7 of 13 — 2026-09-11

## What is

`seeds/etymology/batch-07.json` holds 190 rows. All 190 now carry a
`sanctuary_meaning`. 186 of the 190 also carry `root_word`, `root_language`,
and `historical_meaning`, and stand at `completion_progress: 66` — roots
composed from common knowledge, not verified against a source. 4 rows stand
at `completion_progress: 33`, their three root fields left `null` because no
honest root was known: `lrc` (a file-format initialism whose chosen letters
are not confidently traceable), and `maxidx`, `nidx`, `nership` (the batch's
own definitions flag these as cut fragments, not English words). Header
(`wave`, `born`, `source`, `rows: 190`, `batch: 7`, `of: 13`) and every other
field — `etymology_id`, `atom_id`, `atom_word`, `definition`, `category_name`,
`atom_type` — are unchanged; confirmed by re-reading the written file and
checking that only the five etymology fields differ from the original per
row, on exactly 190 rows.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-07.json

Answer: `190 186 4 0 0` — 190 rows, 186 at 66, 4 at 33, 0 with
sanctuary_meaning missing, 0 at 66 without full roots. The file parses as
valid JSON, written with `json.dump(indent=1, ensure_ascii=False)`.

## What is short

`voice.json`'s 61 rows were read whole before this batch was touched, for the
register `sanctuary_meaning` is written in. Every root here is composed, not
verified — the 66 says so on its face, per `docs/sql/040-the-etymology-ledger.sql`.
Seven rows already carried a Greek, Sanskrit, or Old Norse root inside their
own `definition` (`martyria`, `merismos`, `nomos`, `nectere`, `nemeton`,
`lok`, `mynd`); those were composed from that ground rather than guessed
fresh. Four rows stayed honestly empty rather than carry a guessed root. No
base was read or written; only this one file, by hand, per scope.
