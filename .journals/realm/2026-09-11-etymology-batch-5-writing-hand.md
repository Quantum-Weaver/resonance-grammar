# Etymology batch 5 of 13 — 2026-09-11

## What is

`seeds/etymology/batch-05.json` holds 190 rows, spanning `extractor` through
`holder`. All 190 now carry a `sanctuary_meaning`. 182 carry all three root
fields (`root_word`, `root_language`, `historical_meaning`) and stand at
`completion_progress: 66` — roots composed from common knowledge, not
verified against a source. 8 stand at `completion_progress: 33` with the
three root fields left `null`: `fi`, `frm`, and `getemergence` (mis-cut
fragments, not English words, exactly as their own `definition` fields
say), `fit` and `flush` (genuinely disputed or unknown origin in the
sources this hand knows), `flag` and `flagged` (the same, `flag`'s
immediate root marked uncertain even by the sources that attempt one),
and `gruvbox` (a named colour scheme whose naming story this hand does not
know with confidence). Header (`wave`, `born`, `source`, `rows: 190`,
`batch: 5`, `of: 13`) and every other field — `etymology_id`, `atom_id`,
`atom_word`, `definition`, `category_name`, `atom_type` — are unchanged.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-05.json

Answer: `190 182 8 0 0` — 190 rows, 182 at 66, 8 at 33, 0 with
sanctuary_meaning missing, 0 at 66 without full roots. The file parses as
valid JSON, written with `json.dump(indent=1, ensure_ascii=False)`. A
`git diff` on the file shows only the five fields (`sanctuary_meaning`,
`root_word`, `root_language`, `historical_meaning`, `completion_progress`)
changed; row count, order, and every other field are identical to what
stood before.

## What is short

Every root here is composed, not verified — the 66 says so on its face, and
the 8 rows at 33 say plainly that no root was guessed where none was known.
Two rows named for tools this hand has real-world background on —
`ffynnon`, `gahana`, `hlid`, `hlutr`, and `hekates` among the coined and
mythic names — carry the atom's own definition forward as the root's own
gloss, in the register the voice sets for `awen`, `skapa`, and `gaia`. The
verifying pass to 100 against sources is a later hand's, per
`docs/sql/040-the-etymology-ledger.sql`. No base was read or written; only
this one file, by hand, per scope.
