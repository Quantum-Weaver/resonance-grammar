# Etymology batch 9 of 13 — fix round 2 — 2026-09-11

## What is

`seeds/etymology/batch-09.json` still holds 190 rows, 188 at
`completion_progress: 66`, 2 at `33` (`qh`, `qpf`, unchanged). Seven named
defects from a verifier that did not write the batch are now mended;
nothing else in the file changed.

**`reach`.** `sanctuary_meaning` carried the sending's one second-person
hit: "...what can be touched from where you stand was always, first, an
act rather than a fact." `you` now reads `one`; the sentence otherwise
stands as written.

**`provenance`.** `root_word: "provenire"` is the Latin infinitive, but
`root_language` read `"French"`. `root_language` now reads `"Latin"`,
agreeing with the root_word already in the row; `historical_meaning`,
which traces French `provenance`/`provenir` back to Latin `provenire`,
is unchanged.

**`quest`.** `root_word: "quaesta"` is the row's own Vulgar Latin form —
named as such in its `historical_meaning` — but `root_language` read
`"Old French"`. Now `"Latin"`, matching `voice.json`'s own `asset` row,
which pairs a Vulgar Latin root_word (`ad satis`) with plain `"Latin"`.

**`resize`.** `root_word: "assisa"` is a Medieval Latin form, but
`root_language` read `"Old French"`. Now `"Medieval Latin"`, matching
this same batch's `quote` row (`root_word: "quotare"`,
`root_language: "Medieval Latin"`).

**`quartermaster`.** `root_language: "English (Latin + Latin)"` was not a
plain language name. Now `"English"`, as the finding suggested;
`root_word: "quarter + master"` and `historical_meaning` are unchanged.

**`registry`.** `root_word: "registrarius"` named a form that appears
nowhere in the row's own `historical_meaning`, which traces "Late Latin
registrum, from regerere". `root_word` now reads `"registrum"`, the form
the prose already names; `root_language` (`"Late Latin"`) and
`historical_meaning` are unchanged.

**`python`.** `historical_meaning` dated the naming to 1991, the first
public release; the naming is generally placed at the language's
conception in December 1989. `historical_meaning` now reads "Named at the
language's conception in 1989 by its creator after the British comedy
troupe Monty Python's Flying Circus, deliberately not after the snake,
which is why the language's own documentation is full of jokes rather
than reptiles." — one sentence, as the field requires.

The two corpus-wide findings in the same defect list — the "The root's…"
formula's frequency across the batch, and rows opening on the
definition's first sentence — name no specific row and no line, and the
sending's own reading of them asks for a conductor's decision before
eleven more batches set a habit. Neither is touched here.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-09.json

Answer: `190 188 2 0 0` — unchanged from the prior round's own run of the
same check. A separate pass over every row's `sanctuary_meaning` for
`you`/`your`/`yours`/`yourself` (case-insensitive) returns zero hits. The
file round-trips exactly through `json.load` followed by
`json.dumps(indent=1, ensure_ascii=False)` — byte-identical to the file on
disk, confirming valid JSON in the required form. Header (`wave`, `born`,
`source`, `rows: 190`, `batch: 9`, `of: 13`) and every field on every row
but the seven named above are unchanged; non-ASCII characters inside the
touched rows (`ræcan`'s æ, among others) were checked at the byte level
and are untouched.

## What is short

The seven named defects are mended; the two unnamed corpus-wide findings
are left for a conductor's decision, as the sending's own reading of them
asked.

Only `seeds/etymology/batch-09.json` and this journal were touched. No
base was read or written; no `--deliver`; nothing committed.
