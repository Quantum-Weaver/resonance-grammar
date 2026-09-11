# Etymology batch 10 of 13 — 2026-09-11

## What is

`seeds/etymology/batch-10.json` holds 190 rows. All 190 now carry a
`sanctuary_meaning`. 188 of the 190 also carry `root_word`, `root_language`,
and `historical_meaning`, and stand at `completion_progress: 66` — roots
composed from common knowledge, not verified against a source. 2 rows stand
at `completion_progress: 33`, their three root fields left `null` because no
honest root was known: `sk` (the batch's own definition flags it as a
mis-cut fragment, not a word) and `scramble` (standard reference etymology
marks its origin as genuinely disputed/unknown, so no root is offered rather
than dressing a guess as one). Header (`wave`, `born`, `source`, `rows: 190`,
`batch: 10`, `of: 13`) and every other field — `etymology_id`, `atom_id`,
`atom_word`, `definition`, `category_name`, `atom_type` — are unchanged;
confirmed programmatically by comparing the written file against the
git `HEAD` version field by field, on exactly 190 rows in the same order.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-10.json

Answer: `190 188 2 0 0` — 190 rows, 188 at 66, 2 at 33, 0 with
sanctuary_meaning missing, 0 at 66 without full roots. The file parses as
valid JSON, written with `json.dump(indent=1, ensure_ascii=False)`.

## What is short

`voice.json`'s 61 rows were read whole before this batch was touched, for
the register `sanctuary_meaning` is written in, and for the pattern of
noting disputed deep ancestry honestly inside a filled `historical_meaning`
rather than leaving the row empty over it (`awen`, `khoros`, `gaia`, and
others in that file do this for words whose immediate root is known but
whose prehistory is not). That pattern was followed here for words like
`siren`, `skald`, `sea`, `soul`, `shuffle`, and `skip`, where an immediate
attested root exists even though deeper ancestry is contested or uncertain.
It was not followed for `sk` and `scramble`, where no honest immediate root
exists at all, so those two stayed at 33. Two proper-noun etymologies not
present in the batch's own definitions were cross-checked against the
atom's given definition rather than invented independently: `sceal` and
`seanchai`/`seanchaí` (Irish, per the atoms' own definitions), `sattva`
(Sanskrit), `sistrum` (Greek, already named plainly inside its own
definition). No base was read or written; only this one file, by hand,
per scope.
