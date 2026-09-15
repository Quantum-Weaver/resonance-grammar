# 153 — the imagined waters, their atoms

## Written

`docs/sql/153-the-imagined-waters-atoms.sql`, one file, nothing else touched.

- Twelve `public.atoms` inserts in 151's and 107's column shape: `id` ·
  `atom_word` · `definition` · `atom_type` `root` · `weight` 5 · `affinity` 5 ·
  `valence` 1 · `state` `static` · `category` · `category_name` · `status`
  `published` · `screaming_case` · `snake_case` · `pascal_case`. The `viseme`
  insert carries `modifiers '["s"]'::jsonb` as a thirteenth column.
- Words, category and runner-up: retarget sensory / system · viseme sensory /
  communication · idle status / lifecycle · reel collections / content · grade
  sensory / measurement · repair lifecycle / creation · loudness measurement /
  sensory · broadcaster roles / communication · grove vessel / geography ·
  signaling communication / system · routing infrastructure / communication ·
  closure status / knowledge.
- One guarded `update` appending `"s"` to `chapter`, `insert` and `case`.
- Three read-only verify selects: the twelve rows, the five plural modifiers,
  the trigger-made etymology and sensory companions.
- Each definition drawn from the water's own row: theophany plan Part One W2,
  W4, W6 · ardan W4, W6 · sistrum W1, W3, W8 · nemeton W1, W6, W7 · grammar W3.

## Checked

- `python ../resonance-nectere/chains/the-seed-chain/seed_chain.py run
  docs/sql/153-the-imagined-waters-atoms.sql --base knowledge` — dry,
  `statements: 16`, nothing sent, `--deliver` never passed.
- Single quotes outside comments even (422); 184 string literals tokenize; no
  undoubled apostrophe in any literal.
- The twelve pinned uuid4 values distinct, and the header list equal to the
  twelve insert values.
- Every `category` uuid one of the twenty-five in the categories table, and
  each `category_name` the name that uuid carries.
- Definitions 111 to 152 words, inside 60 to 200. No semicolon and no file
  address inside any definition.
- Case columns equal to the word upper, the word, and the word capitalised.
- The guarded append matches the given statement byte for byte.

## What did not fit

- Several source rows name two things in one water; only the word the ground
  lists is born here. Theophany W2 names a *reading* and the *retarget* — no
  `reading` atom. Ardan W4 names a *shot* and a *reel* — no `shot` atom.
  Nemeton W7 is the *hub's* routing table — no `hub` atom.
- Sistrum W1 is titled "The repair rack". `rack` stands already and is W7's
  atom; W1's atom here is `repair` alone.
- Grammar W3 is titled "The seeding closure"; the atom is `closure`.
- Etymology and sensory rows for the twelve are not written: the table's
  triggers make both on insert.

## Repaired

- Cut what the water's row does not hold: reel's sentence on a shot added or dropped moving every start after it (ardan W4); loudness's "the integrated figure with" and its clause on a sample peak understating a converter (sistrum W3).
- Re-worded two joints in the rows' own terms: grove's third refusal now names framework reactivity, for nemeton W1's "No SQL, no store, no rune"; grade's law for motion is now the stage's, not the house's, for ardan's A0.
- Broadcaster re-ruled from `roles` to `communication` (`839cc74b-baee-47cc-b6eb-617a83393e36`), where `relay` stands, with `roles` the header's runner-up; re-run dry at `statements: 16`, 184 string literals balanced, definitions now 109 to 152 words.
