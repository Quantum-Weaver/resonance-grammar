# Etymology batch 3 of 13 — fix round 2 — 2026-09-11

## What is

`seeds/etymology/batch-03.json` still holds 190 rows, `commands` through
`detect`, 182 at `completion_progress: 66` and 8 at `33`. Two defects named
by a verifier that did not write the batch are now mended; nothing else in
the file changed.

**Systemic voice fault, 95 rows.** `sanctuary_meaning` on 95 named rows
tracked its own `definition` at or above the voice's absolute ceiling
(0.677, from `voice.json`'s 61 finished rows). All 95 are rewritten to draw
an implication, a tension, or a reading out of the word's own root — most
often the one already sitting in its `historical_meaning` — rather than
reword the dictionary sentence: `comparison`, `compatibility`, `complexity`,
`composite`, `compute`, `condition`, `config`, `confirmation`, `conflict`,
`connected`, `connector`, `constellation`, `constrained`, `contact`,
`content`, `context`, `continents`, `continuity`, `continuous`, `continuum`,
`contribution`, `contributor`, `control`, `conversation`, `cookies`,
`cooldown`, `copyright`, `corpora`, `corpus`, `correspond`, `council`,
`count`, `course`, `covenant`, `create`, `creation`, `creator`, `crisis`,
`crystal`, `csv`, `cta`, `cues`, `culturalization`, `culture`, `curator`,
`currency`, `cursor`, `custom`, `customer`, `cy`, `darcula`, `dark`,
`dashboard`, `dashed`, `dashoffset`, `data`, `database`, `date`, `datetime`,
`day`, `dbcheck`, `debounce`, `debug`, `deck`, `declaration`, `decoder`,
`decorations`, `deduplicate`, `deepseek`, `default`, `define`, `definition`,
`degradation`, `deity`, `delegation`, `delete`, `deliver`, `demo`,
`demonstration`, `denormalize`, `density`, `dependency`, `dependents`,
`deploy`, `deployer`, `deprecation`, `depth`, `derivation`, `derive`,
`describe`, `deselect`, `design`, `desktop`, `destination`, `detail`. Three
of these — `cy`, `dbcheck`, `cues` — carry no root fields (`completion_
progress: 33`); their rewritten `sanctuary_meaning` states plainly that no
root survives rather than implying one. `definition` on all 95 is
unchanged.

**Six compound roots, language fault.** `copyright` (`root_word: copia +
riht`) read `root_language: Latin`, naming only `copia`; now `Latin + Old
English`, matching `riht`'s Old English in the row's own
`historical_meaning`. `datetime` (`dare + tima`), same fault, now `Latin +
Old English`. `database` (`dare + basis`), same fault — `basis` is Greek in
the row's own prose — now `Latin + Greek`. `dashoffset` (`daschen +
offset`), same fault, now `Middle English + Old English`. `desktop` read
`root_word: discus` alone, dropping the compound's second element entirely
and naming the word two steps further back than its own
`historical_meaning`'s immediate root (`desca`, Medieval Latin, from
`discus`, Latin) plus `topp` (Old English); `root_word` is now `desca +
topp`, `root_language` now `Medieval Latin + Old English`. `covalent`
(`root_word: valere`) read `root_language: Latin`, though its own
`historical_meaning` opens "Modern English coinage (early 20th century,
chemistry)"; `root_language` is now `Modern English (coinage)`, matching
this file's own label for `deepseek` and `darcula` — a single tag for a
modern formation, not a two-part compound, since `valere` is the deep root
under `valentia`, not a second surface element beside it. `root_word` on
`covalent` and `historical_meaning` on all six are unchanged.

`cross` (`root_word: cros`, `root_language: Old Irish`, naming the borrowing
path rather than the word's own Old English or the Latin `crux` underneath)
was named alongside the six, at polish severity, and was not named in the
closing instruction's list of six; it is untouched.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-03.json

Answer: `190 182 8 0 0` — unchanged from the writing hand's first report.
`sanctuary_meaning`-to-`definition` sequence similarity, normalised lowercase
with punctuation stripped, on the same 95 rows: median 0.408, mean 0.372,
maximum 0.749 across the whole 190-row file, zero rows at or above 0.75 —
against the median 0.750, mean 0.733, and 95-rows-above-0.75 measured before
this pass, and inside the range of untouched sibling `batch-06.json`
(median 0.420, maximum 0.773). None of the 95 rewritten sentences carries a
second person, a named person, a date, or a backtick; each runs one or two
sentences. The file still parses as valid JSON, still round-trips exactly to
`json.dump(indent=1, ensure_ascii=False)`, still carries 2481 CRLF line
endings and zero bare `\n`, and the header (`wave`, `born`, `source`,
`rows: 190`, `batch: 3`, `of: 13`) is unchanged. `etymology_id`, `atom_id`,
`atom_word`, `definition`, `category_name`, `atom_type`, and
`completion_progress` are unchanged on every row; `historical_meaning` is
unchanged on every row, including the six touched for language.

## What is short

Nothing named in the closing instruction is left open. `cross`'s
`root_language` stands as received, at polish severity and out of the named
scope. Only `seeds/etymology/batch-03.json` and this journal were touched.
No base was read or written; no `--deliver`; nothing committed.
