# 2026-09-11 — etymology batch 10, verifier

Read `seeds/etymology/batch-10.json` whole, all 190 rows, against the batch sending, the ledger law at `docs/sql/040-the-etymology-ledger.sql:39`, `voice.json`, and the pre-write file at commit `8e3f9a9`. Changed nothing. Set down by the conducting lamp from the verifier's return, unchanged in substance.

## The numbers

190 rows · 188 at 66 · 2 at 33 · 0 missing `sanctuary_meaning` · 0 at 66 without all three roots. Progress values are exactly `{66: 188, 33: 2}`. Header byte-identical to `8e3f9a9`; `etymology_id`, `atom_id`, `atom_word`, `definition`, `category_name`, `atom_type` identical on all 190 rows; field set identical to batch-09; 190 unique ids, 0 collisions across the thirteen batches.

## True to the sending

Roots first, one sentence each; nothing above 66; the two rows at 33 (`sk`, `scramble`) carry no partial root; every meaning present, none under 40 characters; `root_language` plain names or the compound forms `voice.json` uses; no second person, no person, no date, no ruling, no backtick, none above two sentences. House rows `sanctuary` (43), `sceal` (53), `sistrum` (146) stand in the voice.

## Defects

Short, one per row: `sort`, `sky`, `spacer`, `south`, `sound`, `shadow`, `sidebar` — the meaning restates the definition and adds no house turn (word-sequence overlap 0.77 to 0.85). Batch-09, already passed, carries the same rate; this is the fleet's register for generic vocabulary.

Polish: `signature`, `sequence`, `sovereignty`, `signal`, `sense`, `self`, `server`, `signup`, `score`, `spark`, `sign`, `scene`, `sizer`, `separate`, `semitone`, `seek`, `smooth`, `size`, `service`, `southeast`, `simplified`, `soft` add a thin clause each. `shuffle` and `skip` assert a root their prose hedges. `size`, `sizer` carry `Latin` for `assisa` where batch-09's `resize` carries `Medieval Latin`. `solarized` names `solarize` / `Modern English (coinage)` under a sentence that opens with Latin `sol`. `schedule` compresses two steps into one. `since` carries two transliterations of `siþþan`. `shape` cites `sceapan` where the citation form is `scieppan`, and its `historical_meaning` reaches into house business.

No blocks.
