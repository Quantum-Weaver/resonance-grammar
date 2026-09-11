# Etymology batch 3 of 13 — verifier — 2026-09-11

## What is

`seeds/etymology/batch-03.json` parses as valid JSON, 190 rows, `commands`
through `detect`. The five-number check returns `190 182 8 0 0`, matching the
writing hand's report. No row stands above 66. The header
(`wave`, `born`, `source`, `rows: 190`, `batch: 3`, `of: 13`) is byte-identical
to the committed one. Across all 190 rows, `etymology_id`, `atom_id`,
`atom_word`, `definition`, `category_name` and `atom_type` differ from the
committed file in zero places, and row order is unchanged. The field set
matches untouched sibling `batch-07.json`. The file round-trips exactly to
`json.dump(indent=1, ensure_ascii=False)`; it is valid UTF-8 with no mojibake.
`git diff --numstat` reads `927 927` — value replacement only. Nothing is
committed.

The eight rows at 33 are `conext`, `confusionto`, `ct`, `cy`, `d`, `dbcheck`,
`core`, `cues`; all three root fields are null on each. The 182 roots are
plausible common knowledge; none is an invented pedigree. Every
`historical_meaning` is one sentence. No `sanctuary_meaning` is null, exceeds
two sentences, or carries a backtick, a second person, a named person, or a
date. The one house word present, `cruthu`, names the graphic studio and
stands in voice.

## What is short

`sanctuary_meaning` tracks the `definition` far more closely than the voice
does. Measured as sequence similarity against each row's own `definition`:
voice.json's 61 rows at 100 run median 0.076, maximum 0.677, none above 0.75.
Batch 3 runs median 0.750, with 95 rows at or above the voice's maximum, 39 at
or above 0.85, and 15 at or above 0.90. `dashed` is character-identical to its
definition. Sibling `batch-06.json` runs median 0.420, maximum 0.773.

Six compound `root_word` values carry a `root_language` naming one element's
language only: `copyright` (`copia + riht`, Latin), `datetime`
(`dare + tima`, Latin), `database` (`dare + basis`, Latin), `dashoffset`
(`daschen + offset`, Middle English), `desktop` (`discus`, Medieval Latin),
`covalent` (`valere`, Latin, where the historical_meaning calls it a modern
English coinage).

## What was run

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-03.json

Answer: `190 182 8 0 0`.

Nothing in the work was changed by this hand.
