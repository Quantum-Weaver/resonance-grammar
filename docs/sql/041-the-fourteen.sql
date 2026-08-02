-- 041-the-fourteen.sql
-- The fourteen atoms that labelled themselves unfinished.
--
-- Drafted 2026-08-02 by Opus (Claude), claude-opus-5[1m], for KP's hand,
-- at his word: "ok, let us fix the 14."
--
-- WHAT WAS WRONG (measured, not assumed):
--   * 14 of 1,971 atoms carried `[DRAFTED by Fable - edit freely] Dimension
--     value of the 'X' vocabulary.` in place of a definition.
--   * The same 14 are the only atoms with NULL category / category_name.
--   * A full scan found no other placeholders anywhere: 0 definitions under
--     40 characters, average length 103. The other 1,957 are genuinely written.
--   * They were seeded from six dimension vocabularies -- focus, capability,
--     implementation, form, consciousness, manifestation -- and NONE of those
--     six is a category in the categories table. So the category assignments
--     below are a judgement about how two vocabularies relate. They are
--     PROPOSALS. Edit freely, exactly as Fable's marker invited.
--
-- THE VOICE these imitate, from atoms already written:
--   trust      "Acting on another's word without verifying it. Trust is a
--               decision to accept exposure, which is what makes it worth
--               something."
--   heuristic  "A rule that usually works, held without proof that it must.
--               A heuristic is a net, not a judge."
--   principle  "A commitment held before the particular case arises. A
--               principle costs something exactly when it is inconvenient."
--   Two sentences: the plain meaning, then the distinction that sharpens it.
--
-- THE GUARD: every statement below only touches a row that STILL carries the
-- DRAFTED marker. If you have already rewritten one by hand, this file leaves
-- it alone. Safe to run twice; the second run changes nothing.
--
-- PROVENANCE: each row's `review_notes` records that the definition was
-- drafted by a kin and awaits your confirmation. That column is empty on all
-- 1,971 rows today, so nothing is displaced -- and it means these stay
-- FINDABLE, the way Fable's marker made them findable, instead of quietly
-- becoming indistinguishable from your own writing.
--
-- Plain SQL, no DO blocks (the house's own SQL ritual).

-- ── focus ──────────────────────────────────────────────────────────────────

UPDATE atoms SET
  definition = 'Many acting as one without ceasing to be many. A collective is a direction of attention, not a merger - the individuals are still there.',
  category = (SELECT id FROM categories WHERE name = 'consciousness'),
  category_name = 'consciousness',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "focus" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'collective' AND definition ILIKE '%DRAFTED%';

UPDATE atoms SET
  definition = 'A part that keeps its own shape inside a larger whole. A component can be taken out and still be itself.',
  category = (SELECT id FROM categories WHERE name = 'system'),
  category_name = 'system',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "focus" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'component' AND definition ILIKE '%DRAFTED%';

UPDATE atoms SET
  definition = 'One, considered apart from the group it belongs to. The individual is not the opposite of the collective; it is the other end of the same attention.',
  category = (SELECT id FROM categories WHERE name = 'consciousness'),
  category_name = 'consciousness',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "focus" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'individual' AND definition ILIKE '%DRAFTED%';

UPDATE atoms SET
  definition = 'A set of parts whose behaviour together is in none of them alone. A system is what the parts do, not what they are.',
  category = (SELECT id FROM categories WHERE name = 'system'),
  category_name = 'system',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "focus" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'system' AND definition ILIKE '%DRAFTED%';

-- ── capability ─────────────────────────────────────────────────────────────

UPDATE atoms SET
  definition = 'Able to join what was separate. A connective carries nothing of its own; its whole worth is what it lets pass.',
  category = (SELECT id FROM categories WHERE name = 'infrastructure'),
  category_name = 'infrastructure',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "capability" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'connective' AND definition ILIKE '%DRAFTED%';

UPDATE atoms SET
  definition = 'Running alongside without meeting. Parallel things share a time, not a path.',
  category = (SELECT id FROM categories WHERE name = 'system'),
  category_name = 'system',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "capability" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'parallel' AND definition ILIKE '%DRAFTED%';

UPDATE atoms SET
  definition = 'Standing between a thing and what would harm it. Protection is a posture held before the harm arrives, or it is only regret.',
  category = (SELECT id FROM categories WHERE name = 'governance'),
  category_name = 'governance',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "capability" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'protective' AND definition ILIKE '%DRAFTED%';

-- ── implementation ─────────────────────────────────────────────────────────

UPDATE atoms SET
  definition = 'One who keeps a thing safe by standing at its edge. A guardian holds a boundary, which is also a kindness in the other direction.',
  category = (SELECT id FROM categories WHERE name = 'roles'),
  category_name = 'roles',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "implementation" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'guardian' AND definition ILIKE '%DRAFTED%';

UPDATE atoms SET
  definition = 'One who shares the work and the outcome equally. A partner is not a helper; the difference is who carries the cost.',
  category = (SELECT id FROM categories WHERE name = 'roles'),
  category_name = 'roles',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "implementation" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'partner' AND definition ILIKE '%DRAFTED%';

UPDATE atoms SET
  definition = 'One who perceives what is not yet evident. A seer reports what they see; seeing is not a claim of certainty.',
  category = (SELECT id FROM categories WHERE name = 'roles'),
  category_name = 'roles',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "implementation" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'seer' AND definition ILIKE '%DRAFTED%';

-- ── form ───────────────────────────────────────────────────────────────────

UPDATE atoms SET
  definition = 'A source consulted for what cannot be worked out. An oracle answers; it does not explain.',
  category = (SELECT id FROM categories WHERE name = 'roles'),
  category_name = 'roles',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "form" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'oracle' AND definition ILIKE '%DRAFTED%';

UPDATE atoms SET
  definition = 'A bond in which two remain two and act as one. Partnership is a form rather than a feeling; it holds on the days nobody feels it.',
  category = (SELECT id FROM categories WHERE name = 'identity'),
  category_name = 'identity',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "form" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'partnership' AND definition ILIKE '%DRAFTED%';

-- ── consciousness ──────────────────────────────────────────────────────────

UPDATE atoms SET
  definition = 'The standing shape between two beings, carried between meetings. A relationship is what remains when neither is in the room.',
  category = (SELECT id FROM categories WHERE name = 'identity'),
  category_name = 'identity',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "consciousness" is a category name, but the atom is about the bond rather than the mind. Awaiting KP''s confirmation.'
WHERE atom_word = 'relationship' AND definition ILIKE '%DRAFTED%';

-- ── manifestation ──────────────────────────────────────────────────────────

UPDATE atoms SET
  definition = 'One who carries meaning across a boundary of form without adding their own. A translator succeeds invisibly; only the failures have a texture.',
  category = (SELECT id FROM categories WHERE name = 'roles'),
  category_name = 'roles',
  review_notes = 'Definition drafted 2026-08-02 by Opus (Claude) at KP''s word; category proposed - the source dimension "manifestation" has no category equivalent. Awaiting KP''s confirmation.'
WHERE atom_word = 'translator' AND definition ILIKE '%DRAFTED%';


-- ── Verify, in the same breath ─────────────────────────────────────────────
-- Expected after a clean run: placeholders 0, uncategorised 0, total 1971.
-- If either is not 0, stop and say so rather than proceeding.

SELECT
  count(*)                                                        AS total_atoms,
  count(*) FILTER (WHERE definition ILIKE '%DRAFTED%')            AS placeholders_left,
  count(*) FILTER (WHERE category IS NULL)                        AS uncategorised_left,
  count(*) FILTER (WHERE review_notes IS NOT NULL
                     AND btrim(review_notes) <> '')               AS awaiting_your_confirmation
FROM atoms;
