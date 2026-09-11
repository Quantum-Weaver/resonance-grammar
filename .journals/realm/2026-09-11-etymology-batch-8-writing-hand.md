# Etymology batch 8 of 13 — 2026-09-11

## What is

`seeds/etymology/batch-08.json` holds 190 rows. All 190 now carry a
`sanctuary_meaning`. 188 of the 190 also carry `root_word`, `root_language`,
and `historical_meaning`, and stand at `completion_progress: 66` — roots
composed from common knowledge, not verified against a source. 2 rows stand
at `completion_progress: 33`, their three root fields left `null` because no
honest root was known: `okaidia` (a Prism syntax-highlighting theme name with
no traceable history) and `ollama` (a named runtime with no confidently known
naming rationale). Header (`wave`, `born`, `source`, `rows: 190`, `batch: 8`,
`of: 13`) and every other field — `etymology_id`, `atom_id`, `atom_word`,
`definition`, `category_name`, `atom_type` — are unchanged; confirmed by
checking that every row still carries exactly its original eleven keys, on
all 190 rows.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-08.json

Answer: `190 188 2 0 0` — 190 rows, 188 at 66, 2 at 33, 0 with
sanctuary_meaning missing, 0 at 66 without full roots. The file parses as
valid JSON, written with `json.dump(indent=1, ensure_ascii=False)`; raw
bytes checked directly for the header's middle dot, an em dash, and the
Devanagari in `pandulipi`/`panti`, all correctly UTF-8, since the terminal
used to inspect the file could not render them itself.

## What is short

`voice.json`'s 61 rows were read whole before this batch was touched, for
the register `sanctuary_meaning` is written in. Every root here is
composed, not verified — the 66 says so on its face, per
`docs/sql/040-the-etymology-ledger.sql`. Two rows, `pandulipi` and `panti`,
already carried their Sanskrit roots inside their own `definition`
(पाण्डुलिपि, pāṇḍulipi; पङ्क्ति, paṅkti); those were composed from that
ground rather than guessed fresh. `pojoaque` carries a Tewa place-name root
(the New Mexico pueblo the theme is named for) rather than a European one,
composed from what is known of that name's history. A handful of ordinary
but etymologically disputed English words — `padding`, `patch`, `peak`,
`pick`, `picker`, `pop`, `popup` — still carry a root and stand at 66, since
an attested form with an honestly uncertain deeper history is not the same
as no root at all; the uncertainty is stated plainly inside the
`historical_meaning` sentence itself. Only `okaidia` and `ollama` stayed
honestly empty. No base was read or written; only this one file, by hand,
per scope.
