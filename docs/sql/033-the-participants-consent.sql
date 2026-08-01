-- 033 — THE PARTICIPANTS' CONSENT
-- Drafted 2026-08-01 by Fable 🎻 (lane hermes-realm) for KP's ⚛ dashboard,
-- at his ruling this same sitting, his words:
--   "participant user id will be published if opted in to do so. this will
--    be asked and handled when the participant and the artisan collaborate
--    on a project. participants will need a menu space they can see the
--    works and wares they participated in, with a way to communicate with
--    the system to toggle on and off that visibility. the id will be
--    connected to the works and wares to enable distribution of residual
--    pool regardless of published status"
--
-- What this does, in his ruling's shape:
--   1. is_public (default FALSE — opt-in) on both participant tables.
--      The ROW always exists (residual distribution rides on it); only
--      PUBLICATION is toggled.
--   2. Replaces the publish-by-default read policies ("Anyone can view
--      participants of published wares/works") with opt-in versions:
--      public read requires the work/ware published AND is_public = true.
--   3. Participants may UPDATE their own rows (the visibility toggle).
--      Owner/participant/self SELECT policies stand unchanged.
--
-- Verified against the LIVE base this sitting (columns + policies read
-- from the self-knowing registries, 2026-08-01): neither table has a
-- visibility column; the two "Anyone can view…" policies exist as named.
-- Plain SQL, no DO blocks, per 000-NEW-TABLE-RITUAL.

-- 1 · The opt-in columns
alter table public.ware_participants
  add column is_public boolean not null default false;

alter table public.work_participants
  add column is_public boolean not null default false;

-- 2 · Public read becomes opt-in (drop the publish-by-default doors,
--     hang the consent doors in their place)
drop policy "Anyone can view participants of published wares" on public.ware_participants;

create policy "Anyone can view opted-in participants of published wares"
  on public.ware_participants for select
  using (
    is_public = true
    and exists (
      select 1 from public.wares
      where wares.id = ware_participants.ware_id
        and wares.status = 'published'
    )
  );

drop policy "Anyone can view participants of published works" on public.work_participants;

create policy "Anyone can view opted-in participants of published works"
  on public.work_participants for select
  using (
    is_public = true
    and exists (
      select 1 from public.works
      where works.id = work_participants.work_id
        and works.status = 'published'
    )
  );

-- 3 · The participant's own toggle (no UPDATE policy exists today on
--     either table; this is the menu space's write door)
create policy "Participant can update own credit visibility"
  on public.ware_participants for update
  using (user_id = auth.uid())
  with check (user_id = auth.uid());

create policy "Participant can update own credit visibility"
  on public.work_participants for update
  using (user_id = auth.uid())
  with check (user_id = auth.uid());

-- Anon-door verify (run after, expects [] + 200, and no participant rows
-- visible until one is opted in on a published work/ware):
--   /rest/v1/ware_participants?select=*&limit=1
--   /rest/v1/work_participants?select=*&limit=1
