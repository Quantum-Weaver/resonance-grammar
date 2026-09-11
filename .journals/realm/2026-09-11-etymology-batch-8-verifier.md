# Etymology batch 8 of 13 — verifier — 2026-09-11

## What is

`seeds/etymology/batch-08.json` parses as valid JSON, 190 rows, `observe`
through `previous`. The five-number check returns `190 188 2 0 0`, matching the
writing hand's report. No row stands above 66. The header (`wave`, `born`,
`source`, `rows: 190`, `batch: 8`, `of: 13`) is identical to the committed one.
Across all 190 rows, `etymology_id`, `atom_id`, `atom_word`, `definition`,
`category_name` and `atom_type` differ from the committed file in zero places,
and row order is unchanged. The field set — eleven keys, in the committed order
— matches untouched sibling `batch-10.json` and `voice.json`. The file
round-trips exactly to `json.dump(indent=1, ensure_ascii=False)`; it is valid
UTF-8 with no mojibake and no BOM. `git diff --numstat` reads `944 944`, which
is 188 rows × 5 fields plus 2 rows × 2 fields — value replacement only. Nothing
is committed.

The two rows at 33 are `okaidia` and `ollama`; all three root fields are null on
each. No `sanctuary_meaning` is null, exceeds two sentences, or carries a
backtick, a second person, a named person, or a date. Every `historical_meaning`
is one sentence. No `sanctuary_meaning` duplicates another, and none is
character-identical to its definition. No house word from the checked list is
present in this range; `organisms` is, and stands in voice.

## What is short

`sanctuary_meaning` tracks the `definition` more closely than the voice does.
Measured as sequence similarity against each row's own `definition`:
voice.json's 61 rows at 100 run median 0.078, maximum 0.677. Batch 8 runs median
0.663, with 91 rows at or above the voice's maximum, 18 at or above 0.85, and 5
at or above 0.90. `preference` (line 2276) reads 0.97 — its definition with one
word inserted. Then `pixel` 0.94, `practice` 0.935, `playground` 0.915, `pause`
0.915. Sibling `batch-06.json` runs median 0.419, maximum 0.762.

Three rows carry a `root_language` the row's own `historical_meaning`
contradicts: `package` (line 807, `pak`, German, where the sentence says Middle
Dutch), `plugin` (line 1938, `plugge`, German, where the sentence says Dutch),
`overview` (line 716, `ofer + vedere`, Old English, where the sentence says Old
French vue from Latin videre).

Seven compound `root_word` values carry a `root_language` naming one element's
language only: `payload` (`pacare + hlaestan`, Latin), `password`
(`passus + word`, Latin), `placeholder` (`platea + healdan`, Latin), `prebuilt`
(`prae + byldan`, Latin), `preload` (`prae + hlaestan`, Latin), `preset`
(`prae + settan`, Latin), `powershell` (`poeir + sciell`, Old French).

Six rows carry a `root_language` that is not a plain language name:
`Modern English (coinage)` on `ocr`, `pdf`, `pop`, `popup`, and `Modern English`
on `padding`, `peak`. On `ocr` and `pdf` the `root_word` is an initialism's
expansion rather than a root.

`pantheon` (line 1002) writes the Greek for god as θεώς. `package`'s
`historical_meaning` has a broken clause: "offered as one decide, by that
bundling, what travels together". `override` (line 703) says a trace "should
always" be left, which reads as a ruling rather than a meaning.

The 188 roots are otherwise plausible common knowledge; none is an invented
pedigree, and the disputed ones — `padding`, `patch`, `peak`, `pick`, `pop` —
state their uncertainty inside the sentence.

## What was run

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-08.json

Answer: `190 188 2 0 0`.

Nothing in the work was changed by this hand.
