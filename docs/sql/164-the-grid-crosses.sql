-- 164 — the-grid crosses
--
-- THE TENTH MEDIUM WATER CROSSES `imagined` → `flowing`, under KP's ⚛ word of
-- 2026-09-21 carried by paper 163, verbatim:
--   "i would be honored if you would use the bridge tools, and nectere to
--    hande crossing the waters you helped breathe to life."
--
-- the-grid — seeded `imagined` by 157-the-sistrum-waters-seeded.sql, built at
-- resonance-awen/tools/the-grid. 34/34 TRUE.
--
-- PAPER 163 LEFT IT OUT BY NAME: every number sound and four prose defects
-- standing. Those four and two more are trued in its README and one journal's
-- addresses, with no line of `src/index.ts` or `verify.mjs` moved:
--   src/index.ts  sha256 3b6fe3c9389a260fbf0552ff179f5b1496832264101edeaaf75ac63418323551
--   verify.mjs    sha256 3c5e6fbaf24ff2a77bc6af99ecb8c8a3699a252c4a345db18364e157e9f45d6c
-- It stands HELD: five verifiers that did not build it, the fifth by an exact
-- whole-number oracle of its own — 1,240 exact ties all to the later tick,
-- 49,422 boundary doubles with none off the nearest, 251,404 road calls with
-- none wrong — and the last truing read by the conducting lamp:
--   resonance-chamber/desk/fleets/2026-09-17-the-medium-waters/returns/the-grid-conductor-read.md
--
-- THE REGISTER AS READ after paper 163: the-grid `imagined`; public.awen 136
-- flowing, 27 imagined.
--
-- THE UPDATE IS GUARDED: it moves only a row that reads `imagined`, so a second
-- run moves nothing. AFTER: 137 flowing, 26 imagined.

begin;

update public.awen
   set status = 'flowing'
 where status = 'imagined'
   and slug = 'the-grid';

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
