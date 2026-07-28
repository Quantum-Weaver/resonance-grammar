-- 012 — THE SCHEME ANCHOR (OPTIONAL materialization — the system
-- already decides this; see the re-frame below before running)
-- 2026-07-27, the sitting after the showing. First drafted as "the
-- fix" for question 2 of the showing's three. RE-FRAMED the same
-- sitting at KP's correction ("i did not think i needed to make
-- those decisions" · "we built systems for that"), and he was right:
-- the referent of every edge's scheme_id DERIVES totally from the
-- memberships — subject-in-scheme → subject-scoped (ladder), object-
-- in-scheme → object-scoped (anchor). Run live: 65 subject · 117
-- object · 0 both · 0 neither. Nothing is ambiguous to the system;
-- it was only ambiguous to a reader who hadn't run the derivation.
--
-- Therefore this column is a CONVENIENCE (store the derived value so
-- queries need not join memberships), not a repair. Run it only if
-- the convenience is wanted; the backfill is computed, never chosen.
-- Plain statements per the ritual — no DO blocks. No RLS work
-- needed: concept_relations already has its policies.

alter table public.concept_relations
  add column if not exists scheme_anchor text
  check (scheme_anchor in ('subject', 'object'));

comment on column public.concept_relations.scheme_anchor is
  'Which endpoint scheme_id describes. subject = the edge lives in the subject''s own scheme (the ladder reading); object = the edge is an assignment into the object''s scheme (the anchor reading). Added at KP''s direction 2026-07-27 to close the silent dual referent found at the showing. Existing 182 rows backfill by seed file at KP''s eye; new edges should state their anchor at insert.';

-- After running: one hand-refresh of the self-portrait so the columns
-- registry learns the new column (the chicken timer is not yet on):
--   select public.gaia_sync();
--
-- The backfill seed (182 rows, generated from the showing's measured
-- split — Opus's census, resonance-bridge/listening/listen_lattice3.py
-- and listen_lattice4.py hold the classification) travels separately,
-- at KP's eye, fill-empty only, verified through the public door.
