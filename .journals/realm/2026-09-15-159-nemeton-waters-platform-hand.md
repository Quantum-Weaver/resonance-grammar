# 159, the nemeton waters seeded — 2026-09-15 platform-hand

*Nothing committed. One paper added, this entry beside it. No base was written;
`--deliver` was never passed.*

## What the work did

`docs/sql/159-the-nemeton-waters-seeded.sql` — written new. One `insert into
public.awen` of nine rows at status `imagined`, each riding an atom by
subquery with `molecule_id` and `organism_id` null, plus three read-only verify
selects. Source: `resonance-nemeton/docs/THE-NEMETON-WATERS.md`, rows W1 to W9,
read whole with its Walls and order sections.

| slug | atom | tool_type | face |
|---|---|---|---|
| the-grove | grove (born in 153) | arrange | 🌲 |
| the-merge | merge | combine | 🔀 |
| the-presence | presence | witness | 🏕️ |
| the-reach | reach | arrange | 📶 |
| the-pairing | pairing | witness | 🤝 |
| the-signaling | signaling (born in 153) | arrange | 🛜 |
| the-routing | routing (born in 153) | arrange | 🕸️ |
| the-relay | relay | emit | 📮 |
| the-channel | channel | transform | 🛖 |

## What was checked

`python ../resonance-nectere/chains/the-seed-chain/seed_chain.py run
docs/sql/159-the-nemeton-waters-seeded.sql --base knowledge` — dry, 30
statements by the chain's semicolon count; 4 statements when semicolons inside
string literals are discounted.

By reading, against the seeding ground: all nine slugs absent from the 105 worn
slugs; every atom word either in the standing list or in 153's twelve; all nine
faces drawn from the 159 pool, each appearing once, none in the worn-face list;
`status` `imagined`, `home` `resonance-awen/tools/<slug>`, `folksonomy_type`
`Awen` on every row; every apostrophe inside every string doubled, proven by a
quote-aware scan that found no unterminated literal; no file address inside any
definition; definitions 81 to 104 words. Every double-quoted span in the paper
was matched character for character against the source document.

## What did not fit a row

The document's fourteen standing waters, its "deliberately not a water" list
(the socket, the radio, the SQLite file, the clock, the source of randomness
and the rest), and its seven-step order carry no awen rows; the order's step
numbers are carried in the stories instead. Plan row 0.20 wants no water — the
ruling names the founding body as the stack. Step 1, the body founded as a
child build with the founding tree restored and `npm run check` and
`cargo check` green, is a build act. W9 is seeded `imagined` with the
document's wall carried verbatim in its story: the ruling is KP's and comes
first.
