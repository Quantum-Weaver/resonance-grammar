# Etymology batch 7 of 13 — fix round 2 — 2026-09-11

## What is

`seeds/etymology/batch-07.json` still holds 190 rows, 186 at
`completion_progress: 66`, 4 at `33` (`lrc`, `maxidx`, `nidx`, `nership`,
unchanged). Four named defects from a verifier that did not write the
batch are now mended; two named "polish" defects on the root fields are
left untouched, on the sending's own word that "the roots... can all
stand as they are"; nothing else in the file changed.

**`sanctuary_meaning`, 169 rows.** 128 rows carried `sanctuary_meaning`
character-for-character identical to `definition`; 41 more were
`difflib.SequenceMatcher` similar at 0.75 or above. All 169 — named by
word, not by count, since the finding gave representative addresses
rather than an exhaustive list, and the two thresholds it named
(exact and ≥0.75) were run directly against the file to recover the
full set — now carry a `sanctuary_meaning` distinct from `definition`,
in the register `voice.json`'s 61 finished rows set: house meaning
first, condensed rather than copied, one or two sentences, present
tense, no second person. `molecules`, `mnemosynes`, and `mimirs`
(named house-adjacent rows) are among the 169 and are rewritten the
same way. `nectere`, `nemeton`, `lok`, `mynd`, `nomos`, `martyria`,
`merismos` — named as already correct — were left untouched.

**Second person.** `login`, `nav`, `navigation` carried `you`/`your`,
inherited verbatim from `definition`'s own second person. Their new
`sanctuary_meaning` (part of the 169 above) reads in the third person;
`definition` itself is unchanged, since only `sanctuary_meaning` was in
scope.

**`nord`, `historical_meaning`.** "since Latin itself had no native term
for the direction" is overreach — Latin had `septentrio`, `aquilo`,
`boreas`. Now reads "...took this Germanic word for the direction from
seafaring contact, standing alongside rather than replacing Latin's own
septentrio, aquilo and boreas." The root itself (`nordr`, Old Norse)
stands; `root_word` and `root_language` are unchanged.

**`may`, `historical_meaning`.** Ran to two sentences (the modal, then
the month); now one, holding both facts: "Old English magan (to be
able, to have power, to be strong enough), the modal verb narrowing
over time from raw ability to permission specifically, while the month
is a separate, unrelated borrowing from Latin Maius, named for the
goddess Maia."

**Left as sent.** The compound-root labelling (`nd`, `metadata`,
`neuromap`, `neurospark`, `mb`, `memberships`, `milestone`,
`misclassifications`, `nongit` naming only one of two languages) and
`ner`'s acronym-expansion root standing at 66 beside three sibling
mis-cut fragments left at 33 — both flagged "polish" — are untouched.
The sending's own reading of the round-1 return names both as
defensible and says the roots can stand as they are; nothing in either
touches a row's `completion_progress`, and no root_word or root_language
was changed for these nine rows.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-07.json

Answer: `190 186 4 0 0` — unchanged from the prior round's own run of
the same check. A separate pass computed `definition == sanctuary_meaning`
and `SequenceMatcher` ratio for every row: both counts are now 0 across
all 190 rows, down from 128 and 41. A case-insensitive scan of every
`sanctuary_meaning` for `you`/`your`/`yours`/`yourself` returns zero
hits. `historical_meaning` for `nord` and `may` was checked by hand
against the defect text. The file parses as valid JSON; every changed
line was diffed against the pre-fix copy and confirmed to be exactly a
`sanctuary_meaning` line (338 of them, 169 removed and 169 added) plus
the two `historical_meaning` lines edited directly — nothing else moved.
Line endings (`\r\n` throughout, no trailing newline) and header
(`wave`, `born`, `source`, `rows: 190`, `batch: 7`, `of: 13`) are
byte-identical to before this round.

## What is short

Nothing named in the four "short" defects remains open. The two
"polish" defects stand as the sending itself said they could.

Only `seeds/etymology/batch-07.json` and this journal were touched. No
base was read or written; no `--deliver`; nothing committed.
