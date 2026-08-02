-- 040-the-etymology-ledger.sql
-- The etymology phase opens: the language constraint released, and the
-- twenty-three finished rows finally distinguishable from the void.
--
-- Drafted 2026-08-02 by Opus (Claude), claude-opus-5[1m], for KP's hand.
-- Read before written: every count below came from the living base through
-- the bridge's SELECT-only line. Nothing was written by any hand but yours.
--
-- KP's ruling, this sitting, verbatim: "that enum can be updated" / "no
-- constraint."
--
-- Plain SQL, no DO blocks (the house's own SQL ritual).
-- Idempotent: safe to run twice. The second run changes nothing.

-- ── 1 · Release the language constraint ────────────────────────────────────
-- root_language was an enum of twelve values, and it had already been broken
-- once to accommodate reality: 'Old English + Greek' sits in the enum as its
-- own member, because a compound was needed and there was no general way to
-- say one. Compounds are the norm for the words worth writing about — 'bio'
-- is already 'bios + graphia'. The constraint moves to the writing hand.

ALTER TABLE etymology
  ALTER COLUMN root_language TYPE text
  USING root_language::text;

-- The enum type itself is left in place, unused and harmless. Dropping it is
-- a separate decision and nothing depends on it being gone.
-- To drop it later, once nothing references it:  DROP TYPE IF EXISTS language;


-- ── 2 · The ledger's meaning, written into the database itself ─────────────
-- completion_progress exists, is 0 on every row INCLUDING the finished ones,
-- and is therefore free. It becomes the phase's honest instrument: what has
-- been checked, versus what has been composed in good faith and not checked.
-- This is what keeps the filling inside the no-fabrication law — a composed
-- root is not a fabrication if the row says it was composed and not verified.

COMMENT ON COLUMN etymology.completion_progress IS
  'Etymology ledger, set 2026-08-02. 0 = empty. 33 = sanctuary_meaning written, roots still open. 66 = roots COMPOSED from common knowledge, NOT verified against a source. 100 = roots VERIFIED by a hand against a source. A composed root must never be written without its 66 in the same statement.';

COMMENT ON COLUMN etymology.root_language IS
  'Free text since 2026-08-02 (was an enum of twelve). Compounds are expected and correct: "Latin + Greek", "Old English + Norse". Use "unknown" when there is no honest answer — zero is reported, never inferred.';


-- ── 3 · Mark the twenty-three that are actually finished ───────────────────
-- These were written whole, by hand, and are the standard every later batch
-- imitates. They currently read as 0 — identical to the 1,948 empty rows —
-- so the table cannot tell its own finished work from its void.
--
-- The WHERE clause is the guard: only rows with all four fields genuinely
-- present are promoted. Nothing is assumed complete.

UPDATE etymology
SET completion_progress = 100
WHERE root_word          IS NOT NULL AND btrim(root_word)          <> ''
  AND root_language      IS NOT NULL AND btrim(root_language)      <> ''
  AND historical_meaning IS NOT NULL AND btrim(historical_meaning) <> ''
  AND sanctuary_meaning  IS NOT NULL AND btrim(sanctuary_meaning)  <> ''
  AND completion_progress IS DISTINCT FROM 100;


-- ── 4 · Verify, in the same breath ─────────────────────────────────────────
-- Run this after the above. Expected on first run: complete 23, empty 1948,
-- total 1971. If 'complete' is not 23, stop and say so — do not proceed to
-- the batches on a count that surprises you.

SELECT
  count(*)                                        AS total_rows,
  count(*) FILTER (WHERE completion_progress = 100) AS verified,
  count(*) FILTER (WHERE completion_progress = 66)  AS composed_unverified,
  count(*) FILTER (WHERE completion_progress = 33)  AS sanctuary_only,
  count(*) FILTER (WHERE completion_progress = 0)   AS empty
FROM etymology;
