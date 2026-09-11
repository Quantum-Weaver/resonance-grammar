# Etymology batch 1 of 13 — verifier — 2026-09-11

## What is

`seeds/etymology/batch-01.json` parses as valid JSON, 190 rows, `a` through
`beat`. The five-number check returns `190 186 4 0 0`, matching the writing
hand's report. No row stands above 66; the only values present are 33 and 66,
where the committed file carried 0 on all 190. The header (`wave`, `born`,
`source`, `rows: 190`, `batch: 1`, `of: 13`) is byte-identical to the committed
one, the UTF-8 middle dot in `source` intact. Across all 190 rows
`etymology_id`, `atom_id`, `atom_word`, `definition`, `category_name` and
`atom_type` differ from the committed file in zero places; row order and key
order are unchanged; the eleven-key field set matches `batch-02.json` and
`voice.json`. `git diff --numstat` reads `939 939` — value replacement only.
Nothing is committed.

The four rows at 33 are `ann`, `ateliersulphurpool`, `atomscategory` and `b`;
all three root fields are `null` on each, and each definition already names the
row as an abbreviation or a fragment rather than a word. No `sanctuary_meaning`
is null, exceeds two sentences, carries a backtick, a second person, a named
person, a date or a ruling. Every `historical_meaning` is one sentence.

The 186 roots are plausible common knowledge. Disputed words disclose the
dispute inside the sentence rather than inventing a pedigree: `bad` (line 2237),
`badge`, `average`, `barrel`, `bar`, `atlas`, `artemis`, `asia` and `and`. The
house words in range — `atom`, `ardan` (line 1353), `beacon`, `audhdities`,
`awenydd`, `artemis`, `archive` — each name the house sense, and `ziggy`'s
`Modern English (coinage)` precedent in `voice.json` is followed for the
coinages and initialisms.

## What is short

`sanctuary_meaning` restates the `definition` rather than saying what the word
means in the house. Measured as token sequence similarity against each row's
own `definition`: `voice.json`'s 61 rows at 100 run median 0.109, maximum 0.791.
Batch 1 runs median 0.718, with 70 rows at or above the voice's maximum, 53 at
or above 0.85, 25 at or above 0.90. Eight rows are token-identical to their own
definition, differing only in punctuation: `all` (line 703), `api` (line 1054),
`archetype` (line 1288), `authorization` (line 1964), `avatar` (line 2055),
`backend` (line 2172), `bazaar` (line 2432), `beat` (line 2471). `action`
(line 261) is one sentence of its definition verbatim. 81 of 190 rows carry a
whole definition sentence inside the meaning. Siblings run lower: `batch-09` 6
rows above the voice maximum, `batch-11` 28, `batch-12` 33.

Four rows carry a `root_word` or `root_language` the row's own
`historical_meaning` contradicts. `artisan` (line 1509): `root_word`
`artitianus`, `root_language` `Italian`, where the sentence gives Italian
`artigiano` from Latin `artitus` and `artitianus` appears nowhere in it.
`anatomy` (line 885): `root_word` `anatomia` under `Greek`, where the sentence
gives Greek `anatome`. `already` (line 755): `root_word` `al gerade` under
`Old English`, where the sentence traces Middle English `al redi`. `bandwidth`
(line 2302) glosses WIDTH as "Old English widu, breadth"; `widu` is the Old
English for wood, and `width` is a 17th-century formation on `wide` + `-th`.

`ai` (line 573) is labelled `Modern English (coinage)` where `adb`, `api`,
`apk`, `ast` and `aria` are labelled `Modern English (acronym)`. `ardan`
(line 1353) writes `root_word: "ardan"` where the row's own definition spells
the Irish `ardán`.

## What was run

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-01.json

Answer: `190 186 4 0 0`.

Nothing in the work was changed by this hand.
