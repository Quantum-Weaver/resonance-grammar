# Etymology batch 11 of 13 — fix round 2 — 2026-09-11

## What is

`seeds/etymology/batch-11.json` still holds 190 rows, 184 at
`completion_progress: 66`, 6 at `33` (`t`, `th`, `tik`, `tjd`, `tauri`,
`toclarity`, unchanged). Eleven named defects from a verifier that did not
write the batch are now mended, plus nine of the ten rows the systemic
finding named as the batch's worst definition-echoes (the tenth,
`theophany`, is covered by its own named fix below); nothing else in the
file changed.

**`strength`.** `historical_meaning` claimed "the same family gives valid,
value and valour, all of them meaning, at root, able to hold" — `valid` /
`value` / `valour` descend from Latin `valere` and are unrelated to Old
English `strang` / Proto-Germanic `*strangaz`. The false family claim is
removed; `historical_meaning` now runs `strengþu` → `strang` →
`*strangithō` → `*strangaz` (tight, drawn taut) and stops there.
`definition` (untouched, out of scope) still carries the same claim about
`valid`/`value`/`valour`; that is the atom's own ground, not this row's to
rewrite, and `sanctuary_meaning`'s vaguer echo of it ("its whole family of
kin words") is left as it stood, since the fault named was specifically
`historical_meaning` turning an inherited claim into a root claim.

**`style`.** `historical_meaning` said the spelling "picked up an h" under
the influence of Greek στῦλος — the letter Greek `stylos` contributes is
`y`, not `h` (English `style` has no `h`). Now reads "picked up a y".

**`tarocchi`.** `sanctuary_meaning` was the definition reworded, naming no
house use. `resonance-tarocchi`'s own README ("A personal tarot deck and
daily companion — the Quantum Weaver Tarot, 78 cards, local-first, no
accounts, no cloud") is now named first, in `voice.json`'s realm-word
register (`athena`: "The Library realm…"; `hearth`: "The regulation
realm…"), before the tarocchi/tarot-game root sense.

**`theophany`.** Same fault, and also on the systemic list. `voice.json`'s
realm register is applied the same way, naming `resonance-theophany`'s own
role ("a puppet whose parts answer the camera in real time — face, eyes,
mouth, hands, breath", per its README) before the Greek showing-of-a-god
sense.

**Systemic echo, nine more rows.** The finding named ten rows drawing
≥80% of their `sanctuary_meaning` words from `definition`
(`storyweaver` 0.96, `tester` 0.95, `tier` 0.95, `switch` 0.90,
`taxonomic` 0.89, `tarot` 0.88, `suffix` 0.88, `theophany` 0.87, `timer`
0.86, `thing` 0.86). `theophany` is mended above; the other nine
(`storyweaver`, `suffix`, `switch`, `tarot`, `taxonomic`, `tester`,
`thing`, `tier`, `timer`) are rewritten in different words, holding the
same sense but no longer opening on the definition's own first sentence.
None of these atoms carries a route, table, or config the way `athena` or
`vessel` do, so each is recast as a house-register statement of what the
word does rather than a schema fact, the same register `specific` /
`specification` / `specificity` already use at the top of this batch. The
broader finding — 83 of 190 rows opening on the definition's first
sentence — is not fully resolved; only the ten named as worst are.

**`standardizer` / `switchboard`.** `historical_meaning` carried document
artefacts — "standard (see below)" and "switch (see above)" — that mean
nothing inside a table row. Both now carry the actual gloss in place of
the cross-reference: `standardizer`'s names `standard`'s own root (Old
French `estandard`); `switchboard`'s names `switch`'s own root (Middle
Dutch/Low German `swijch`), matching what each word's own row already
says elsewhere in the batch.

**5 rows, `root_language`.** `sql`, `sr`, `ssr`, `supabase`, `svg` carried
`root_language: "Modern English (coinage)"` — a parenthetical gloss, not
the plain language name the sending asked for. All five now read
`"English"`; each is a genuine English-language initialism or coinage, so
`unknown` was not the honest answer and a compound was not needed.

**`sudoku`.** `root_word` held the whole Japanese sentence 数字は独身に限る
rather than the root form. Now `root_word: "数独"`; `historical_meaning`
still carries the full phrase, which is the right field for it.

**`spoke`.** `historical_meaning` ran two sentences; now one, joined on
em dashes rather than a full stop.

**`sweeping` / `target`.** `sanctuary_meaning` read as garbled English
("examined by none of it closely"; "in a way an unstated aim never could
be missed"). Both rewritten plainly, holding the same sense.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-11.json

Answer: `190 184 6 0 0` — 190 rows, 184 at 66, 6 at 33, 0 with
`sanctuary_meaning` missing, 0 at 66 without full roots. Unchanged from
the prior round's own run of the same check. The file parses as valid
JSON; the header's `·` (U+00B7) confirmed present in the file by decoding
the field, not by console display, after the console's own rendering of
it garbled on this machine. Header (`wave`, `born`, `source`, `rows: 190`,
`batch: 11`, `of: 13`) and every field but the ones named above are
unchanged.

## What is short

The eleven named defects are mended, plus nine of the ten systemic-list
rows; the broader 83-of-190 definition-echo is real and not fully
resolved, being far larger than the named worst-ten. `strength`'s
`sanctuary_meaning` still carries a vaguer echo of `definition`'s own
false family claim, left as the atom's own ground rather than this row's
to rewrite.

Only `seeds/etymology/batch-11.json` and this journal were touched. No
base was read or written; no `--deliver`; nothing committed.
