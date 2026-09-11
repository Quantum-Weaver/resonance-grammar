# Etymology batch 5 of 13 — verifier — 2026-09-11

## What is

`seeds/etymology/batch-05.json` parses as valid JSON, 190 rows, `extractor`
through `holder`. The five-number check returns `190 182 8 0 0`, matching the
writing hand's report. No row stands above 66; the minimum is 33. The header
(`wave`, `born`, `source`, `rows: 190`, `batch: 5`, `of: 13`) is byte-identical
to the committed one, and its stated count matches the row count. Across all
190 rows, `etymology_id`, `atom_id`, `atom_word`, `definition`,
`category_name` and `atom_type` differ from the committed file in zero places,
and row order is unchanged. The field set matches sibling `batch-06.json`. The
file round-trips exactly to `json.dump(indent=1, ensure_ascii=False)`, is valid
UTF-8 with no replacement characters and no mojibake. `git diff --numstat`
reads `926 926` — value replacement only. Nothing is committed.

The eight rows at 33 are `fi`, `fit`, `flag`, `flagged`, `flush`, `frm`,
`getemergence`, `gruvbox`; all three root fields are null on each, and each is
a fragment, a coinage, or a word of genuinely disputed origin. Every row at 66
carries all three root fields filled. Every `historical_meaning` is one
sentence. No `sanctuary_meaning` is null or empty, exceeds two sentences, or
carries a backtick, a second person, or a date; none exists in any field.
`gahana` is the one house word from the named list present, and it stands in
voice.

The seven defects the fix round names are mended in the file as reported.
`folder`, and the twenty further rows named, all measure between 0.104 and
0.438 character similarity to their own `definition`. `floor`'s
`historical_meaning` carries only the Old English half. `hints`' three root
fields agree. `foreground` carries `voorgrond` / Dutch. `fallback`,
`framework`, `gatekeeper`, `gateway` and `highlight` no longer name an attested
Old English compound.

## What is short

`sanctuary_meaning` tracks the `definition` far more closely than the voice
does. Character-level sequence similarity to each row's own `definition`:
voice.json's 61 rows at 100 run median 0.077, maximum 0.596, none at or above
0.80. Batch 5 runs median 0.703, maximum 0.893, with 52 rows at or above 0.80.
Siblings `batch-03.json` and `batch-06.json` run median 0.362 and 0.418,
maxima 0.753 and 0.762, with zero rows at or above 0.80. The fix round's own
journal states this and states its cause: its scope was the 21 rows at or above
0.90, and no row outside those 21 was touched. The highest remaining are
`genetic` 0.893, `guard` 0.891, `fragment` 0.891, `funky` 0.888, `fresh` 0.886,
`gate` 0.883, `frame` 0.882, `gap` 0.879, `frog` 0.877, `guardian` 0.875.

Six rows carry `root_language: "English"` over a `root_word` that names Old
English etymons: `fallback` (`feallan + baec`), `feedback` (`fedan + baec`),
`framework` (`framian + weorc`), `gatekeeper` (`geat + cepan`), `gateway`
(`geat + weg`), `highlight` (`heah + leoht`). Each `historical_meaning` names
the elements correctly as Old English; the language field and the root field
disagree. `feedback` additionally gives Old English forms for a compound its
own `historical_meaning` dates to twentieth-century engineering.

`hints` carries `root_word: "hinten"` under `root_language: "Middle English"`,
where the attested chain runs through Old English `hentan`; the
`historical_meaning` hedges with "probably related to hent".

## What was run

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-05.json

Answer: `190 182 8 0 0`.

Nothing in the work was changed by this hand.
