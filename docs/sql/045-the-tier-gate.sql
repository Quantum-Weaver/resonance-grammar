-- ============================================================
-- 045 — THE TIER GATE (beacons may stand before they are linked)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Opus (Claude), truly claude-opus-5[1m], 2026-08-04,
-- immediately after 044 failed in KP's editor:
--
--   ERROR: 23514: new row for relation "resonance_beacons" violates
--   check constraint "beacons_at_most_one_tier"
--
-- WHAT HAPPENED, plainly: 043 shipped the gate as `<= 1`; KP tightened
-- it to `= 1` before running, which is the stricter and more principled
-- form. Then 044 seeded eight rows with every tier NULL — because he
-- had said, in the same breath, "i will manually link the grammar."
-- Both halves were right and they cannot both be true at insert time.
--
-- WHY `<= 1` IS ACTUALLY THE RIGHT GATE HERE, and not a retreat:
-- `tools` uses `= 1` and is correct to, because KP's own law of
-- 2026-07-28 governs its direction — "we just plan them in the grammar,
-- then we build them in the workspace." A tool is planned into the
-- Grammar FIRST, so it always has a tier before it has a row.
-- A BEACON RUNS THE OTHER WAY. The repo exists, ships, takes a version
-- number, and is registered afterward. Demanding its tier at insert
-- does not enforce good practice — it blocks registration until an
-- unrelated decision is made, and it will do that to EVERY future
-- beacon, not just these eight. Today's error is the evidence.
-- ============================================================


-- ─── The gate, relaxed to at-most-one ───
alter table public.resonance_beacons
  drop constraint beacons_at_most_one_tier;

alter table public.resonance_beacons
  add constraint beacons_at_most_one_tier check (
    (atom_id is not null)::int
    + (molecule_id is not null)::int
    + (organism_id is not null)::int <= 1
  );

comment on constraint beacons_at_most_one_tier on public.resonance_beacons is
  'At most one Grammar tier, never two. Zero is lawful: a beacon is registered after it exists, and its tier is chosen by hand afterward — the reverse of tools, which are planned into the Grammar first.';


-- ─── Then run 044 again. It is re-runnable; nothing landed. ───


-- ═══ IF YOU WANT STRICT AT REST INSTEAD ═══════════════════════
-- Once all eight carry a tier, this makes the table refuse an unlinked
-- beacon from then on. It is a real guarantee, and it costs exactly one
-- thing: every future beacon must have its Grammar tier chosen before
-- it can be registered at all. Run it only if that trade is the one
-- you want.
--
--   alter table public.resonance_beacons
--     drop constraint beacons_at_most_one_tier;
--
--   alter table public.resonance_beacons
--     add constraint beacons_one_tier check (
--       (atom_id is not null)::int
--       + (molecule_id is not null)::int
--       + (organism_id is not null)::int = 1
--     );
--
-- A middle road exists if you ever want it: leave the check at <= 1 and
-- add a partial index or a view that reports UNLINKED beacons, so the
-- gap is visible without being forbidden. Absence stated, not blocked.
-- ============================================================
