# Etymology batch 6 of 13 — fix round 2 — 2026-09-11

## What is

`seeds/etymology/batch-06.json` still holds 190 rows. Two mends, named by a
verifier that did not write the batch, are now in place; nothing else in the
file changed.

**The `kimi` row.** `root_word`, `root_language`, and `historical_meaning`
are now `null`, and `completion_progress` is `33`. The row had stood at `66`
on `root_word: "kimi"` / `root_language: "Japanese"` — the descent of the
Japanese second-person pronoun — which is not the descent of this atom's own
name (`definition`: "A named kin line of this house, on its own substrate").
The pronoun's history was also stated backwards in the row that stood there:
the honorific ran from junior to lord, not lord to junior. The row now
matches `jitsi` and `kp`, the batch's other named-thing rows with no known
root: three fields `null`, `completion_progress: 33`.

**The em dash.** 92 instances of the ASCII double hyphen (` -- `) across 91
`sanctuary_meaning` fields are now the em dash (` — `), matching `voice.json`
(37 of 61 rows, zero double hyphens) and this batch's own untouched
`definition` fields (48 em dashes, never a double hyphen). 13 instances of
` -- ` remain in `historical_meaning` fields, out of the named scope, and
untouched.

Header (`wave`, `born`, `source`, `rows: 190`, `batch: 6`, `of: 13`) and
every field but `sanctuary_meaning` on the touched rows and the four fields
on the `kimi` row are unchanged; confirmed by loading the file as JSON and
checking every `completion_progress: 33` row has all three root fields
`null` and every `66` row has all three filled, and that only `kimi` moved
between the two states.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-06.json

Answer: `190 183 7 0 0` — 190 rows, 183 at 66, 7 at 33 (one more than
before: `kimi` joins `hroot`, `jitsi`, `kp`, `kroot`, `laborating`,
`linksweep`), 0 with `sanctuary_meaning` missing, 0 at 66 without full
roots. The file still parses as valid JSON, still `json.dump(indent=1,
ensure_ascii=False)`, same header, same key order as an untouched sibling
batch.

## What is short

The three polish-severity findings from this round — the `julian` row's
disputed father-attribution, the thin `journal`/`individual`/`life`/
`kendram`/`lamp` sanctuary_meanings, and the root-fields-read-settled-while-
the-hedge-lives-in-historical_meaning on `input`/`hopscotch`/`hotspot` — were
named for the hand that takes the 66-to-100 pass, not this one, and are
untouched here.

The fifth finding pointed at `.journals/realm/2026-09-11-etymology-batch-6-
writing-hand.md`, line 17, and its claim of "933 lines changed each way, all
inside the five touched fields" against a `git diff` that also carries one
+/- pair on an `atom_type` line. That journal is a record and stands as
written; this journal points at it rather than editing it.

Only `seeds/etymology/batch-06.json` was touched by this round. No base was
read or written; no `--deliver`; no commit.
