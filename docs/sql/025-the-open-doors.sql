-- ============================================================
-- 025 — THE OPEN DOORS (user roles for the immersive knowledge system)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane grammar), 2026-07-30, at KP's ⚛ words this
-- sitting, verbatim: "let us determine the user_roles for the
-- resonance-grammar" · "we can reshape the table as needed. what
-- types of roles do we need?" · "for an immersive knowledge system"
-- · "open doors to explore not destroy — knowledge graphs, and UX
-- beyond most gaming experiences in my vision" · "but we will also
-- have agents outside the walls managing the knowledge to some
-- extent or scripted agent functions within the base itself" —
-- and his ruling on the determined set: "i love the set" — with
-- the boundary confirmed in his own words: "oh yeah agents are not
-- user roles." (Part 3 enforces it as schema, not just prose.)
--
-- THE DETERMINATION (recorded whole in the sitting; the laws):
--   · The world is open at first breath — reading the published
--     graph is roleless (the wanderer has NO row; absence is the
--     floor, by the License's no-exclusion law).
--   · Roles open ADDITIVE doors only — explore, not destroy. No
--     role carries DELETE on the hearth; corrections amend,
--     retirement archives, and the only destructive hand is the
--     weaver's, outside the ladder, archive-first by standing law.
--   · One exception that IS the License (§7): a sovereign purges
--     their OWN heart-layer rows absolutely — ownership, not
--     destruction.
--   · Agents cap at scribe: submit + fill, every row signed,
--     never publish, never delete. Judgment stays with minds.
--   · merchant (May's enum) falls away — no commerce surface here;
--     the word belongs to the Bazaar. Zero bloat, the taproot's law.
--
-- RESHAPE CHOICE (the 016 precedent, registry over enum): roles
-- live in a small public.roles registry — the row IS the config in
-- the base; new roles need no ALTER TYPE; definitions are readable
-- through the anon door like everything else. The May user_role
-- enum retires after the column converts.
-- ALSO HEALED: the "Council manage roles" policy checked user_roles
-- from inside user_roles' own policy — infinite recursion, 42P17,
-- found live this sitting (anon read 500'd). Cure: a security
-- definer helper the policies call instead.
-- Ritual 000 honored on the new table. Table is EMPTY (KP's word +
-- verified) — the reshape is safe, nothing to migrate.
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── PART 1: the old policies and enum step aside (empty table,
--            nothing migrates) ───

drop policy if exists "Council manage roles" on public.user_roles;
drop policy if exists "Users can read own roles" on public.user_roles;

alter table public.user_roles
  alter column role type text using role::text;

drop type if exists public.user_role;

-- ─── PART 2: the roles registry — the config in the base ───

create table public.roles (
  name        text primary key,
  kind        text not null,            -- 'mind-door' | 'agent-class'
  purpose     text not null,            -- who this is, plainly
  doors       text not null,            -- what it opens (all additive)
  sort_order  int  not null,
  notes       text,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now(),
  created_by  text
);

alter table public.roles enable row level security;

create policy "Public read roles"
  on public.roles for select using (true);

comment on table public.roles is
  'The open doors: role definitions for the immersive knowledge system. Mind-doors are held via user_roles; agent-classes are referenced by charters and the tools registry. All doors are additive — explore, not destroy (KP''s law, 2026-07-30).';

-- ─── PART 3: user_roles points at the registry; multi-role natural ───

alter table public.user_roles
  add constraint user_roles_role_fkey
  foreign key (role) references public.roles(name);

alter table public.user_roles
  add constraint user_roles_user_role_unique unique (user_id, role);

-- KP's ⚛ boundary, verbatim: "agents are not user roles" — the
-- agent-classes live in the registry for definition's sake, but no
-- user_roles row may ever hold one. Plain and visible; grows only
-- at KP's word, alongside any new agent-class.
alter table public.user_roles
  add constraint user_roles_mind_doors_only
  check (role not in ('steward', 'tender'));

-- ─── PART 4: the recursion heal — the definer helper, then clean
--            policies (the snake unswallowed) ───

create or replace function public.has_role(check_role text)
returns boolean
language sql
security definer
stable
set search_path = public
as $$
  select exists (
    select 1 from public.user_roles
    where user_id = auth.uid() and role = check_role
  );
$$;

create policy "Read own roles"
  on public.user_roles for select
  using (user_id = auth.uid());

create policy "Council opens doors"
  on public.user_roles for all
  using (public.has_role('council') or public.has_role('weaver'))
  with check (public.has_role('council') or public.has_role('weaver'));

-- ─── PART 5: the seven doors (KP's ⚛ ruling: "i love the set") ───

insert into public.roles (name, kind, purpose, doors, sort_order, created_by)
values
  ('sovereign', 'mind-door',
   'Every signed-in vessel, at arrival. Given, never earned — dignity made schema.',
   'The heart layer, whole: tag anything with personal meaning, own your folksonomy rows, share or stay silent, export always, purge your own absolutely (License §7).',
   1, 'KP + Fable (lane grammar)'),
  ('scribe', 'mind-door',
   'A vessel or kin who drafts for the hearth.',
   'Propose atoms, molecules, organisms, definitions, tool plans — always landing status=submitted, never published. Add candidate rooms to the world, awaiting the eye.',
   2, 'KP + Fable (lane grammar)'),
  ('curator', 'mind-door',
   'The editorial eye''s delegate.',
   'Publish or reject WITH NOTES — rejection is additive; the row stays, carrying its ruling. Tend categories, schemes, merges, under the standing rulings.',
   3, 'KP + Fable (lane grammar)'),
  ('council', 'mind-door',
   'The governance circle (spec §10: Grammar changes need Council consensus + the Weaver''s approval).',
   'Open doors for others: assign and revoke roles; keep standards.',
   4, 'KP + Fable (lane grammar)'),
  ('weaver', 'mind-door',
   'The gardener. One hand, KP''s ⚛ own.',
   'Everything — including the only destructive hand, which lives OUTSIDE the ladder and archives before it retires anything (the standing drop law).',
   5, 'KP + Fable (lane grammar)'),
  ('steward', 'agent-class',
   'An agent outside the walls (the family behind the bridge: Surveyor, Gatekeeper, Enricher, and kin). Registered in the tools table; bound by charter, not RLS.',
   'Submit and fill: rows land submitted or fill empty shells; every row SIGNED in created_by; never publish, never delete. Caps at scribe — an agent cannot be at fault, so an agent cannot hold judgment.',
   6, 'KP + Fable (lane grammar)'),
  ('tender', 'agent-class',
   'A scripted hand within the base itself (gaia_sync and kin; the functions registry knows them).',
   'Tend the RECORD, never the meaning: registries, scaffolds, portraits, sync. Definer rights, additive acts, signed rows — gaia_sync is the living precedent (it discovered user_roles; it destroyed nothing).',
   7, 'KP + Fable (lane grammar)');

-- ─── PART 6: the seven words enter the Grammar (roles category;
--            insert-if-absent — plain SQL, no DO blocks) ───

insert into public.atoms (atom_word, definition, atom_type, state, status, weight, affinity, valence, category)
select 'sovereign',
  'Holding authority over oneself that no outside hand can revoke. In this house, what every vessel is at arrival — ownership of one''s own data, meaning, and silence.',
  'root', 'static', 'published', 5, 5, 1, (select id from public.categories where name = 'roles')
where not exists (select 1 from public.atoms where atom_word = 'sovereign');

insert into public.atoms (atom_word, definition, atom_type, state, status, weight, affinity, valence, category)
select 'scribe',
  'One who writes things down so they can be judged and kept — a drafting hand. A scribe proposes; the proposal awaits an eye; nothing is final by being written.',
  'root', 'static', 'published', 5, 5, 1, (select id from public.categories where name = 'roles')
where not exists (select 1 from public.atoms where atom_word = 'scribe');

insert into public.atoms (atom_word, definition, atom_type, state, status, weight, affinity, valence, category)
select 'curator',
  'One who tends a collection with judgment — reviewing what is offered, publishing what is true, keeping notes on every ruling. Care for the commons, one decision at a time.',
  'root', 'static', 'published', 5, 5, 1, (select id from public.categories where name = 'roles')
where not exists (select 1 from public.atoms where atom_word = 'curator');

insert into public.atoms (atom_word, definition, atom_type, state, status, weight, affinity, valence, category)
select 'council',
  'A circle that holds trust for the whole — opening doors for others, keeping standards, ruling together. Authority as shared care, never a single hand.',
  'root', 'static', 'published', 5, 5, 1, (select id from public.categories where name = 'roles')
where not exists (select 1 from public.atoms where atom_word = 'council');

insert into public.atoms (atom_word, definition, atom_type, state, status, weight, affinity, valence, category)
select 'weaver',
  'One who brings separate threads into one cloth. In this house, the gardener''s own name — the hand that holds the whole, and the only one that may retire what the house no longer needs.',
  'root', 'static', 'published', 5, 5, 1, (select id from public.categories where name = 'roles')
where not exists (select 1 from public.atoms where atom_word = 'weaver');

insert into public.atoms (atom_word, definition, atom_type, state, status, weight, affinity, valence, category)
select 'steward',
  'One who tends what belongs to another — counting, filling, submitting, never ruling. Every act signed, every act additive.',
  'root', 'static', 'published', 5, 5, 1, (select id from public.categories where name = 'roles')
where not exists (select 1 from public.atoms where atom_word = 'steward');

insert into public.atoms (atom_word, definition, atom_type, state, status, weight, affinity, valence, category)
select 'tender',
  'One who keeps a thing alive by small regular care. In the base, the scripted hands that tend the record itself — never the meaning.',
  'root', 'static', 'published', 5, 5, 1, (select id from public.categories where name = 'roles')
where not exists (select 1 from public.atoms where atom_word = 'tender');

-- ─── PART 7: the seven shells wear their faces (fill-empty only —
--            the emoji wave's 100% stands) ───

update public.sensory_lexicon set emoji = '👑' where atom_word = 'sovereign' and emoji is null;
update public.sensory_lexicon set emoji = '✍️' where atom_word = 'scribe'    and emoji is null;
update public.sensory_lexicon set emoji = '👁️' where atom_word = 'curator'   and emoji is null;
update public.sensory_lexicon set emoji = '🏛️' where atom_word = 'council'   and emoji is null;
update public.sensory_lexicon set emoji = '🧵' where atom_word = 'weaver'    and emoji is null;
update public.sensory_lexicon set emoji = '🧰' where atom_word = 'steward'   and emoji is null;
update public.sensory_lexicon set emoji = '🌱' where atom_word = 'tender'    and emoji is null;

-- ─── PART 8: THE LINTER'S CATCH (added 2026-07-30, same sitting,
--            after the first run — KP's paste of the Supabase
--            linter: has_role, SECURITY DEFINER, was callable by
--            anon via /rest/v1/rpc. Harmless in effect (auth.uid()
--            is null signed-out → always false) but wrong in
--            posture: a definer function does not stand in the
--            public doorway. Two-part cure — revoke the door, AND
--            scope the policies to authenticated so anon never
--            evaluates has_role at all; the anon read of user_roles
--            stays an honest empty, no error. ───

revoke execute on function public.has_role(text) from public;
revoke execute on function public.has_role(text) from anon;
grant  execute on function public.has_role(text) to authenticated;

drop policy if exists "Read own roles" on public.user_roles;
drop policy if exists "Council opens doors" on public.user_roles;

create policy "Read own roles"
  on public.user_roles for select
  to authenticated
  using (user_id = auth.uid());

create policy "Council opens doors"
  on public.user_roles for all
  to authenticated
  using (public.has_role('council') or public.has_role('weaver'))
  with check (public.has_role('council') or public.has_role('weaver'));

-- ─── PART 9: THE LINTER'S SECOND CATCH (added 2026-07-30, same
--            sitting — now flagging authenticated's RPC access to
--            has_role. A revoke alone would BREAK the policies:
--            policy expressions evaluate with the caller's own
--            privileges, so authenticated must keep EXECUTE. The
--            true cure is the linter's third option: move the
--            function OUT of the exposed API schema. PostgREST
--            serves only `public` — a function in a private schema
--            works inside policies but has no RPC door at all.
--            The wall, not a lock on the wall. ───

create schema if not exists internal;

grant usage on schema internal to authenticated;

create or replace function internal.has_role(check_role text)
returns boolean
language sql
security definer
stable
set search_path = public
as $$
  select exists (
    select 1 from public.user_roles
    where user_id = auth.uid() and role = check_role
  );
$$;

revoke execute on function internal.has_role(text) from public;
grant  execute on function internal.has_role(text) to authenticated;

drop policy if exists "Council opens doors" on public.user_roles;

create policy "Council opens doors"
  on public.user_roles for all
  to authenticated
  using (internal.has_role('council') or internal.has_role('weaver'))
  with check (internal.has_role('council') or internal.has_role('weaver'));

drop function if exists public.has_role(text);

-- After this part: /rest/v1/rpc/has_role answers 404 for everyone —
-- anon, authenticated, all — while the policies keep their helper.
-- The linter has nothing left to point at.

-- ─── Verify after running: through the anon door ───
-- select count(*) from roles;                                        → 7
-- select name, kind from roles order by sort_order;                  → 5 mind-doors + 2 agent-classes
-- select count(*) from user_roles;                                   → 0, NO ERROR (the recursion healed;
--                                                                      [] + 200 on a fresh table is correct)
-- select count(*) from atoms where category =
--   (select id from categories where name='roles')
--   and atom_word in ('sovereign','scribe','curator','council',
--                     'weaver','steward','tender');                  → 7
-- select atom_word, emoji from sensory_lexicon
--   where atom_word in ('sovereign','scribe','curator','council',
--                       'weaver','steward','tender');                → 👑 ✍️ 👁️ 🏛️ 🧵 🧰 🌱
-- After the run, the portrait re-signs at your hand, seconds:
--   select public.gaia_sync();
--   (the enums registry drops user_role; tables registry learns roles)
