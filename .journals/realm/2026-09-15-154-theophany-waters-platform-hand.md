# 154 — the theophany waters seeded — 2026-09-15 platform-hand

*Nothing committed. Nothing delivered. One paper added, this entry beside it.*

## What the work did

`docs/sql/154-the-theophany-waters-seeded.sql` — written new. One insert of six
rows into `public.awen` at status `imagined`, and five read-only verify selects.
No existing paper was touched and no base was written.

| slug | atom | tool_type | face |
|---|---|---|---|
| the-rig | rig (stands) | transform | 🎪 |
| the-retarget | retarget (born in 153) | translate | 🪄 |
| the-settle | settle (stands) | transform | 🧘 |
| the-visemes | viseme (born in 153, with `"s"`) | translate | 👄 |
| the-performance | performance (stands) | arrange | 🩰 |
| the-idle | idle (born in 153) | translate | 🫀 |

Every row carries `atom_id` by subquery and leaves `molecule_id` and
`organism_id` null. `home` is `resonance-awen/tools/<slug>`, `folksonomy_type`
is `Awen`, `created_by` is one string across the six.

## What was read

`resonance-theophany/docs/THE-THEOPHANY-PLAN.md` whole — Part One's table rows
W1 to W6 are the source of the definitions, the marks and the consumers.
Precedents: `docs/sql/151-the-patakatha-atom.sql`,
`docs/sql/152-the-patakatha-seeded.sql`, `docs/sql/055-the-twenty-waters.sql`.
This realm's `README.md` and `docs/STORY-BLOCK.md`, and
`.journals/realm/2026-09-14-the-waters-discovered-platform-hand.md`.
`resonance-nectere/chains/the-seed-chain/seed_chain.py`.

## What was verified

    python ../resonance-nectere/chains/the-seed-chain/seed_chain.py run \
      docs/sql/154-the-theophany-waters-seeded.sql --base knowledge
    base: knowledge · project ref: qdzerwmsbksuhvczlwli
    files: 154-the-theophany-waters-seeded.sql
    statements: 25 · DRY RUN

The chain's counter splits on every semicolon, including those inside string
literals; a quote-aware split of the same file gives the true shape, one insert
and five selects. By reading, with the file parsed: no unterminated string, 96
literals recovered, 17 of them carrying a doubled apostrophe; none of the six
slugs is among the 105 the spring wears; `rig`, `settle` and `performance` are
in the standing atom list and `retarget`, `viseme` and `idle` among 153's
twelve; all six faces are in the paper's own pool, each worn once here, none
among the faces the standing rows wear, each a single codepoint with no skin
tone, ZWJ, flag or alarm mark; `imagined` appears six times and no other status;
definitions run 108 to 166 words.

## What is short

153-the-imagined-waters-atoms.sql does not exist yet, so `retarget`, `viseme`
and `idle` have no atom rows: three of these six rows are refused until it
runs. The live base was not read — the standing atoms, the worn slugs and the
worn faces were taken from the 2026-09-15 census in the sending, so the paper
carries its own read-only checks for a second wearer and for the atoms.

Two things in the source document fit no row: the puppet document, which is
W1's input and a thing a person makes rather than a water (its shape is carried
inside the-rig's definition); and the camera, the landmark model, the adapter,
the analyser, the canvas, the window and the recorder, which the document names
as deliberately not waters.

## The repair, 2026-09-15

Cut from four definitions the claims that were not in the water's own row of
Part One's table: the camera clause from the-retarget, the phoneme wall and the
fallback reason from the-visemes, the no-number-of-motion law and the stage
replay from the-performance, the no-clock clause from the-idle; the-visemes and
the-performance were mended back over 80 words with their own rows' in and out.
Moved the-metronome out of the-rig's consumers into the document's own sentence
that the consumer converts milliseconds with it, dropped the-settle's ordering
against the retarget which no line of the document gives, and cut the-kinema,
the-envelope and the-signet from the last verify select, the document naming
them for Part Two's take and not for these six.
