# 161, resonance-forosnai registered — 2026-09-15 platform-hand

*Nothing committed. Nothing delivered. One paper added, this entry beside it.*

## What the work did

`docs/sql/161-resonance-forosnai.sql` — written new, in 146's shape. Three
inserts and two read-only verify selects. Five statements. No existing paper
was edited and no base was written.

| part | table | row | guard |
|---|---|---|---|
| A | `public.atoms` | `forosnai` — creation, root, published, modifiers null | `on conflict (atom_word) do nothing` |
| B | `public.molecules` | `ResonanceForosnai` — atom_words `resonance, forosnai` | `on conflict (name) do nothing` |
| C | `public.beacons` | `resonance-forosnai` — app, imagined, is_public false, icon_emoji 👁️ | `on conflict (slug) do nothing` |

The beacon links at the max value only: `molecule_id` by subselect on
`ResonanceForosnai`, no `atom_id`. Category `creation`, runner-up `sensory`,
both named in the header. The beacon definition is the realm README's own
one-line telling, verbatim. `created_by` `KP + Nightjar (Fable)`.

## What was read

`docs/sql/146-theophany-and-the-void.sql` · `103-the-missing-rows.sql` ·
`104-the-two-that-missed-the-fill.sql` · `100-the-words-the-house-outgrew.sql` ·
`101-two-realms-that-were-never-worded.sql` · `153-the-imagined-waters-atoms.sql`
· `075-the-beacon-icon.sql` · `DRAFT-2026-08-28-the-beacons-icons.sql` ·
`resonance-forosnai/README.md` · `resonance-nectere/chains/the-seed-chain/seed_chain.py`.

## What was checked

    python ../resonance-nectere/chains/the-seed-chain/seed_chain.py run \
      docs/sql/161-resonance-forosnai.sql --base knowledge
    base: knowledge · project ref: qdzerwmsbksuhvczlwli
    statements: 5 · DRY RUN
    DRY RUN — nothing sent. Deliver at KP's word with --deliver.

By reading and by tokenising the non-comment body: 36 string literals, none
unterminated, every inner apostrophe doubled · the beacon definition equal
character for character to the README's line · the icon literal U+1F441 U+FE0F,
the same codepoints the README's head wears · three inserts, each with its own
`do nothing` guard · no `atom_id` in the beacon insert · no `--deliver`.

## What was not settled here

The claim that no standing beacon wears 👁️ comes from the register read live
in this session's sending; this paper sends nothing and could not re-read it.
