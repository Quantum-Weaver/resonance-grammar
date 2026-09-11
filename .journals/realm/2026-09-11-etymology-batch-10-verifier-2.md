# Etymology batch 10 of 13 — verification of fix round 2 — 2026-09-11

## Numbers

    python -c "... len(rows), 66s, 33s, empty meanings, 66s missing roots ..." batch-10.json
    190 188 2 0 0

Identical to the figure the fix round reported. The two rows at 33 are
`scramble` and `sk`. No row stands above 66. No `sanctuary_meaning` is
null or empty. No row at 66 lacks `root_word`, `root_language` or
`historical_meaning`.

`git diff --stat` in the grammar repo:

    seeds/etymology/batch-10.json | 28 ++++++++++++++--------------
    1 file changed, 14 insertions(+), 14 deletions(-)

Only `seeds/etymology/batch-10.json` is modified. Four untracked files
sit in the tree — `seeds/etymology/COUNTS.md` and three `.journals/realm/`
entries — none of them written by the fix round.

## Structure

`json.load` succeeds. The file re-serialises byte-for-byte under
`json.dumps(d, indent=1, ensure_ascii=False)` with no trailing newline,
the same state batch-09 holds. Line endings are CRLF, as before.

Header intact and equal to batch-09's in every key but `batch`:
`wave` etymology, `born` 2026-09-11, `source` KNOWLEDGE · etymology
joined to atoms, anon door, `rows` 190, `batch` 10, `of` 13.

The field set is equal to batch-09's — eleven fields, one field order
across all 190 rows. 190 rows, 190 distinct `etymology_id`, 190 distinct
`atom_id`; both sequences identical to HEAD in value and order.

## Rows changed, against HEAD

Thirteen rows, fourteen fields, and nothing else:

    schedule   historical_meaning
    shadow     sanctuary_meaning
    shape      root_word, historical_meaning
    sidebar    sanctuary_meaning
    since      root_word
    size       root_language
    sizer      root_language
    sky        sanctuary_meaning
    solarized  historical_meaning
    sort       sanctuary_meaning
    sound      sanctuary_meaning
    south      sanctuary_meaning
    spacer     sanctuary_meaning

`shuffle` and `skip` are byte-identical to HEAD. No `definition`, no
`category_name`, no `atom_type`, no `completion_progress` moved anywhere
in the file.

## The seven meanings

Each is one sentence. None carries `you`, `your`, a named person, a year,
a century, a ruling or a backtick. Each now carries a clause its own
`definition` does not:

    sort      Latin sors, a lot drawn by fate, and the impartiality kept
    sky       the word narrowing to one cloud before widening to the vault
    spacer    a thing whose whole job is to go unnoticed
    south     possible kinship with sun, direction named by midday light
    sound     a sound leaves nothing behind once it stops travelling
    shadow    not a fixed property; the light's position makes it anew
    sidebar   barre once named a barrier, and a sidebar blocks nothing

Three open on a past-tense etymological clause — `sort` "named",
`sky` "once reached", `sidebar` "once named". voice.json does the same
in `asset` ("an asset was originally about SUFFICIENCY") and `bubble`.

`shadow` carries an imperative, "move the light, and the very same object
throws a different shadow every time". An imperative addresses a reader.

`south`'s new clause is the one its own `historical_meaning` already
carries — "possibly related to sun, the direction it stands at midday
north of the equator". The `sanctuary_meaning` drops the equator
qualifier the `historical_meaning` keeps.

## The root mends

`size` and `sizer` now read `root_language: "Medieval Latin"` over
`root_word: "assisa"`, matching batch-09's `resize`. assisa is a
medieval form; the classical ancestor is assidere. Both rows still say
"Latin assisa" inside `historical_meaning`, where batch-09's `resize`
reserves "Latin" for assidere.

`solarized`'s `historical_meaning` now opens "A nineteenth-century
photography coinage, solarize, built on Latin sol (the sun)" — the
coinage first, the ancient root second, agreeing with `root_word:
"solarize"` and `root_language: "Modern English (coinage)"`, both
unchanged.

`since` carries one transliteration: `root_word` now reads `siththan`,
the spelling `historical_meaning` already held.

`shape`'s `root_word` reads `scieppan`. The house clause — "and as the
Old Norse skapa already kept in this house" — is gone from
`historical_meaning`, which now ends "the same root as -ship".
`historical_meaning` still opens "Old English sceapan / scieppan",
carrying both forms.

`schedule`'s `historical_meaning` carries the three-step descent:
"Late Latin schedula (a small note, a slip of paper), the diminutive of
Latin scheda (a leaf of papyrus), itself from Greek schede". `schedula`
< `scheda` < Greek `schede` is the attested chain. `root_language` on
that row remains "Latin" over a `root_word` the sentence calls Late
Latin.

Every root mend is hedged where the evidence is hedged: `south` says
"may share", `sidebar` "once named", `shuffle` and `skip` keep their
"probably". No mend asserts a descent a careful reader would call
unknown.

## Verdict

True to the sending. No blocking defect, no short defect. The polish
items above are named and unfixed; nothing in the work was changed by
this reading.
