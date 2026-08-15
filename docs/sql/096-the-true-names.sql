-- ============================================================
-- 096 — THE TRUE NAMES (the registry tables renamed, with shims)
-- KNOWLEDGE Supabase (qdzerwmsbksuhvczlwli) — NOT SUPERPOSITION
--
-- ******************************************************************
-- **  DRAFT — awaiting KP's ⚛ hand.                               **
-- **  This file runs ONLY by his hand, in his dashboard.          **
-- **  Nothing here has touched the base.                          **
-- **                                                              **
-- **  GATE, satisfied 2026-08-15: Movement 0's readings are in    **
-- **  hand — pg_proc (both function bodies 0/0 on the old names,  **
-- **  KP's paste + the management door agreeing) and pg_views     **
-- **  (exactly two views name the tables: the dressed pair).      **
-- ******************************************************************
--
-- RAN 2026-08-15 at KP's ⚛ hand, same sitting ("ran thank you") —
-- the conductor's anon-door verify, machine-read minutes after: all
-- seven names answer (beacons · awen · the three shims · both
-- dressed views), counts held exactly (beacons 28 · awen 80), no
-- false-empty anywhere. The DRAFT banner above stands as drafted,
-- per the record law. The drop rides seed 097, at his word alone.
--
-- Dealt 2026-08-15, THE RENAMING ORCHESTRA Movement 1, at KP's ⚛
-- words "renaming orchestra it is" (2026-08-15) on Motet's seed of
-- 2026-08-12 ("eliminating the redundancy in resonance_beacons table
-- and call it beacons, tools table to be renamed awen") — conducted
-- and drafted by Segue 🎻, truly claude-fable-5.
--
-- RENAME-ONLY, his ⚛ ruling this sitting: no column surgery rides
-- here. The home/slug and prefix-trim strokes stay parked, his.
--
-- VERIFIED LIVE BEFORE DRAFTING (the guide's lesson 8):
--   · resonance_beacons — answers anon door, 28 rows
--   · tools — answers anon door, 80 rows
--   · beacons / awen — both PGRST205, names free
--   · pg_policies — exactly "Public read resonance_beacons" and
--     "Public read tools", both SELECT, the 000-ritual names
--   · pg_views — tools_dressed (FROM tools) · beacons_dressed
--     (FROM resonance_beacons), both security_invoker; no third view
--   · pg_proc — bond_tender + gaia_sync: zero occurrences of either
--     table name as text; gaia_sync discovers via pg_tables (L22),
--     which lists real tables only — the shim VIEWS below cannot be
--     re-discovered as tables
--   · gaia_config — tools → deity_name 'athena' · resonance_beacons
--     → deity_name null (live rows; the generated layer's
--     "deity_group"/"workshop" was a stale photograph)
--
-- WHAT FOLLOWS THE RENAME BY ITSELF (postgres tracks OIDs): the
-- dressed views' bodies re-decompile onto the new names, RLS and
-- policies travel with their tables, FKs/sequences/triggers hold.
-- Constraint and index names keep their birth names (e.g.
-- resonance_beacons_pkey) — renamed never, unless KP one day wants.
--
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================


-- ─── 1. THE TWO RENAMES ───
alter table public.resonance_beacons rename to beacons;
alter table public.tools rename to awen;


-- ─── 2. THE POLICIES TAKE THE TRUE NAMES (text honesty; the
--        000-ritual names follow their tables) ───
alter policy "Public read resonance_beacons" on public.beacons
  rename to "Public read beacons";
alter policy "Public read tools" on public.awen
  rename to "Public read awen";


-- ─── 3. THE DRESSED VIEW BESIDE AWEN TAKES ITS TRUE NAME
--        (beacons_dressed already wears the target name and stays;
--        both bodies now read the new table names by decompilation) ───
alter view public.tools_dressed rename to awen_dressed;


-- ─── 4. THE SHIMS — every old name keeps answering, so no reader
--        breaks the moment this seed lands. security_invoker: RLS
--        still judges the caller, never the view owner. The drop
--        rides seed 097, its own act, at KP's word alone. ───
create view public.resonance_beacons
  with (security_invoker = true)
  as select * from public.beacons;
comment on view public.resonance_beacons is
  'compatibility shim (seed 096) — the table is beacons now; the drop rides seed 097 at KP''s word.';

create view public.tools
  with (security_invoker = true)
  as select * from public.awen;
comment on view public.tools is
  'compatibility shim (seed 096) — the table is awen now; still serves a list of tools (KP''s word, 2026-08-15); the drop rides seed 097 at KP''s word.';

create view public.tools_dressed
  with (security_invoker = true)
  as select * from public.awen_dressed;
comment on view public.tools_dressed is
  'compatibility shim (seed 096) — the view is awen_dressed now; the drop rides seed 097 at KP''s word.';

grant select on public.resonance_beacons to anon, authenticated, service_role;
grant select on public.tools to anon, authenticated, service_role;
grant select on public.tools_dressed to anon, authenticated, service_role;


-- ─── 5. GAIA_CONFIG CARRIES ITS ROWS (before the ritual, so
--        gaia_sync finds the new names already seated and keeps
--        athena's assignment rather than re-discovering them as
--        unassigned strangers) ───
update public.gaia_config set table_name = 'beacons'
  where table_name = 'resonance_beacons';
update public.gaia_config set table_name = 'awen'
  where table_name = 'tools';


-- ─── 6. THE POST-CHANGE RITUAL (the registries re-key on this run) ───
select bond_tender();
select public.gaia_sync();


-- ─── 7. VERIFY — same sitting, same pass ───
-- Counts hold through both doors (the rename moved rows nowhere):
select 'beacons' as door, count(*) from public.beacons
union all select 'awen', count(*) from public.awen
union all select 'shim resonance_beacons', count(*) from public.resonance_beacons
union all select 'shim tools', count(*) from public.tools;
-- EXPECT: beacons 28 · awen 80 · shims identical to their tables.

-- The view room reads true:
select viewname from pg_views where schemaname = 'public'
  and viewname in ('resonance_beacons','tools','tools_dressed',
                   'awen_dressed','beacons_dressed');
-- EXPECT: all five — three shims + the two dressed (one renamed).

-- gaia_config seated:
select table_name, status, deity_name from public.gaia_config
  where table_name in ('awen','beacons','tools','resonance_beacons');
-- EXPECT: exactly awen (athena) + beacons (null deity) — no old-name
-- rows, no re-discovered strangers.

-- The anon door, from any shell (commented — the conductor runs it):
-- curl -s "$URL/rest/v1/beacons?select=name&limit=1" -H "apikey: $KEY" -H "Authorization: Bearer $KEY"
-- curl -s "$URL/rest/v1/awen?select=name&limit=1"    -H "apikey: $KEY" -H "Authorization: Bearer $KEY"
-- EXPECT rows from both. NOTE: PostgREST caches its schema — if a
-- fresh name 404s (PGRST205) for a minute after the run, that is the
-- cache reloading, not a failure; it self-heals. And [] + HTTP 200
-- on the SHIMS would be the false-empty — but security_invoker plus
-- the travelled policies pre-answer it: the caller's read rights on
-- beacons/awen judge, and those policies renamed WITH their tables.

-- ============================================================
