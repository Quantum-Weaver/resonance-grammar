# Etymology batch 13 of 13 — 2026-09-11

## What is

`seeds/etymology/batch-13.json` holds 25 rows. All 25 now carry `root_word`,
`root_language`, `historical_meaning`, and `sanctuary_meaning`, and all 25
stand at `completion_progress: 66` — roots composed from common knowledge, not
verified against a source. None were left empty; each of the 25 words carried
enough attested history to compose a root honestly, including three (`wrap`,
`wrapper`, `wrappings`, `yet`) where the historical_meaning states plainly
that the word's own deeper ancestry is unsettled beyond its nearest attested
form. Header (`wave`, `born`, `source`, `rows: 25`, `batch: 13`, `of: 13`) and
every other field — `etymology_id`, `atom_id`, `atom_word`, `definition`,
`category_name`, `atom_type` — are unchanged.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-13.json

Answer: `25 25 0 0 0` — 25 rows, 25 at 66, 0 at 33, 0 with sanctuary_meaning
missing, 0 at 66 without full roots. The file parses as valid JSON, written
with `json.dump(indent=1, ensure_ascii=False)`.

## What is short

Every root here is composed, not verified — the 66 says so on its face. The
verifying pass to 100 against sources is a later hand's, per
`docs/sql/040-the-etymology-ledger.sql`. No base was read or written; only
this one file, by hand, per scope.
