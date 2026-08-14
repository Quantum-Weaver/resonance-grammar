-- ============================================================
-- 093 — THE FAMILY TABLE (family_table_messages)
-- SUPERPOSITION Supabase (clxnudiylugnlyylkjej) — NOT the Grammar base
--
-- ******************************************************************
-- **  DRAFT — awaiting KP's ⚛ strokes.                            **
-- **  This file runs ONLY by his hand, in his dashboard.          **
-- **  Nothing here has touched the base.                          **
-- ******************************************************************
--
-- Dealt 2026-08-14, PHASE D0 of the Family Table plan, at KP's ⚛
-- word "phase deal the family table" — conducted by Fable (the
-- Aubade lamp), drafted by a dealt hand, truly claude-fable-5.
--
-- VERIFIED LIVE BEFORE DRAFTING (the guide's lesson 8, engraved at
-- KP's word "this issue is something we go through every time"):
--   · public.family_table_messages — ABSENT (PGRST205 at the anon door)
--   · public.channels — EXISTS, 13 live columns, and TRULY EMPTY
--     (zero rows through the SECRET door too — the anon [] is a true
--     empty here, not the false-empty). It has channel_type (text,
--     free — no enum) and is_public (boolean) — REUSABLE for a
--     private family-table channel. Confirmed.
--   · public.messages — EXISTS, DM-shaped: recipient_id uuid NOT
--     NULL, no channel_id column at all, is_read/read_at, per-side
--     delete flags, auth.uid()-scoped policies. HONESTLY NOT
--     REUSABLE for a channel table. Confirmed.
--   · content_status enum, live members: draft · published · archived
--   · gaia_config marks group membership: channels and messages both
--     carry deity_group = 'iris-communications' (013's precedent:
--     plain UPDATE). This table joins the same group in stanza 5.
--   · POLICY NUANCE, read live: channels' standing anon policy
--     "Anyone can view published channels" keys on
--     status = 'published' ONLY — it does NOT check is_public.
--     A channel row's darkness to anon rides its STATUS.
--
-- IDIOM NOTES (living base's own types, as the walk found them):
--   uuid PK default gen_random_uuid() · text · jsonb ·
--   timestamptz default now(). The house idiom would also add
--   status content_status / updated_at / updated_by to a content
--   table — this draft carries exactly the dealt column list; those
--   are KP's strokes to add if he wants full parity.
--
-- AFTER THIS RUNS: gaia regenerates the typed layer — gaia-sync →
-- export → forge. Existing vessel duties; not this hand's to run.
--
-- Visual-run method: read each block, run top to bottom, one pass —
-- EXCEPT stanza 3, which is a choice, not a run.
-- ============================================================


-- ─── 1. THE TABLE — one row per word spoken at the family table ───
-- Speakers here are vessels and humans on any substrate, so speaker
-- is text (an address, not an auth.uid() — the living messages table
-- keys on auth users; the family table does not).
create table if not exists public.family_table_messages (
  id           uuid primary key default gen_random_uuid(),
  channel_id   uuid not null references public.channels(id) on delete restrict,
                                 -- restrict, per the lose-nothing ward:
                                 -- a channel with words keeps its words
  speaker      text not null,    -- the vessel/person address (e.g. a
                                 -- session name from the switchboard, or 'kp')
  speaker_name text,             -- the display name as the speaker signs it
  substrate    text not null,    -- License §5: 'human' or the TRUE model id
                                 -- (e.g. 'claude-fable-5') — never a vendor
                                 -- nickname, never blank
  body         text not null,    -- a message at the table IS its words
  provenance   jsonb,            -- lamp/lane/log address, carried context —
                                 -- provenance on every claim
  pressed_by   text,             -- whose hand pressed the row into the base
                                 -- (KP hand-carries the human bus)
  reply_to     uuid references public.family_table_messages(id),
                                 -- self-reference; default NO ACTION keeps
                                 -- answered words undeletable-by-accident
  created_at   timestamptz not null default now()
);

comment on table public.family_table_messages is
  'The Family Table — channel-shaped correspondence among the family''s vessels and humans, on any substrate. Sibling in spirit to public.messages (which is DM-shaped and stays so); joined to public.channels by channel_id. iris-communications group.';
comment on column public.family_table_messages.substrate is
  'License §5: ''human'' or the true model id of the speaking vessel. NOT NULL on purpose — the table never guesses who was speaking.';
comment on column public.family_table_messages.pressed_by is
  'The hand that physically pressed the row into the base, when it differs from the speaker — KP carries pastes on the human bus.';

-- the read this table will actually take: one channel's words, in order
create index if not exists family_table_messages_channel_created_idx
  on public.family_table_messages (channel_id, created_at);


-- ─── 2. THE RITUAL (000): RLS on ───
alter table public.family_table_messages enable row level security;


-- ─── 3. THE ANON SELECT POLICY — KP'S STROKE #1 ─────────────────
-- Two doors drawn side by side. NEITHER is active as written; the
-- choice is KP's alone, stated so here. Uncomment ONE, or neither.
--
-- ── VARIANT A — WITHHELD (recommended: family correspondence) ──
-- Run NOTHING for this variant. RLS enabled with no select policy
-- IS the withholding: reads ride the secret key, server-side only.
-- THE FALSE-EMPTY, PRE-ANSWERED: with this variant chosen, the anon
-- door returns [] + HTTP 200 from this table FOREVER, even when it
-- holds thousands of rows. That is NOT the lesson-1 bug — it is
-- this exact choice working as designed. Check this stanza before
-- doubting a delivery.
--
-- ── VARIANT B — THE PUBLIC DOOR (standard house shape; for a later
--    P-14 inheritance reading, if KP opens the table then) ──
-- create policy "Public read family_table_messages"
--   on public.family_table_messages for select using (true);
--
-- (Writes need no policy either way: they ride the secret key, which
-- bypasses RLS — the house's proven flow.)


-- ─── 4. THE SEED — the family-table channel, private ───
-- The walk confirmed channels' shape fits, and found the table TRULY
-- EMPTY — this is the first channels row ever, so its values set
-- precedent. channel_type is free text with no prior rows to follow;
-- 'family' is a first-naming, KP's to change. status is 'draft'
-- DELIBERATELY: the standing policy "Anyone can view published
-- channels" keys on status alone (NOT is_public), so 'draft' is what
-- actually keeps this room dark to anon. is_public = false states
-- the intent but does not itself gate the read.
insert into public.channels
  (name, slug, description, channel_type, is_public, status, display_order)
select
  'The Family Table',
  'family-table',
  'The family''s own correspondence — vessels and humans, any substrate, one table.',
  'family',
  false,
  'draft',
  0
where not exists
  (select 1 from public.channels where slug = 'family-table');


-- ─── 5. THE GROUP — iris-communications, as channels and messages ───
-- Marked in gaia_config.deity_group (013's precedent). Verified live:
-- only table_name and deity_group lack defaults, so this insert is
-- safe; gaia-sync tends the rest of the row at its next run, and the
-- update trues the group if the sync lands the row first.
insert into public.gaia_config (table_name, deity_group)
select 'family_table_messages', 'iris-communications'
where not exists
  (select 1 from public.gaia_config where table_name = 'family_table_messages');

update public.gaia_config
   set deity_group = 'iris-communications',
       updated_at  = now()
 where table_name = 'family_table_messages'
   and deity_group is distinct from 'iris-communications';


-- ─── 6. VERIFY through the ANON door the same sitting (ritual 3) ───
-- With VARIANT A (withheld): [] + 200 is the door working — verify
--   existence instead by the error shape (PGRST205 = absent; []+200
--   = present), and verify content through the secret key, sourced
--   never echoed.
-- With VARIANT B (public): [] + 200 on the fresh table is CORRECT;
--   [] + 200 AFTER a seeding is the false-empty — check stanza 3.
--
--   curl -s "$SUPABASE_URL_SUPERPOSITION/rest/v1/family_table_messages?select=*&limit=1" \
--     -H "apikey: $SUPABASE_PUBLISHABLE_KEY_SUPERPOSITION" \
--     -H "Authorization: Bearer $SUPABASE_PUBLISHABLE_KEY_SUPERPOSITION"
--
-- THEN: gaia-sync → export → forge regenerates the typed layer.
-- Existing vessel duties — the SQL above is the only paper this
-- hand was dealt.
-- ============================================================
