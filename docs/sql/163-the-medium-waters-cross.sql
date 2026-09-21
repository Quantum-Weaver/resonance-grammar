-- 163 — the medium waters cross
--
-- NINE WATERS OF THE SPRING CROSS `imagined` → `flowing`, at KP's ⚛ word of
-- 2026-09-21, verbatim:
--   "i would be honored if you would use the bridge tools, and nectere to
--    hande crossing the waters you helped breathe to life."
--
-- THE NINE, each seeded `imagined` by papers 154 to 158 and built in
-- resonance-awen at e65423f:
--   the-stack     41/41 TRUE   seeded 155   resonance-awen/tools/the-stack
--   the-rig       41/41 TRUE   seeded 154   resonance-awen/tools/the-rig
--   the-parts     43/43 TRUE   seeded 155   resonance-awen/tools/the-parts
--   the-delivery  42/42 TRUE   seeded 156   resonance-awen/tools/the-delivery
--   the-measure   56/56 TRUE   seeded 158   resonance-awen/tools/the-measure
--   the-inserts   41/41 TRUE   seeded 157   resonance-awen/tools/the-inserts
--   the-scene     42/42 TRUE   seeded 156   resonance-awen/tools/the-scene
--   the-ledger    53/53 TRUE   seeded 156   resonance-awen/tools/the-ledger
--   the-grade     48/48 TRUE   seeded 155   resonance-awen/tools/the-grade
--
-- EACH STANDS HELD: read by three to six verifiers that did not build it, the
-- last truing read by the conducting lamp. Every sending, return, probe and
-- the conductor's reads stand at
--   resonance-chamber/desk/fleets/2026-09-17-the-medium-waters/
-- and the standings at handoffs 70 and 71 of the resonance-awen realm in
-- resonance-progenatrix/progenatrix.db.
--
-- THE TENTH DOES NOT CROSS HERE. the-grid (seeded 157) stands 34/34 TRUE with
-- every number sound and four prose defects standing in its README and one
-- journal (returns/the-grid-fifth-return.md). It crosses by a paper of its own
-- when it is held.
--
-- THE REGISTER AS READ 2026-09-21 through the seed chain, before this paper:
-- all ten rows `imagined`, `home` filled on each; public.awen 127 flowing, 36
-- imagined. A flowing row and an imagined row differ in `status` alone
-- (the-mark against the-stack, every column compared).
--
-- THE UPDATE IS GUARDED: it moves only a row that reads `imagined`, so a second
-- run moves nothing. AFTER: 136 flowing, 27 imagined.

begin;

update public.awen
   set status = 'flowing'
 where status = 'imagined'
   and slug in (
     'the-stack',
     'the-rig',
     'the-parts',
     'the-delivery',
     'the-measure',
     'the-inserts',
     'the-scene',
     'the-ledger',
     'the-grade'
   );

commit;

-- THE READING AFTER

select slug, status, tool_type, icon_emoji, home
  from public.awen
 where slug in (
   'the-stack', 'the-rig', 'the-parts', 'the-delivery', 'the-measure',
   'the-grid', 'the-inserts', 'the-scene', 'the-ledger', 'the-grade'
 )
 order by slug;

select status, count(*) from public.awen group by status order by status;
