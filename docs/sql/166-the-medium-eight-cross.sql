-- 166 — the medium eight cross
--
-- EIGHT WATERS OF THE SPRING CROSS `imagined` → `flowing`, at KP's ⚛ word.
--
-- THE EIGHT, the medium waters that remained of the fifty discovered
-- 2026-09-14, each seeded `imagined` by papers 154, 155, 159 and 160 and
-- built in resonance-awen on 2026-09-23:
--   the-retarget   24/24 TRUE   seeded 154   resonance-awen/tools/the-retarget
--   the-visemes    30/30 TRUE   seeded 154   resonance-awen/tools/the-visemes
--   the-reel       36/36 TRUE   seeded 155   resonance-awen/tools/the-reel
--   the-closure    45/45 TRUE   seeded 160   resonance-awen/tools/the-closure
--   the-grove      23/23 TRUE   seeded 159   resonance-awen/tools/the-grove
--   the-pairing    29/29 TRUE   seeded 159   resonance-awen/tools/the-pairing
--   the-signaling  35/35 TRUE   seeded 159   resonance-awen/tools/the-signaling
--   the-routing    40/40 TRUE   seeded 159   resonance-awen/tools/the-routing
--
-- EACH STANDS HELD: built by one hand, read by a verifier that did not build
-- it, repaired by a fresh hand where a reading found a defect, the small
-- truings read by the conducting lamp; the-closure, the-pairing and
-- the-routing read twice, the-routing repaired three times, the-signaling
-- read four times and repaired three. Every sending, return, reading and the
-- conductor's reads stand at
--   resonance-chamber/desk/fleets/2026-09-23-the-medium-eight/
--
-- THE REGISTER AS LAST READ, 2026-09-21 after paper 165: all eight rows
-- `imagined`, `home` filled on each; public.awen 141 flowing, 22 imagined.
--
-- THE UPDATE IS GUARDED: it moves only a row that reads `imagined`, so a second
-- run moves nothing. AFTER: 149 flowing, 14 imagined.

begin;

update public.awen
   set status = 'flowing'
 where status = 'imagined'
   and slug in (
     'the-retarget',
     'the-visemes',
     'the-reel',
     'the-closure',
     'the-grove',
     'the-pairing',
     'the-signaling',
     'the-routing'
   );

commit;

-- THE READING AFTER

select slug, status, tool_type, icon_emoji, home
  from public.awen
 where slug in ('the-retarget', 'the-visemes', 'the-reel', 'the-closure',
                'the-grove', 'the-pairing', 'the-signaling', 'the-routing')
 order by slug;

select status, count(*)
  from public.awen
 group by status
 order by status;
