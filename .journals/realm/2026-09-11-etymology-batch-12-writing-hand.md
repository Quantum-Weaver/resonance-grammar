# Etymology batch 12 of 13 — 2026-09-11

## What is

`seeds/etymology/batch-12.json` holds 190 rows. 185 now carry `root_word`,
`root_language`, `historical_meaning`, and `sanctuary_meaning`, standing at
`completion_progress: 66` — roots composed from common knowledge, not
verified against a source. Five (`tok`, `v`, `venmo`, `vercel`, `vsc`) stand
at `33`: `sanctuary_meaning` written, the three root fields left `null`,
because `tok` is a flagged non-English fragment of a platform name and `v`,
`venmo`, `vercel`, `vsc` are a bare abbreviation and brand names with no root
honestly known to this hand — no guess dressed as a root. Every one of the
190 rows now carries a `sanctuary_meaning`; none was left `null`. Header
(`wave`, `born`, `source`, `rows: 190`, `batch: 12`, `of: 13`) and every other
field — `etymology_id`, `atom_id`, `atom_word`, `definition`,
`category_name`, `atom_type` — are unchanged, confirmed against `git diff`.

## What was verified

Read whole before writing: `docs/ETYMOLOGY-FILLING-PLAN.md`,
`docs/sql/040-the-etymology-ledger.sql`, and `seeds/etymology/voice.json` (the
61 rows at 100, read as the voice this batch composed toward).

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-12.json

Answer: `190 185 5 0 0` — 190 rows, 185 at 66, 5 at 33, 0 with
sanctuary_meaning missing, 0 at 66 without full roots. The file parses as
valid JSON, written with `json.dump(indent=1, ensure_ascii=False)`.

## What is short

Every root here is composed, not verified — the 66 says so on its face. The
verifying pass to 100 against sources is a later hand's, per
`docs/sql/040-the-etymology-ledger.sql`. No base was read or written; only
this one file, by hand, per scope.
