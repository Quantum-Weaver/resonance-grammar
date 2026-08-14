-- ============================================================
-- 094 — THE LINES REHOMED (tools.home → src/lines/)
-- KNOWLEDGE Supabase — the `tools` register (the awen rename still
-- sleeps in Iðavöllr; today's true name is `tools`) — NOT Grammar,
-- NOT SUPERPOSITION.
--
-- ******************************************************************
-- **  DRAFT — runs ONLY by KP's hand, in his dashboard.           **
-- **  Nothing here has touched the base.                          **
-- ******************************************************************
--
-- Dealt 2026-08-14, the Family Table wave-1 close — conducted by
-- Fable (the Aubade lamp), drafted by the conductor's own hand,
-- truly claude-fable-5.
--
-- RAN 2026-08-14 at KP's ⚛ hand, same sitting — his dashboard verify
-- returned all seven rows rehomed (pasted on the human bus). The
-- shelf then regenerated: resonance-awen `npm run shelf` (the
-- almanac → shelf.json + lexicon, 7/7 reading src/lines/). Name
-- caution for the record: `npm run shelves` is GAIA's distribution
-- tool — a different shelf entirely; awen's singular `shelf` is the
-- one this file feeds.
--
-- WHY: Phase A rebirthed the bridge's eight line files
-- (resonance-bridge/src/*.ts → src/lines/*.ts, git mv, history
-- intact). Seven tools rows carry `home` addresses citing the old
-- doors. `resonance-awen/src/lib/data/shelf.json` is GENERATED from
-- these rows by the almanac — the file is never mended by hand; the
-- rows are the ground.
--
-- AFTER THIS RUNS: in resonance-awen, `npm run shelf` regenerates
-- shelf.json + the shelf lexicon from the trued rows.
-- ============================================================


-- ─── 1. THE MEND — pattern-guarded, idempotent ───
-- Catches every bridge line row, whatever its file name; the guard
-- makes a second run a no-op.
update public.tools
   set home       = replace(home, 'resonance-bridge/src/', 'resonance-bridge/src/lines/'),
       updated_at = now()
 where home like 'resonance-bridge/src/%'
   and home not like 'resonance-bridge/src/lines/%';


-- ─── 2. VERIFY, same sitting ───
-- Expect: every bridge-homed row reads src/lines/, zero rows read the
-- old door.
select name, home
  from public.tools
 where home like 'resonance-bridge/src/%'
 order by name;
-- ============================================================
