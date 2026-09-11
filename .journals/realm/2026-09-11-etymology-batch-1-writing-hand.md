# Etymology batch 1 of 13 — 2026-09-11

## What is

`seeds/etymology/batch-01.json` holds 190 rows, spanning `a` through `beat`.
All 190 now carry a `sanctuary_meaning`. 186 carry all three root fields
(`root_word`, `root_language`, `historical_meaning`) and stand at
`completion_progress: 66` — roots composed from common knowledge, not
verified against a source. 4 stand at `completion_progress: 33` with the
three root fields left `null`: `ann`, a short form of two unrelated software
terms (annotation; approximate nearest neighbour) with no single root to
compose without a guess; `ateliersulphurpool` and `atomscategory`, whose own
definitions already name them as a theme label and a mis-cut fragment rather
than words; and `b`, a single-letter fragment. Header (`wave`, `born`,
`source`, `rows: 190`, `batch: 1`, `of: 13`) and every other field —
`etymology_id`, `atom_id`, `atom_word`, `definition`, `category_name`,
`atom_type` — are unchanged.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-01.json

Answer: `190 186 4 0 0` — 190 rows, 186 at 66, 4 at 33, 0 with
sanctuary_meaning missing, 0 at 66 without full roots. The file parses as
valid JSON, written with `json.dump(indent=1, ensure_ascii=False)`.

## What is short

Every root here is composed, not verified — the 66 says so on its face, and
the 4 rows at 33 say plainly that no root was guessed where none was known.
The verifying pass to 100 against sources is a later hand's, per
`docs/sql/040-the-etymology-ledger.sql`. No base was read or written; only
this one file, by hand, per scope.
