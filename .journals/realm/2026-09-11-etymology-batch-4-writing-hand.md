# Etymology batch 4 of 13 — 2026-09-11

## What is

`seeds/etymology/batch-04.json` holds 190 rows, spanning `detection` through
`extraction`. All 190 now carry a `sanctuary_meaning`. 189 carry all three
root fields (`root_word`, `root_language`, `historical_meaning`) and stand at
`completion_progress: 66` — roots composed from common knowledge, not
verified against a source. 1 stands at `completion_progress: 33` with the
three root fields left `null`: `excal`, a cut fragment of a named drawing
tool as it appears in this library, whose own definition already says it is
not an English word and whose naming this hand does not know with enough
confidence to compose without a guess. Header (`wave`, `born`, `source`,
`rows: 190`, `batch: 4`, `of: 13`) and every other field — `etymology_id`,
`atom_id`, `atom_word`, `definition`, `category_name`, `atom_type` — are
unchanged.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-04.json

Answer: `190 189 1 0 0` — 190 rows, 189 at 66, 1 at 33, 0 with
sanctuary_meaning missing, 0 at 66 without full roots. The file parses as
valid JSON, written with `json.dump(indent=1, ensure_ascii=False)`.

## What is short

Every root here is composed, not verified — the 66 says so on its face, and
the one row at 33 says plainly that no root was guessed where none was
known. Several rows carry an honestly noted disputed prehistory in their
`historical_meaning` (`dog`, `dispatch`, `entanglement`, `europe`) while
still standing at 66, in the same manner the finished rows in `voice.json`
flag their own unsettled roots without withholding the attested form. The
verifying pass to 100 against sources is a later hand's, per
`docs/sql/040-the-etymology-ledger.sql`. No base was read or written; only
this one file, by hand, per scope.
