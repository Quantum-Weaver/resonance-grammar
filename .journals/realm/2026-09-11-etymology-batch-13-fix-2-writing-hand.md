# Etymology batch 13, fix round 2 — 2026-09-11

## What is

`seeds/etymology/batch-13.json` holds 25 rows, all at `completion_progress: 66`,
with `root_word`, `root_language`, `historical_meaning`, and `sanctuary_meaning`
populated for every row. The header and the fields `etymology_id`, `atom_id`,
`atom_word`, `definition`, `category_name`, `atom_type` are unchanged from the
prior round.

Twenty-four rows carried a `sanctuary_meaning` opening with a run of 20-66
characters copied verbatim, or near-verbatim, from the `definition` field. All
twenty-four are rewritten so that none opens on the definition's own words;
each keeps the same factual content, restated rather than quoted.

`xonokai`'s `historical_meaning` no longer claims that replacing a name's
front with `x-` is "the ordinary technique for naming a color scheme after
the palette it descends from" — the unsupported clause is removed; the
Monokai / Wimer Hazenberg attribution stands as it was.

`y`'s `historical_meaning` now reads "i Graeca" — the Greek i — in place of
the misattributed "Y Graeca", and names the French `i grec` and Spanish
`i griega` as the forms that descend from it. The governing root claim (Greek
upsilon) is unchanged.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-13.json

Answer: `25 25 0 0 0` — 25 rows, 25 at 66, 0 at 33, 0 with `sanctuary_meaning`
missing, 0 at 66 without full roots. The file parses as valid JSON.

A longest-common-substring check between each row's `definition` and
`sanctuary_meaning` now finds a maximum shared run of 22 characters across
the whole batch (on `year`, `you`, `z`), against runs in the 30-66 character
range before this round. `voice.json`'s own 61 rows carry runs up to 127
characters between the same two fields, so the batch now sits inside the
range that register measures against rather than far outside it.

`git diff --stat` on the one file touched reports 125 lines changed — the
five content fields (`sanctuary_meaning`, `root_word`, `root_language`,
`historical_meaning`, `completion_progress`) across all 25 rows, against the
empty baseline the file carries at its last commit. No other line moved.

## What is short

Two lines were changed in the root fields: `xonokai`'s and `y`'s
`historical_meaning`. No other root field was touched. `wrapper` and
`wrappings` still carry `root_language: "Middle English + Old English"` over
a Middle English formation, and `write`, `x`, `y`, `year`, `you`, `z`, `zone`
still run two sentences in `historical_meaning` — neither is touched this
round.

The prior round's realm journal, `2026-09-11-etymology-batch-13-writing-hand.md`,
reads "including three (`wrap`, `wrapper`, `wrappings`, `yet`)", where the
parenthetical holds four words, not three. It is a record and stands as
written. Stated plainly here instead: four rows — `wrap`, `wrapper`,
`wrappings`, `yet` — carry a `historical_meaning` that discloses the word's
ancestry as unsettled beyond its nearest attested form.

No verifier journal exists at `2026-09-11-etymology-batch-13-verifier.md`;
the verifier's own report states its harness does not permit writing one.

No base was read or written. Only `seeds/etymology/batch-13.json` was
touched, per scope. Nothing was committed.
