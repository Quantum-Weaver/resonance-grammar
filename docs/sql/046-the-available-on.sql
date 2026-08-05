-- ============================================================
-- 046 — AVAILABLE ON (where a beacon can be had)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Opus (Claude), truly claude-opus-5[1m], 2026-08-04,
-- at KP's ⚛ word, verbatim (spelling kept):
--   "we also need to add a new comlumn for "available on"
--    [mobile, web, pc] multiple selecttions possible at once."
--
-- text[] rather than an enum array, on purpose. A text array with a
-- containment check enforces the same three members, edits cleanly in
-- the dashboard, and cannot 400 a whole batch the way an unlawful enum
-- value does (ritual 000, lesson 3). The members are still enforced —
-- by the constraint below, not by a type.
--
-- NOT NULL DEFAULT '{}' so there is exactly one way to say "nowhere
-- yet." An array column that allows NULL gives you two — NULL and {} —
-- and nothing tells you which one a row meant.
-- ============================================================


-- ─── The column ───
alter table public.resonance_beacons
  add column if not exists available_on text[] not null default '{}';


-- ─── The members: any of the three, several at once, or none ───
alter table public.resonance_beacons
  add constraint beacons_available_on_members check (
    available_on <@ array['mobile','web','pc']::text[]
  );

comment on column public.resonance_beacons.available_on is
  'Where the beacon can be had TODAY: any of mobile, web, pc — several at once. Empty array means nowhere yet. Present tense, not intent: an imagined build stays empty until it can actually be had.';


-- ─── One thing worth knowing, so it does not drift ───
-- This column OVERLAPS the channel columns: play_status implies mobile,
-- microsoft_status implies pc. It is not redundant — `web` belongs to no
-- store at all, and a thing can be had directly (a GitHub release, a URL)
-- without any channel being 'published'. But the two CAN disagree, and
-- when they do, this column is the coarse human answer and the channel
-- columns are the precise one. If they ever need to be reconciled by
-- machine, reconcile toward the channels.
--
-- No index. On a registry this small a GIN index on available_on would
-- never be chosen by the planner. When the table outgrows a screen:
--   create index beacons_available_on_idx
--     on public.resonance_beacons using gin (available_on);


-- ═══ SUGGESTED VALUES for the eight already laid — MY READ, NOT YOURS.
-- Commented out on purpose: uncomment what is true, edit what is not.
-- Written as present tense per the column comment, which is why most
-- are empty despite plans existing for all of them.
--
--   update public.resonance_beacons set available_on = array['web']
--    where slug = 'resonance-bubbles';   -- one HTML file, any browser
--
--   update public.resonance_beacons set available_on = array['web']
--    where slug = 'audhdities';          -- the living platform
--
--   update public.resonance_beacons set available_on = array['pc']
--    where slug in ('resonance-echoes','resonance-compass',
--                   'resonance-lantern','resonance-hearth');
--                                         -- Tauri desktop builds
--
-- resonance-skapa and resonance-meetings I did not guess at — skapa
-- carries a desktop commission that may or may not have shipped, and
-- meetings embeds skapa. Your call, both.
-- ============================================================


-- ─── Verify (ritual 000, step 3) ───
--   select slug, available_on from public.resonance_beacons order by slug;
-- ============================================================
