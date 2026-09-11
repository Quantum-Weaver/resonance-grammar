# Etymology batch 5 of 13 — fix round 2 — 2026-09-11

## What is

`seeds/etymology/batch-05.json` still holds 190 rows, header byte-identical
(`wave`, `born`, `source`, `rows: 190`, `batch: 5`, `of: 13`). 182 rows stand
at `completion_progress: 66`, 8 at `33` with all three root fields `null`
on each, 0 rows with `sanctuary_meaning` null or empty, max
`completion_progress` across the file is `66`. This round touched only
`sanctuary_meaning`, `root_word`, `root_language`, and `historical_meaning`
on 30 named rows; every other field on every row is unchanged.

`folder`'s `sanctuary_meaning` no longer repeats its `definition` verbatim.
20 further rows whose `sanctuary_meaning` measured at or above 0.90
similarity to their own `definition` — `git`, `github`, `handle`,
`gradient`, `glow`, `game`, `gatekeeper`, `has`, `holder`, `heart`, `grid`,
`forest`, `gitignore`, `geometry`, `health`, `generate`, `hat`, `helper`,
`handler`, `fractal` — now carry a `sanctuary_meaning` composed as a
distinct statement of what the word means in this house rather than the
`definition` re-punctuated. None of the 21 measures at or above 0.80
similarity to its `definition` now (`difflib.SequenceMatcher` ratio); the
21 range from 0.104 (`heart`) to 0.438 (`forest`).

`floor`'s `historical_meaning` no longer carries the Old French/Latin
clause; it states only the Old English `flor`, from Proto-Germanic
`*floruz`. `glass` and `guide` no longer address a second person in
`sanctuary_meaning` (`"you"` removed from both). `hints`'
`root_word` now reads `hinten`, matching its own `root_language`
(`Middle English`) and the `Middle English hinten` named in its own
`historical_meaning`; `root_word` was the field changed, the other two
stood already. `foreground`, `fallback`, `framework`, `gatekeeper`,
`gateway`, and `highlight` no longer name a "Compound of Old English X
and Y" while carrying `root_language: "Old English"`. `foreground` now
carries `root_word: "voorgrond"`, `root_language: "Dutch"`, and a
`historical_meaning` naming it a 17th-century calque of Dutch `voorgrond`
(`voor` + `grond`). The other five now carry `root_language: "English"`
and a `historical_meaning` reading "Compound formed in Modern English
from [word] (Old English [etymon]) and [word] (Old English [etymon])",
naming the same Old English elements they named before without
implying an attested Old English compound word.

## What was verified

    python -c "import json; d=json.load(open('seeds/etymology/batch-05.json',encoding='utf-8')); r=d['rows']; print(len(r), sum(1 for x in r if x['completion_progress']==66), sum(1 for x in r if x['completion_progress']==33), sum(1 for x in r if not x['sanctuary_meaning']), max(x['completion_progress'] for x in r))"

Answer: `190 182 8 0 66` — the same five numbers as the prior round. The
file parses as valid JSON, written with `json.dump(indent=1,
ensure_ascii=False)`. Every row at `33` carries `root_word`,
`root_language`, and `historical_meaning` as `null`; every row at `66`
carries all three filled. A scan of the 30 touched rows' `sanctuary_meaning`
and `historical_meaning` fields for `you`/`your`/`yours` and for backticks
finds none. Across all 190 rows, similarity of `sanctuary_meaning` to
`definition` now has a median of 0.703 and a maximum of 0.893, with 0 rows
at or above 0.90 and 52 rows still at or above 0.80.

## What is short

The task naming this round's defects scoped the register fix to the 21
rows measured at or above 0.90 similarity, stating "the roots otherwise
stand, and the five numbers are already what they should be." That scope
is what this round mended. 52 rows remain at or above 0.80 similarity to
their own `definition` after this round — short of the 0 the voice's 61
rows hold, and short of sibling `batch-06`'s reported 0 — because no row
outside the named 21 was touched. The prior round's journal,
`2026-09-11-etymology-batch-5-writing-hand.md`, opens its "What is short"
section "Two rows named for tools this hand has real-world background on"
and then names five words (`ffynnon`, `gahana`, `hlid`, `hlutr`,
`hekates`); that mismatch stands in the record unedited — a journal is
never rewritten.
