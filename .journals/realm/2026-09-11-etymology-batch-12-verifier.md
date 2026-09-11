# Etymology batch 12 of 13 — verifier — 2026-09-11

## What is

`seeds/etymology/batch-12.json` parses as valid JSON, 190 rows, `today` through
`workflow`. The five-number check returns `190 185 5 0 0`, matching the writing
hand's report. No row stands above 66; the only values present are 33 and 66.
The header (`wave`, `born`, `source`, `rows: 190`, `batch: 12`, `of: 13`) is
identical to the committed one. Across all 190 rows `etymology_id`, `atom_id`,
`atom_word`, `definition`, `category_name` and `atom_type` differ from the
committed file in zero places, and row order is unchanged. The field set —
eleven keys — matches sibling `batch-11.json` and `voice.json`. The file
round-trips exactly to `json.dump(indent=1, ensure_ascii=False)` once CRLF is
normalised; CRLF and no trailing newline are what every sibling seed carries.
`git diff --numstat` reads `936 936` — value replacement only. Nothing is
committed.

The five rows at 33 are `tok`, `v`, `venmo`, `vercel`, `vsc`; all three root
fields are `null` on each. No `sanctuary_meaning` is null, exceeds two
sentences, carries a backtick, a second person, a named person, or a date. Every
`historical_meaning` is one sentence. None is character-identical to its
definition. The two house words in range, `vessel` (line 1678) and `void` (line
1886), both name the house role first — the Hearth realm's route group at
/vessel, and the sandbox realm and its purge — before the plain sense, which is
`voice.json`'s register for realm words. `vessel`'s claim that the atom is filed
under its own name holds: `category_name` is `"vessel"`.

The 185 roots are plausible common knowledge. `width` (line 2354) now reads
`wide + -th`, a 17th-century formation on the model of `breadth`, with `widnes`
named as the Old English form — no invented ancestor. `upon` (line 1197) reads
`up + on`, and `unavailable` (line 950) routes through `avail` / `valoir` to
Latin `valere`. `toggle` (line 27) and `widget` (line 2341) disclose uncertainty
inside the sentence rather than inventing a pedigree.

## What is short

`sanctuary_meaning` tracks the `definition` more closely than the voice does.
Measured as sequence similarity against each row's own `definition`:
`voice.json`'s 61 rows at 100 run median 0.263, maximum 0.785. Batch 12 runs
median 0.735, with 58 rows at or above the voice's maximum, 29 at or above 0.85,
13 at or above 0.90. `webhook` (line 2146) reads 0.959, `width` (line 2354)
0.954, `web` (line 2133) 0.948, `usage` (line 1275) 0.930, `user` (line 1301)
0.929. Siblings run lower: `batch-09` 0 rows at 0.90, `batch-11` 9.

The `wid`/`wið` collision is half-mended. `with` (line 2406) now carries `wið`,
but `without` (line 2419) still reads `root_word: "widutan"` and glosses
`wid (with, against)` — the same ASCII `wid` as `wide` (line 2315), for the same
Old English `wið` the neighbouring row spells with the eth.

`tracker` (line 274) labels the compound `trac + -er` as `Old French` alone,
where `tokenizer` labels its compound `Old English + Greek`. `tooltip` (line 170)
labels `Scandinavian`, a family rather than a language, where the batch uses
`Old Norse` elsewhere. `wav` (line 2055) is labelled an initialism; W-A-V is a
clipping of WAVE, not the initials of the expansion. `toggle` (line 27) and
`widget` (line 2341) stand at 66 with `root_language: "unknown"` and the atom's
own word as `root_word` — `voice.json`'s `ziggy` does the same at 100, so the
counting rule for a disclosed-uncertain self-root is a standing question, not a
fault of this batch. `unit` (line 1080) glosses the formation as Medieval Latin
where the English word is a 16th-century shortening of `unity`; `twilight`
(line 794) presents an Old English compound where the elements are Old English
and the compound is Middle English.

The round-1 baseline of this file is uncommitted, so the fix round's per-field
before/after claims cannot be checked against a prior state. The end state
matches every result those claims describe.

## What was run

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-12.json

Answer: `190 185 5 0 0`.

Nothing in the work was changed by this hand.
