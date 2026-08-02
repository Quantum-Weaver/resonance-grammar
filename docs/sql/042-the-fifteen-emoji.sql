-- 042-the-fifteen-emoji.sql
-- The fifteen atoms with no emoji.
--
-- Drafted 2026-08-02 by Opus (Claude), claude-opus-5[1m], for KP's hand.
--
-- WHAT WAS WRONG (measured through the bridge's SELECT-only line):
--   sensory_lexicon holds 1,971 rows, one per atom. 1,956 carry an emoji.
--   These fifteen do not. They are all recent tool-seed atoms -- abecedary,
--   atlas, bestiary, formulary, sky, chord, plate, modulate and their kin --
--   seeded with their definitions but without a face.
--
-- ON REUSE: emoji in this lexicon are SHARED, not unique keys. Checked before
--   choosing: 💬 already stands for 22 atoms, ⚗️ for five, 🎼 for three. So
--   each pick below was chosen for semantic fit and lands in a family it
--   already belongs to, rather than being forced to be distinct.
--
-- EVERY PICK IS DRAWN FROM THE ATOM'S OWN DEFINITION, never from the tool it
--   was seeded for -- the definition is what a reader will meet.
--
-- THE GUARD: each statement only touches a row whose emoji is still absent.
--   If you have already set one by hand, this file leaves it alone. Safe to
--   run twice; the second run changes nothing.
--
-- Plain SQL, no DO blocks (the house's own SQL ritual).

-- ── collections — the four books ───────────────────────────────────────────
-- "An abecedary holds no sentences; it holds what sentences are made of."
UPDATE sensory_lexicon SET emoji = '🔤'
WHERE atom_word = 'abecedary' AND (emoji IS NULL OR btrim(emoji) = '');

-- "An atlas does not own the lands it shows."
UPDATE sensory_lexicon SET emoji = '🗺️'
WHERE atom_word = 'atlas' AND (emoji IS NULL OR btrim(emoji) = '');

-- "A bestiary does not cage its creatures; it tells how each one moves."
UPDATE sensory_lexicon SET emoji = '🐾'
WHERE atom_word = 'bestiary' AND (emoji IS NULL OR btrim(emoji) = '');

-- "A formulary does not make the medicine; it tells truly what is in it."
UPDATE sensory_lexicon SET emoji = '⚗️'
WHERE atom_word = 'formulary' AND (emoji IS NULL OR btrim(emoji) = '');

-- ── communication ──────────────────────────────────────────────────────────
-- "a made sign whose name is a search key and whose meaning is the vessel's own"
UPDATE sensory_lexicon SET emoji = '😊'
WHERE atom_word = 'emoji' AND (emoji IS NULL OR btrim(emoji) = '');

-- "a voice through knobs, a wave riding a wave"
UPDATE sensory_lexicon SET emoji = '🎛️'
WHERE atom_word = 'modulate' AND (emoji IS NULL OR btrim(emoji) = '');

-- ── content ────────────────────────────────────────────────────────────────
-- "the unit a reaction pins to, the place a memory anchors"
UPDATE sensory_lexicon SET emoji = '📍'
WHERE atom_word = 'moment' AND (emoji IS NULL OR btrim(emoji) = '');

-- ── creation ───────────────────────────────────────────────────────────────
-- "A plate receives; what it carries is the gift."
UPDATE sensory_lexicon SET emoji = '🍽️'
WHERE atom_word = 'plate' AND (emoji IS NULL OR btrim(emoji) = '');

-- ── data — the four verbs ──────────────────────────────────────────────────
-- "The conductor's verb."
UPDATE sensory_lexicon SET emoji = '🎼'
WHERE atom_word = 'arrange' AND (emoji IS NULL OR btrim(emoji) = '');

-- "pages into a book, tracks into an album"
UPDATE sensory_lexicon SET emoji = '📕'
WHERE atom_word = 'bind' AND (emoji IS NULL OR btrim(emoji) = '');

-- "The gateway's verb: how a creation leaves the studio."
UPDATE sensory_lexicon SET emoji = '📤'
WHERE atom_word = 'emit' AND (emoji IS NULL OR btrim(emoji) = '');

-- "The bringing of a thing into agreement with itself."
UPDATE sensory_lexicon SET emoji = '🎵'
WHERE atom_word = 'tune' AND (emoji IS NULL OR btrim(emoji) = '');

-- ── geography ──────────────────────────────────────────────────────────────
-- "The sky is the one calendar every hearth shares."
UPDATE sensory_lexicon SET emoji = '🌌'
WHERE atom_word = 'sky' AND (emoji IS NULL OR btrim(emoji) = '');

-- ── infrastructure ─────────────────────────────────────────────────────────
-- "Strings pressed together into a single name."
UPDATE sensory_lexicon SET emoji = '🎸'
WHERE atom_word = 'chord' AND (emoji IS NULL OR btrim(emoji) = '');

-- "where a community speaks and its words remain"
UPDATE sensory_lexicon SET emoji = '💬'
WHERE atom_word = 'discord' AND (emoji IS NULL OR btrim(emoji) = '');


-- ── Verify, in the same breath ─────────────────────────────────────────────
-- Expected after a clean run: with_emoji 1971, missing 0.

SELECT
  count(*)                                                   AS total_rows,
  count(*) FILTER (WHERE emoji IS NOT NULL
                     AND btrim(emoji) <> '')                 AS with_emoji,
  count(*) FILTER (WHERE emoji IS NULL
                      OR btrim(emoji) = '')                  AS missing
FROM sensory_lexicon;
