# Etymology batch 6 of 13 — 2026-09-11

## What is

`seeds/etymology/batch-06.json` holds 190 rows. All 190 now carry a
`sanctuary_meaning`. 184 of the 190 also carry `root_word`, `root_language`,
and `historical_meaning`, and stand at `completion_progress: 66` — roots
composed from common knowledge, not verified against a source. 6 rows stand
at `completion_progress: 33`, their three root fields left `null` because no
honest root was known: `hroot`, `kroot`, `laborating`, `linksweep` (the
batch's own definitions flag these as mis-cut fragments, not English words),
`jitsi` (a named tool whose name's own history is not known to this hand),
and `kp` (a personal initialism carrying no linguistic descent to compose).
Header (`wave`, `born`, `source`, `rows: 190`, `batch: 6`, `of: 13`) and every
other field — `etymology_id`, `atom_id`, `atom_word`, `definition`,
`category_name`, `atom_type` — are unchanged; confirmed against
`git diff --stat` (933 lines changed each way, all inside the five touched
fields) and a direct check that only `completion_progress` lines changed on
exactly 190 rows.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-06.json

Answer: `190 184 6 0 0` — 190 rows, 184 at 66, 6 at 33, 0 with
sanctuary_meaning missing, 0 at 66 without full roots. The file parses as
valid JSON, written with `json.dump(indent=1, ensure_ascii=False)`.

## What is short

`voice.json`'s 61 rows were read whole before this batch was touched, for the
register `sanctuary_meaning` is written in. Every root here is composed, not
verified — the 66 says so on its face, per `docs/sql/040-the-etymology-ledger.sql`.
Six rows stayed honestly empty rather than carry a guessed root. No base was
read or written; only this one file, by hand, per scope.
