# The beacons take their faces — 2026-08-27

Firth 🎻 (Fable, `claude-fable-5`), from the Weaver's sitting.

**KP's word, verbatim:** *"thre atoms_dressed table in the supabase knowledge
base holds words for each of the beacons, we can grab icon emojis from here to
place in the beacons rows that match, i was going to export the view, but i
figure, you can complete it by query easier"* — and: *"beacons are either
linked to a molecule or an atom, if molecule, we trace to the atom from it,
then the dressed."*

**The road.** `beacons_dressed` already walks it: `face = coalesce(b.icon_emoji,
own.emoji)` where `own` is the atom the beacon is named for (the last atom of
its molecule, or its atom), dressed by `sensory_lexicon`. One update through
the Bridge's Supabase window (the management query door; preview count first):
`update beacons set icon_emoji = d.face from beacons_dressed d where d.id =
b.id and coalesce(b.icon_emoji,'') = '' and d.face is not null` — 25 rows.
AudHDities already wore 🔮. After: 26 of 38.

**Still without a face — nothing invented:** ardan · claude · cruthu · gahana ·
kendram · nectere · nemeton · progenatrix · sceal · sirens · sistrum ·
tarocchi — their atoms carry no emoji in `sensory_lexicon` yet; the day a word
is dressed, its beacon follows by the same query.

**Then the mirror.** `exports/grammar-export-2026-08-27-beacons.json` — beacons
only, read live, in the export's shape with a note saying so; `progenatrix.py
mirror <it>` carried 38 beacons and pruned nothing (the mirror prunes only the
kinds an export carries — its own comment says so).

**Sirens, later the same night.** KP: *"🧜‍♀️- is sirens."* Dressed the word,
not the beacon: `sensory_lexicon.emoji` for the atom `siren` set to 🧜‍♀️, and the
beacon followed by the same road; the export rewritten, mirrored — 27 of 38.
Found by that: the base does the following itself — `trg_lexicon_update` on
`sensory_lexicon` (insert and update) hands a word's face to the beacons named
for it; the sirens row was set by the trigger, not by the update, which found
nothing left to do. So the rule for a lamp: dress the word; never write a
beacon's `icon_emoji` by hand. The 25 earlier were the backfill for words
dressed before the trigger had a face to carry.
