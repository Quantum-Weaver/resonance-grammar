# Etymology batch 12 of 13 — fix round 2 — 2026-09-11

## What is

`seeds/etymology/batch-12.json` still holds 190 rows, 185 at
`completion_progress: 66`, 5 at `33` (`tok`, `v`, `venmo`, `vercel`, `vsc`,
unchanged). Eight named defects from a verifier that did not write the
batch are now mended; nothing else in the file changed.

**`width`.** `root_word: "widu"` named an Old English word that does not
exist — there is no Old English ancestor of `width`; Old English used
`widnes`. `root_word` now reads `"wide + -th"`, `root_language` `"Old
English + Modern English"`, and `historical_meaning` states the true
history: a 17th-century English formation on `wide`, on the model of
`breadth`. `completion_progress` stays `66` — an honest, composed root,
not a guess dressed as one.

**`vessel`.** `sanctuary_meaning` was a near-restatement of `definition`
and named no house role, though `voice.json`'s `hestia` row names `vessel`
as the Hearth realm's own route group, and the atom's own
`category_name` is `"vessel"`. `sanctuary_meaning` now opens on that role
before returning to the cup-and-ship-and-body sense the definition
carries.

**`void`.** Same fault: `sanctuary_meaning` restated `definition` with no
house role, though `void` names a realm of this house. `voice.json`'s
register for realm words states the realm first (`echo`: "The journal
realm…", `skapa`: "The board realm…"); `void`'s `sanctuary_meaning` now
does the same, naming the sandbox realm's own purge before the
empty/null sense.

**`wav`.** `root_language: "Old English (initialism)"` named only one of
the three languages the expansion draws on. Now `"Old English + Latin +
French (initialism)"`, matching the batch's own compound-initialism
siblings (`ui`: `"Latin (initialism)"`; `utc`: `"Modern English + French
(compromise initialism)"`). `historical_meaning` now names `wave`,
`audio`, and `format` each against their own root language.

**`toml`.** `root_language: "Modern English (backronym)"` misnamed the
coining: TOML was built as an acronym of *Tom's Obvious, Minimal
Language* from the start, never fitted to an existing word afterward.
Now `"Modern English (acronym)"`. `historical_meaning` was already right
and is untouched.

**`upon`.** `root_word: "uppon"` / `"Old English"` named an unattested
Old English form. Now `root_word: "up + on"`, `root_language: "Old
English + Old Norse"`, `historical_meaning` stating the actual account:
a Middle English fusion of the two Old English words, reinforced by Old
Norse `upp á`.

**`unavailable`.** `historical_meaning` routed `available` through Old
French `vaillant`; `available` is formed on `avail`, from Old French
`valoir`. `historical_meaning` now reads through `avail` / `valoir` to
Latin `valere`, which was already the right head of the chain and is
unchanged.

**The `wid`/`wið` collision.** `wide` and `with` shared the ASCII-
transliterated `root_word: "wid"`, though they descend from two
unrelated Old English words (`wid`, `wið`). `with`'s `root_word` and
`historical_meaning` now carry the real character, `wið`, distinguishing
it from `wide`'s `wid`. The file is `ensure_ascii=false` and already
carries non-ASCII punctuation (`·`, `—`), so the character was available.
The wider claim in the same finding — that Old English and Latin forms
are ASCII-transliterated throughout the batch, unlike `voice.json` — is
true of many more rows than this one collision (`traeppe`, `daege`,
`hwaet`, `waescan`, `triewth`, `waeter` among them) and restyling all of
them is a larger undertaking than this round's named mends; only the
named collision is fixed here.

**`toggle` / `widget`.** Named as a tension, not a directed fix: both
carry a self-referential `root_word` (the atom's own word) at `66`,
disclosing "of uncertain origin" / "of unknown origin" in
`historical_meaning` rather than inventing an ancestor. The finding notes
`voice.json`'s `ziggy` row does the same at `100`. Left unchanged: unlike
`width`'s invented `widu`, these rows disclose the uncertainty plainly
and carry real partial knowledge (a first-attestation date, a named
competing hypothesis) rather than a fabricated root, so "never a guess
dressed as a root" holds on them as written. Whether the counting rule
should read a disclosed-uncertain self-root as `33` regardless is a
question for the hand that takes the 66-to-100 pass.

## What was verified

    python -c "import json,sys; d=json.load(open(sys.argv[1],encoding='utf-8')); rows=d['rows']; print(len(rows), sum(1 for r in rows if r['completion_progress']==66), sum(1 for r in rows if r['completion_progress']==33), sum(1 for r in rows if not r['sanctuary_meaning']), sum(1 for r in rows if r['completion_progress']==66 and not (r['root_word'] and r['root_language'] and r['historical_meaning'])))" G:/materia/resonance-grammar/seeds/etymology/batch-12.json

Answer: `190 185 5 0 0` — 190 rows, 185 at 66, 5 at 33, 0 with
`sanctuary_meaning` missing, 0 at 66 without full roots. Unchanged from
the prior round's own run of the same check. The file parses as valid
JSON, `wið`'s eth confirmed by codepoint (`0xf0`, U+00F0) rather than by
console display. Header (`wave`, `born`, `source`, `rows: 190`, `batch:
12`, `of: 13`) and every field but the ones named above are unchanged.

## What is short

The eight named defects are mended; the `toggle`/`widget` tension is
weighed and left, for the reasons stated. The ASCII-transliteration
question beyond the `wide`/`with` collision is real and untouched — a
project-wide diacritic restoration across this batch's Old English and
Latin forms was not attempted here, being far larger than the named
scope.

Only `seeds/etymology/batch-12.json` and this journal were touched. No
base was read or written; no `--deliver`; nothing committed.
