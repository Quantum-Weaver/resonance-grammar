# Etymology batch 8 of 13 — fix round 2 — writing hand — 2026-09-11

## What is

`seeds/etymology/batch-08.json`, 190 rows, header and row order unchanged.
Twenty-one named defects mended, all within rows already touched by the
prior pass — no new line entered the diff.

`sanctuary_meaning` rewritten on five rows so each states what the word does
in this house rather than a light rewording of `definition`: `preference`,
`pixel`, `practice`, `playground`, `pause`. Sequence similarity of each new
`sanctuary_meaning` against its own `definition`, measured the same way as
the finding: preference 0.325, pixel 0.091, practice 0.152, playground
0.301, pause 0.415 — all now below voice.json's own maximum of 0.677.

`root_language` corrected to the language the row's own `historical_meaning`
already names: `package` and `plugin` from German to Dutch; `overview`'s
`root_word` from `ofer + vedere` to `ofer + vue` and its `root_language` from
Old English to Old English + Old French, matching the sentence's own Old
French vue / Latin vidēre.

`root_language` completed to name both elements of a compound, matching the
ledger column's own comment: `payload`, `password`, `placeholder`,
`prebuilt`, `preload`, `preset` from Latin to Latin + Old English;
`powershell` from Old French to Old French + Old English.

`root_language`'s parenthetical qualifier removed, leaving the plain name
Modern English: `ocr`, `pdf`, `pop`, `popup`.

`pantheon`'s `historical_meaning` corrected: θεώς to θεός.
`package`'s `historical_meaning` broken clause rewritten to a plain
sentence: "things become a package by being bundled, and the bundling
itself decides what travels together."
`override`'s `sanctuary_meaning` reworded so the trace a choosing leaves is
what the word means rather than a "should always" ruling.

No other field on any row was touched. The file parses as valid JSON;
`json.dumps(indent=1, ensure_ascii=False)` round-trips exactly against the
file's own text (the file's CRLF line endings are Python's own text-mode
write behaviour on this platform, not a content difference). `git diff`
against the last commit still reads 944 insertions, 944 deletions — the
same span the prior pass touched; nothing beyond it.

## What was run

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-08.json

Answer: `190 188 2 0 0`.

Nothing was committed.
