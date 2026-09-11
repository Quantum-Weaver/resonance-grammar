# Etymology batch 3 of 13 — 2026-09-11

## What is

`seeds/etymology/batch-03.json` holds 190 rows, spanning `commands` through
`detect`. All 190 now carry a `sanctuary_meaning`. 182 carry all three root
fields (`root_word`, `root_language`, `historical_meaning`) and stand at
`completion_progress: 66` — roots composed from common knowledge, not
verified against a source. 8 stand at `completion_progress: 33` with the
three root fields left `null`: `conext` (a misspelling of `context` as
recorded in this library), `confusionto` and `dbcheck` (mis-cut fragments,
not English words), `ct`, `cy`, and `d` (cut fragments or single-letter
abbreviations with no independent word history), and `core` and `cues`,
whose immediate root is genuinely disputed in the sources this hand knows
(the Latin `cor` link for `core`, and the "Q for Latin `quando`" theory for
`cues`) rather than settled enough to compose without a guess. Header
(`wave`, `born`, `source`, `rows: 190`, `batch: 3`, `of: 13`) and every other
field — `etymology_id`, `atom_id`, `atom_word`, `definition`,
`category_name`, `atom_type` — are unchanged.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-03.json

Answer: `190 182 8 0 0` — 190 rows, 182 at 66, 8 at 33, 0 with
sanctuary_meaning missing, 0 at 66 without full roots. The file parses as
valid JSON, written with `json.dump(indent=1, ensure_ascii=False)`.

## What is short

Every root here is composed, not verified — the 66 says so on its face, and
the 8 rows at 33 say plainly that no root was guessed where none was known.
The verifying pass to 100 against sources is a later hand's, per
`docs/sql/040-the-etymology-ledger.sql`. No base was read or written; only
this one file, by hand, per scope.
