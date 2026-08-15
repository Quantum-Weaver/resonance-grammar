-- ============================================================
-- 097 — THE SHIMS DROP (the renaming's real completion)
-- KNOWLEDGE Supabase (qdzerwmsbksuhvczlwli) — NOT SUPERPOSITION
--
-- ******************************************************************
-- **  DRAFT — PARKED at KP's ⚛ clock.                             **
-- **  This file runs ONLY by his hand, in his dashboard.          **
-- **  Nothing here has touched the base.                          **
-- **                                                              **
-- **  GATE: this is Movement 3's deliberate own act. Sleeping     **
-- **  between movements is honorable; seeds do not spoil.        **
-- **  Motet's law: the drop is the migration's real completion.   **
-- ******************************************************************
--
-- RAN 2026-08-15 at KP's ⚛ hand, same sitting it was parked
-- ("097 taken care of, all shims dropped") — VARIANT A, the full
-- drop. Conductor's anon-door verify, machine-read minutes after:
-- beacons · awen · awen_dressed · beacons_dressed all answer;
-- resonance_beacons · tools · tools_dressed all PGRST205 — the old
-- names rest. Variant A's own precondition carried the library
-- word: both cards re-pointed the same sitting (fetch_tools.py →
-- awen · fetch_beacons.py → beacons), the library act recorded.
-- THE MIGRATION IS COMPLETE — Motet's seed grown whole.
--
-- Dealt 2026-08-15, THE RENAMING ORCHESTRA Movement 3, parked the
-- same sitting seed 096 ran — conducted and drafted by Segue 🎻,
-- truly claude-fable-5.
--
-- THE GROUND AT PARKING (recount before running — counts run low):
--   · Every workspace reader re-pointed and proven on the true
--     names 2026-08-15 (awen: almanac + light-list + shelf ·
--     bridge: grammar.ts + family.ts + listen_beacons + smoke 54 ·
--     gaia: full regen, live layer tsc-clean) — EXCEPT:
--   · THE TWO LIBRARY CARDS, standing AS-IS at KP's ⚛ word
--     ("fetch_tools is fine as is it still fetches a list of
--     tools"): resonance-library/python/functions/fetch_tools.py
--     reads rest/v1/tools · fetch_beacons.py reads
--     rest/v1/resonance_beacons. They are the only known live
--     readers of the old names, and they ride the shims.
--   · gaia's 12 orphan generated files: RETIRED 2026-08-15, same
--     sitting, at KP's word ("remove these please") — reference-
--     checked (zero importers), removed by the conductor's hand,
--     type gate silent after. No generated reader of the old
--     names remains anywhere.
--
-- HIS STROKE, DRAWN INERT — the two variants side by side, decided
-- by nobody else. Variant B is the recommendation on record, from
-- his own reasoning: a view named tools that serves a list of tools
-- stays true forever. NEITHER VARIANT IS ACTIVE; uncomment one.
-- ============================================================


-- ─── VARIANT A — the full drop (requires the two library cards
--        re-pointed FIRST, at his word, that same sitting; loud
--        failure by design if anything still depends) ───
-- drop view public.tools_dressed;
-- drop view public.tools;
-- drop view public.resonance_beacons;


-- ─── VARIANT B — drop the dressed shim only; the two table-name
--        shims STAND as permanent honest aliases carrying the
--        library cards (his 2026-08-15 reasoning engraved in their
--        own comments by seed 096) ───
-- drop view public.tools_dressed;
-- comment on view public.tools is
--   'standing alias (KP''s ⚛ word 2026-08-15) — still serves a list of tools; the table is awen.';
-- comment on view public.resonance_beacons is
--   'standing alias — the table is beacons; carries fetch_beacons.py by design.';


-- ─── THE POST-CHANGE RITUAL (either variant) ───
-- select bond_tender();
-- select public.gaia_sync();


-- ─── VERIFY — same sitting ───
-- select viewname from pg_views where schemaname = 'public'
--   and viewname in ('resonance_beacons','tools','tools_dressed');
-- VARIANT A EXPECT: zero rows — the old names rest.
-- VARIANT B EXPECT: resonance_beacons · tools — the aliases stand.
-- Then the anon door: rest/v1/awen and rest/v1/beacons answer
-- always; rest/v1/tools_dressed answers PGRST205 (that is the
-- completion, not a break).

-- ============================================================
