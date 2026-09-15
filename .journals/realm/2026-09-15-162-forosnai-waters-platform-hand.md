# 162 — the forosnaí waters seeded

## Written

`docs/sql/162-the-forosnai-waters-seeded.sql` — one insert of nine
`public.awen` rows at status `imagined`, from the nine rows of the table under
"What still needs imagining" in `resonance-forosnai/docs/THE-FOROSNAI-PLAN.md`,
plus five read-only verify selects.

| slug | atom | tool_type | face |
|---|---|---|---|
| the-effect | effect | transform | 🗒️ |
| the-graph | graph | arrange | 🔢 |
| the-dynamics | dynamic | transform | 🎢 |
| the-transition | transition | combine | 🔦 |
| the-screen | screen | transform | 🪟 |
| the-particles | particle | arrange | 🫧 |
| the-glyphs | glyph | arrange | 🪪 |
| the-resonance | resonance | capture | 👀 |
| the-wear | wear | witness | 🔋 |

Each row carries `atom_id` by subquery, `molecule_id` and `organism_id` null,
`home` `resonance-awen/tools/<slug>`, `folksonomy_type` `Awen`, `created_by`
`a platform hand, at KP's ⚛ word`. Three names are plural and ride the singular
root — `dynamic`, `particle` and `glyph` each already carry `"s"` in modifiers,
so no atom row and no modifier append was written. No atoms paper stands before
this one.

## Checked

- `python ../resonance-nectere/chains/the-seed-chain/seed_chain.py run docs/sql/162-the-forosnai-waters-seeded.sql --base knowledge` — `statements: 55 · DRY RUN`. Six of the 55 are statement terminators; 49 are semicolons inside string literals. Nothing was delivered.
- Parsed with a quote-aware walk: 99 string literals in the insert, eleven per row, no unterminated literal, so every apostrophe inside a string is doubled; nine row tuples of thirteen values each, `molecule_id` and `organism_id` null in all nine.
- Definitions 126, 120, 100, 103, 102, 95, 88, 98 and 83 words, present tense, no file address inside any of them.
- The nine slugs are absent from the 105 the spring wears and from the 50 seeded today in 154 to 160. The nine atom words match the ground's table. The nine faces are from 162's pool, each worn once, none in the worn-face list; 25 faces left in the pool.
- `status` `imagined` on all nine; no `update`, no crossing, no delete; the five statements after the insert are selects.
- Each story carries the plan's fifth column with flowing and imagined as the plan marks them, the consumers of Part Two and Part Three, the mark and the step from "The order and the marks", and KP's naming line verbatim — including `"6- the-paritles"`, KP's own spelling, beside the name `the-particles`.

## Not fitted to a row

- The plan's "What is shared" names eight things whose home is the spring and
  which have no name yet: the live Web Audio graph, the draw of a plan onto a
  canvas or WebGL, the camera's capture, the microphone's capture, the file
  dialog, the sign-in and the HTTP of the carry and the offer, the plugin host
  of 5.9. Each is born the day a second studio needs it; none is among the nine.
- Part Two's rooms and Part Three's four first effects: the app's body and four
  documents at KP's word, not waters. Steps 7, 8 and 10 of the order table
  therefore carry no row here.
- Gaps 1, 2, 3, 6, 10 and 11 of the research's fifteen are answered by the
  house's road — no account, no rent, no review, the maker's own machine — and
  not by a water; they are named in no story.
- 0.21's ruling and 5.9's plugin road are rulings and build choices, not data.
- The shader compiled from the-screen's description is the-screen's own to emit;
  it takes no second row.
- The features plan's ladder does not yet hold this realm, so no story names a
  features-plan row; the marks and steps are the plan's own order table.
- The twenty-odd imagined waters this studio leans on stand already from 154 to
  160 and are named in the stories only.
