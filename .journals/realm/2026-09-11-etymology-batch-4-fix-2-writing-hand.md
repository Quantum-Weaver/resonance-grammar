# Etymology batch 4 of 13 — fix round 2 — 2026-09-11

## What is

`seeds/etymology/batch-04.json` still holds 190 rows, `detection` through
`extraction`, 189 at `completion_progress: 66` and 1 (`excal`) at `33`. A
verifier that did not write the batch named two defects; both are mended,
and nothing else in the file changed.

**Systemic voice fault, 72 named rows.** `sanctuary_meaning` tracked its own
`definition` at or above the voice's floor for the problem (0.75, the
verifier's own threshold; `voice.json`'s 61 finished rows carry a ceiling of
0.677 by the same measure) on 74 rows. Two of those 74 — `emergence` and
`extraction` — were named by the verifier as already carrying the house's
own meaning and in voice; both stand untouched. The remaining 72 are
rewritten to draw a turn — an implication, an irony, or a boundary — out of
the word's own root, most often the one already sitting in its own
`historical_meaning`, rather than reword the dictionary sentence: `effort`,
`exploitation`, `ensemble`, `equalizer`, `encoder`, `enhancement`,
`dropdown`, `engagement`, `entity`, `experience`, `extract`, `execution`,
`ensure`, `exists`, `expansion`, `entrance`, `enrich`, `era`, `extend`,
`dust`, `exit`, `dynamic`, `expresses`, `estimate`, `explorer`, `event`,
`evolution`, `exclusion`, `emotion`, `driven`, `exteriors`, `experiment`,
`evolutionary`, `entanglement`, `emergency`, `example`, `enforcement`,
`expectations`, `directory`, `edit`, `ellipsis`, `endpoint`, `essence`,
`escalation`, `escort`, `documentation`, `east`, `duplicate`, `expression`,
`distribution`, `energy`, `elevated`, `expertise`, `encryption`,
`environment`, `dimension`, `elemental`, `export`, `encouragement`,
`engine`, `emotional`, `duotone`, `extension`, `eternal`, `execute`, `exec`,
`element`, `enrichment`, `draft`, `evaluation`, `earned`, `dot`. `definition`
on all 72 is unchanged.

**Named polish defects, five rows.** `duty`'s `root_word` (`deuete`)
mis-transcribed its own `historical_meaning`'s attested Anglo-French
`duete`; `root_word` is now `duete`. `entanglement`'s `root_language`
(`Scandinavian`) named a language group, not a plain language; now
`Old Norse`, matching this file's own usage for `drift`'s Old Norse root
and the row's own hedge ("most often traced to a Scandinavian source").
`disability` and `disabled` both read `root_word: habilis`, dropping the
`dis-` both rows' own `historical_meaning` names as the operative element;
both are now `dis- + habilis`, matching this file's own convention for
compounds (`dropa + dun`, `duru + weg`). `explorer`'s `historical_meaning`
stated the `ex- + plorare` derivation as settled; it now reads "traditionally
parsed as… though that reading is the old grammarians' guess rather than a
secured derivation," matching this file's own hedges on comparably uncertain
roots (`dog`, `dispatch`, `europe`, `element`).

**Thinness against `historical_meaning`'s own sense-travel, twelve rows.**
`essence`, `estimate`, `eternal`, `effect`, `efficiency`, `emit`, `entrance`,
`exclude`, `exit`, `expanded`, `extend`, `extract` stopped at the root gloss
without the sense's own travel to the present word; each now carries one
added clause naming that travel. `explorer`'s hedge above is counted with
the polish fixes, not here, since its change is a hedge, not added
sense-travel.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-04.json

Answer: `190 189 1 0 0` — unchanged from the writing hand's first report.
`sanctuary_meaning`-to-`definition` sequence similarity, lowercase, whole
strings (the verifier's own measure): median 0.486, mean 0.406, maximum
0.879 across all 190 rows, 2 rows above 0.75 (`emergence` 0.879, `extraction`
0.826 — both named by the verifier as already in voice and left untouched)
— against median 0.706 and 74 rows above 0.75 measured before this pass.
None of the 72 rewritten sentences carries a second person, a named person,
a date, or a backtick; each runs one or two sentences. The file still parses
as valid JSON, still round-trips exactly to `json.dump(indent=1,
ensure_ascii=False)`, still carries 2481 CRLF line endings and zero bare
`\n`, and the header (`wave`, `born`, `source`, `rows: 190`, `batch: 4`,
`of: 13`) is unchanged. `etymology_id`, `atom_id`, `atom_word`, `definition`,
`category_name`, `atom_type`, and `completion_progress` are unchanged on
every row.

## What is short

`emergence` and `extraction` still sit above the verifier's own 0.75 line
(0.879 and 0.826) — left there on the verifier's explicit word that they
already carry the house's meaning, not on this hand's independent judgment
of the two rows; a later reader may disagree. Nothing else named in the
defects is left open. Only `seeds/etymology/batch-04.json` and this journal
were touched. No base was read or written; no `--deliver`; nothing
committed.
