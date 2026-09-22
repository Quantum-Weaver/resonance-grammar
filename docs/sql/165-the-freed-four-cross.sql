-- 165 — the freed four cross
--
-- FOUR WATERS OF THE SPRING CROSS `imagined` → `flowing`, at KP's ⚛ word of
-- 2026-09-21, verbatim: "synch, and cross please"
--
-- THE FOUR, freed by the 0.19 ruling of 2026-09-17
-- (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:726-730), each seeded
-- `imagined` by papers 156 to 158 and built in resonance-awen at 50075fb:
--   the-lifecycle    44/44 TRUE   seeded 156   resonance-awen/tools/the-lifecycle
--   the-offer        38/38 TRUE   seeded 158   resonance-awen/tools/the-offer
--   the-follow       38/38 TRUE   seeded 158   resonance-awen/tools/the-follow
--   the-broadcaster  57/57 TRUE   seeded 157   resonance-awen/tools/the-broadcaster
--
-- EACH STANDS HELD: built by one hand, read by a verifier that did not build
-- it, repaired by a fresh hand, the last repair read by the conducting lamp;
-- the-offer read twice and repaired twice, the-broadcaster likewise. Every
-- sending, return, reading and the conductor's reads stand at
--   resonance-chamber/desk/fleets/2026-09-21-the-freed-four/
--
-- THE REGISTER AS READ 2026-09-21 through the seed chain, before this paper:
-- all four rows `imagined`, `home` filled on each; public.awen 137 flowing,
-- 26 imagined.
--
-- THE UPDATE IS GUARDED: it moves only a row that reads `imagined`, so a second
-- run moves nothing. AFTER: 141 flowing, 22 imagined.

begin;

update public.awen
   set status = 'flowing'
 where status = 'imagined'
   and slug in (
     'the-lifecycle',
     'the-offer',
     'the-follow',
     'the-broadcaster'
   );

commit;

-- THE READING AFTER

select slug, status, tool_type, icon_emoji, home
  from public.awen
 where slug in ('the-lifecycle', 'the-offer', 'the-follow', 'the-broadcaster')
 order by slug;

select status, count(*)
  from public.awen
 group by status
 order by status;
