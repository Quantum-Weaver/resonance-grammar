# Etymology batch 2 of 13 — fix round 2 — 2026-09-11

## What is

`seeds/etymology/batch-02.json` still holds 190 rows, spanning `beautiful`
through `comfortable`. 184 stand at `completion_progress: 66`, 6 at `33`.
Named defects from a verifier that did not write the batch are now mended;
nothing else in the file changed.

**Systemic voice fault, 33 rows.** `sanctuary_meaning` on 33 named rows
(`body`, `bucket`, `build`, `builder`, `capacity`, `cat`, `catalog`,
`categorical`, `ceremony`, `chain`, `channel`, `chat`, `checklist`,
`children`, `chord`, `chroma`, `chronometer`, `circuit`, `classical`,
`classification`, `classifier`, `classify`, `claude`, `click`, `client`,
`code`, `codex`, `cognitive`, `collaborative`, `collapsed`, `collection`,
`colophon`, `column`) added two or fewer content words beyond their own
`definition` — three (`codex`, `cognitive`, `column`) added none at all.
All 33 are rewritten to say what the word does in this house rather than
restate the dictionary sentence, each now adding a minimum of 12 content
words beyond its `definition` (median 18), measured the same way the
finding measured the fault, against a stopword list built for the check.
`definition` on all 33 is unchanged.

**`blue` / `blueprint` / `bluesky`, root fault.** `blue`'s `root_word` /
`root_language` read `blaewen` / `Old English`, contradicted by its own
`historical_meaning`, which already said the word is Old French `bleu`,
of Frankish origin. `root_word` now `bleu`, `root_language` now `Old
French`; `historical_meaning` unchanged (it was already right).
`blueprint`'s `historical_meaning` carried the same `blaewen` / Old
English misattribution inside its own compound gloss — now reads
"blue (Old French bleu) + print (Old French preinte…)"; `root_word` now
`bleu + preinte`, `root_language` now `Old French`. `bluesky`'s
`historical_meaning` carried the same misattribution in prose only (its
`root_word`/`root_language` describe the coinage as a whole, not `blue`'s
root, and were not at fault) — now reads "blue (Old French bleu) and sky
(Old Norse sky, cloud)".

**`bp` / `cb` / `chars`, root fault.** All three stood at `66` with a
declared `root_word` and `root_language`, while each row's own
`historical_meaning` disclaimed exactly that — "the abbreviation carries
no history of its own beyond the word it stands in for" (`cb`), "no
history of its own beyond the word it abbreviates" (`chars`), a
file-naming note with no root or language named at all (`bp`). Neither
declared root nor declared language appeared anywhere in the prose for
any of the three. All three now carry `root_word: null`,
`root_language: null`, `historical_meaning: null`, `completion_progress:
33` — the same null pattern this batch already uses for `bevel`, `blur`,
`cn`. `sanctuary_meaning` on all three is unchanged; none of the three
was named in the systemic-voice list.

**`choice`, root label.** `root_language` read `Proto-Germanic` for
`root_word: kausjan`, while `historical_meaning` calls `kausjan` Gothic —
an attested form, not a reconstruction. `root_language` now `Gothic`;
`root_word` unchanged.

**`chord`, root label.** `root_word` read `accord` at `root_language:
Latin` — `accord` is the Old French/English form; `accordare` is the
Latin one. `root_word` now `accordare`; `root_language` unchanged.

**`case`, sentence count.** `historical_meaning` ran two sentences
against the one-sentence form; now one, joined on em dashes rather than a
full stop. Content (casus/capsa falling together) unchanged.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-02.json

Answer: `190 184 6 0 0` — 190 rows, 184 at 66, 6 at 33 (the original
`bevel`/`blur`/`cn` plus the newly dropped `bp`/`cb`/`chars`), 0 with
`sanctuary_meaning` missing, 0 at 66 without full roots. The file parses
as valid JSON, written with `json.dump(indent=1, ensure_ascii=False)`;
CRLF line endings (2481, matching the file's original count) and the
byte-identical header are preserved. A row-by-row diff against the file
as received confirms exactly 41 rows changed, in exactly the fields named
above — `etymology_id`, `atom_id`, `definition`, `category_name`, and
`atom_type` are untouched on every row.

## What is short

Nothing named in the defects is left open. The 33 rewritten
`sanctuary_meaning` rows are composed, not looked up — no database or web
read was made for this pass, per scope — so each rewrite draws out an
implication or a tension already present in the word's own `definition`
and `historical_meaning`, in the register `voice.json`'s own rows use for
words with no schema role of their own (`person`, `resonance`, `weaver`).
No base was read or written; only `seeds/etymology/batch-02.json` and this
journal were touched. No `--deliver`; nothing committed.
