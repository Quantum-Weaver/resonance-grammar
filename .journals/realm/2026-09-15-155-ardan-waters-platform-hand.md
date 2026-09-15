# 155, the ardan waters seeded — 2026-09-15 platform-hand

*Nothing committed. One file added beside this one.*

## What the work did

`docs/sql/155-the-ardan-waters-seeded.sql` — written new. One insert of four
rows into `public.awen` at status `imagined`, and five read-only verify
selects. No existing paper touched, no base written to, `--deliver` never
passed.

| slug | atom | tool_type | face |
|---|---|---|---|
| the-parts | part (stands, content, modifiers ["s"]) | transform | 🧱 |
| the-reel | reel (born in 153) | arrange | 🎡 |
| the-stack | stack (stands, collections) | arrange | 🗂️ |
| the-grade | grade (born in 153) | transform | 🖌️ |

Source: `resonance-ardan/docs/THE-ARDAN-WATERS.md`, rows W3, W4, W5, W6, read
whole. Each definition carries that row's what-it-does, in and out. Each story
carries that row's what-stands-already with the document's own addresses, its
consumers, its mark and its step in the document's order.

## What was checked

`python ../resonance-nectere/chains/the-seed-chain/seed_chain.py run
docs/sql/155-the-ardan-waters-seeded.sql --base knowledge` — dry, `statements:
6`, nothing sent.

By reading, mechanically: the four slugs are absent from the 105 the spring
wears; `part` and `stack` stand and `reel` and `grade` are born in 153; the
four faces are the 155 pool's own codepoints, each appears once, none is worn
by a standing row; `status` is `imagined` four times; every apostrophe inside
every string is doubled, with 69 literals parsed and the quoting balanced; no
literal carries a semicolon, so the statement count is exact; one tier per row
(`atom_id` set, `molecule_id` and `organism_id` null); no `update` and no
`delete`. Definitions run 123 to 144 words. Both KP quotes carried verbatim
were diffed against the source document.

## What did not fit a row

Ardan's W1, W2 and W7 are sceal's W1, W2 and W9 and are seeded in 156. W8 is
an addition to `the-metronome`, not a water. The document's sixteen standing
waters, its three named-and-not-carried waters, its "deliberately not a water"
list, its walls and its provenance are the document's own and seed nothing.
The mark for W6 is the document's `small, after W5`, which is carried in the
story rather than reduced to one word.
