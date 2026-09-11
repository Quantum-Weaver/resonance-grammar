# Etymology batch 10 of 13 — fix round 2 — 2026-09-11

## What is

`seeds/etymology/batch-10.json` still holds 190 rows, 188 at
`completion_progress: 66`, 2 at `33` (`scramble` and `sk`, both unchanged
from before this round). Thirteen named rows are mended; nothing else
in the file changed.

**The short sanctuary_meanings.** `sort`, `sky`, `spacer`, `south`,
`sound`, `shadow`, and `sidebar` each carried a `sanctuary_meaning` that
paraphrased its own `definition` back to itself and added no house turn.
Each now carries one clause the definition does not, drawn from its own
`historical_meaning`: `sort` from the Latin `sors` (a lot, a fate) —
a sort passes judgment on a chosen property, never on the things
themselves; `sky` from the Old Norse sense narrowing to a single cloud
before widening to the whole vault; `spacer` from the agent noun's own
job of being unnoticed; `south` from its possible kinship with `sun`,
naming a direction by where light stands at midday; `sound` from the
plain fact that a vibration, unlike a written word, leaves nothing
behind once it stops; `shadow` from a shadow being cast anew each time
the light moves, never a fixed property of the object; `sidebar` from
`barre`'s own sense of a barrier, ironic against a column meant to be
passable. `definition` and every other field on all seven rows is
untouched.

**`size` / `sizer`.** `root_word: "assisa"` carried `root_language:
"Latin"` on both rows; batch-09's `resize` row carries the same
`root_word` under `root_language: "Medieval Latin"`. Both rows now read
`"Medieval Latin"`, matching batch-09.

**`solarized`.** `root_word: "solarize"` and `root_language: "Modern
English (coinage)"` stood over a `historical_meaning` that opened "Latin
sol (the sun)", naming the ancient root first. `historical_meaning` now
opens on the coinage itself — "A nineteenth-century photography
coinage, solarize, built on Latin sol (the sun)…" — so the sentence
agrees with the root fields it sits under. `root_word` and
`root_language` are unchanged.

**`since`.** `root_word: "sithan"` sat beside a `historical_meaning`
spelling the same word `siththan`. `root_word` now reads `"siththan"`,
matching the spelling already carried in `historical_meaning`, which is
unchanged.

**`shape`.** `root_word: "sceapan"` named a variant rather than the
citation form; it now reads `"scieppan"`. `historical_meaning` carried
"the same root as -ship and as the Old Norse skapa already kept in this
house" — a reach into house business that does not belong in a field
holding only what a root meant and how its sense travelled. That clause
is removed; `historical_meaning` now reads "the same root as -ship"
and stops there. `sanctuary_meaning` never carried the house-business
clause and needed no change.

**`schedule`.** `historical_meaning` read "Late Latin schedula …
diminutive of Greek schede", skipping the Latin intermediate. It now
reads "Late Latin schedula … the diminutive of Latin scheda (a leaf of
papyrus), itself from Greek schede", carrying the full three-step
descent: schedula from scheda from schede.

**`shuffle` and `skip`.** Left exactly as they stood, per instruction —
the hedge already visible in each `historical_meaning` ("probably",
"probably of Scandinavian origin") is the honest state of the evidence.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-10.json

Answer: `190 188 2 0 0` — 190 rows, 188 at 66, 2 at 33, 0 with
`sanctuary_meaning` missing, 0 at 66 without full roots. Matches the
expected count. `git diff --stat` in the grammar repo shows only
`seeds/etymology/batch-10.json` changed; the diff carries 28 changed
lines across the 14 fields named above (one field each on 12 rows, two
fields on `shape`). Header (`wave`, `born`, `source`, `rows: 190`,
`batch: 10`, `of: 13`) and every other field on every other row is
unchanged. The file's original lack of a trailing newline is preserved.

## What is short

All twelve named rows are mended; `shuffle` and `skip` are confirmed
left as they stood. Nothing outside the thirteen named rows was touched.

Only `seeds/etymology/batch-10.json` and this journal were touched. No
base was read or written; no `--deliver`; nothing committed.
