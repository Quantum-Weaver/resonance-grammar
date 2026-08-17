-- ============================================================================
-- 099 — THE PANTHEON (pantheon)
-- KNOWLEDGE Supabase — the grammar base
--
-- ******************************************************************
-- **  DRAFT — awaiting KP's ⚛ strokes.                            **
-- **  This file runs ONLY by his hand, in his dashboard.          **
-- **  Nothing here has touched the base.                          **
-- ******************************************************************
--
-- Drafted 2026-08-16 (the Jamb sitting) by Jamb 🕯️ · Opus (Claude), during
-- THE FACE TURN, at KP's ⚛ "i will want your help with the sort order please"
-- and then "i like what you were doing please continue".
--
-- ── WHAT THIS CLOSES, and it is two gaps that turned out to be one ──────────
--
-- GAP ONE — A ROOM'S ORDER IS NOT ITS OWN FACT. `gaia_config.sort_order` is
-- doing two jobs at once: it orders tables INSIDE a room, and the generated
-- navigation infers a ROOM's position from whichever of its tables sorts
-- lowest. That inference is fragile, and it broke visibly this sitting: the
-- moment `beacons` joined `workshop` carrying a NULL sort_order, the whole
-- workshop door jumped to the front of the sidebar, ahead of lattice. One
-- empty cell moved every door in the house. A room's place in the nav should
-- be a thing someone decided, not a side effect of its contents.
--
-- GAP TWO — THE SIX ROOM FACES LIVE IN TYPESCRIPT. `enrich_faces.ts` carries
-- GROUP_FACES as a hardcoded constant, and its own header says why: there is
-- no home for them in the base. `gaia_config.icon_emoji` is NULL on all 31
-- knowledge rows, so the only provenance for the six emoji and hexes is
-- `resonance-gaia/docs/THE-DEITY-FACES.md`, a document dated 08-07 that is
-- already stale for table names (it still says `resonance_beacons`). Design
-- living in a generator is exactly what THE FACE TURN's own ruling set aside:
-- the path from shelf to card is *write a view*, in SQL, where KP works.
--
-- THEY ARE THE SAME GAP. A room's order and a room's face are both properties
-- OF THE ROOM, and the base has nowhere to put either. One table holds both,
-- and `enrich_faces.ts` then reads its faces and its ordering from the base
-- instead of from a constant and an inference.
--
-- ── VERIFIED LIVE BEFORE DRAFTING (the guide's lesson 8) ────────────────────
--
--   · public.pantheon — ABSENT (HTTP 404 at the door), checked in BOTH
--     bases: absent in knowledge and absent in superposition, so the name
--     is free across the house and this cannot collide with a sibling
--     later. `deity_groups`, `rooms` and `deities` were checked too, in
--     case this already existed wearing another word. All absent; nothing
--     is being duplicated.
--   · NO relation in the base describes the groups: 35 relations, none
--     matching deity|group|room|face|nav|door.
--   · `deity_group` IS PLAIN TEXT, not an enum. The 12 live enums are
--     language · beacon_type · user_role · atom_type · naming_convention ·
--     atom_state · molecule_type · bond_type · atom_role · functional_group ·
--     molecule_domain · tool_type. So enum ordering was never available here
--     and nothing is being taken away by not using it.
--   · THE SEATS, live after KP's own update this sitting:
--     athena = 19 tables · daedalus = 12. `beacons` moved to athena/workshop
--     at his ⚛ ruling "beacons is content, a list of apps".
--   · THE GROUPS, live: lattice 6 · classification 6 · meaning 4 ·
--     workshop 2 · access 1 · registries 12.
--   · `beacons.sort_order` IS STILL NULL — the only NULL in the base.
--     Stanza 5 settles it.
--
-- IDIOM NOTES — this table is shaped after `categories`, which is the closest
-- living precedent in this base (id · name · description · sort_order ·
-- icon_emoji · created_at · updated_at). Same uuid PK with
-- gen_random_uuid(), same timestamptz default now(). Three columns are added
-- that `categories` has no need of: `deity_name` (the mythic seat),
-- `color_hex`, and `color_token` (the `$lib/cosmic` key the hex answers to,
-- carried so a face names its palette entry rather than duplicating a hue).
--
-- KP'S STROKES, none of them taken here:
--   1. THE TABLE'S NAME IS RULED — KP ⚛, this sitting: "table should be
--      named pantheon". The draft had reached for `deity_groups`, which
--      described the column it joins rather than the thing itself. A
--      pantheon IS the set of deities; the seats are athena and daedalus,
--      and the rooms are where they sit. `gaia_config.deity_group` joins
--      `pantheon.name` unchanged.
--   2. THE ROOM ORDER in stanza 4 is drafted to PRESERVE today's derived
--      order exactly (lattice · classification · meaning · workshop ·
--      access), so running this changes no output on day one. Whether that
--      IS the order he wants is the question he opened.
--   3. Whether `registries` belongs in this table at all. It is included
--      because it is a real group with a real face, and because the front
--      end's exclusion rides the SEAT (daedalus) and not this table — so its
--      presence here costs nothing and its absence would make the table an
--      incomplete census of the base's own groups.
-- ============================================================================


-- ── 1. the table ────────────────────────────────────────────────────────────

create table public.pantheon (
  id          uuid primary key default gen_random_uuid(),
  name        text not null unique,   -- joins gaia_config.deity_group
  deity_name  text not null,          -- the mythic seat: athena · daedalus
  description text,
  sort_order  integer,                -- THE ROOM'S OWN ORDER, its own fact
  icon_emoji  text,
  color_hex   text,
  color_token text,                   -- the $lib/cosmic key, e.g. quantum.light
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now()
);


-- ── 2. RLS on — Supabase lints any public table without it ──────────────────

alter table public.pantheon enable row level security;


-- ── 3. the house door — public read; writes stay with the secret key ────────
--     Plain statement, never a DO block (ritual 000, lesson 2).

create policy "Public read pantheon"
  on public.pantheon for select using (true);


-- ── 4. the six rooms ────────────────────────────────────────────────────────
--     Faces carried verbatim from resonance-gaia/docs/THE-DEITY-FACES.md,
--     which is signed provenance for the colours and emoji and for nothing
--     else. Every color_token below was verified present in
--     resonance-gaia/src/lib/cosmic/colors.ts before drafting.
--
--     sort_order PRESERVES TODAY'S DERIVED ORDER so this lands invisibly.

insert into public.pantheon
  (name, deity_name, sort_order, icon_emoji, color_hex, color_token, description)
values
  ('lattice',        'athena',   1, '💠', '#7D6CEA', 'quantum.light',
   'The building blocks and their bonds — atoms, molecules, organisms.'),
  ('classification', 'athena',   2, '🪜', '#00B894', 'library.green',
   'The Linnean ladder — schemes, categories, paths, relations.'),
  ('meaning',        'athena',   3, '✨', '#A29BFE', 'mood.creative',
   'Where sense ignites — etymology, thesaurus, sensory lexicon, folksonomies.'),
  ('workshop',       'athena',   4, '🧰', '#F18166', 'fire.light',
   'The making bench beside the forge — the tools and the apps the house builds.'),
  ('access',         'athena',   5, '🗝️', '#636E72', 'void.base',
   'Thresholds honored — who may pass.'),
  ('registries',     'daedalus', 6, '📇', '#1A94F3', 'cosmic.light',
   'The base knowing itself. Shown in Gaia''s Schema room, not in the front end.');


-- ── 5. beacons takes its place on the bench ─────────────────────────────────
--     awen is 50; beacons is the only table in the base with a NULL
--     sort_order, which is what threw the workshop door to the front of the
--     nav. 51 seats it beside its sibling.

update public.gaia_config
   set sort_order = 51
 where table_name = 'beacons';


-- ── 6. the new table joins the base's own census ────────────────────────────
--     Every table carries a gaia_config row. Without this, gaia's enricher
--     reports it as drift ("served but unconfigured") — correctly, and
--     forever. It is metadata about presentation, so it is daedalus-seated
--     and sits with the registries. 13 puts it after `views` (12).
--     Precedent: 093 stanza 5, plain UPDATE/INSERT, no ceremony.

insert into public.gaia_config (table_name, deity_group, deity_name, sort_order)
values ('pantheon', 'registries', 'daedalus', 13);


-- ── VERIFY THROUGH THE PUBLIC DOOR, never the secret key ────────────────────
--     The anon read is what apps and inventory tools actually see. A count
--     of 0 here right after a successful insert means the POLICY, not the
--     insert (ritual 000, lesson 1 — the false-empty at the API layer).
--
--       select name, deity_name, sort_order, icon_emoji, color_hex
--         from public.pantheon
--        order by sort_order;
--       -- expect 6 rows, lattice first, registries last
--
--       select table_name, sort_order from public.gaia_config
--        where deity_group = 'workshop' order by sort_order;
--       -- expect awen 50, beacons 51
--
--     Then, in resonance-gaia:  npx tsx src/pieces/run_faces.ts knowledge
--     -- expect 20 files, 5 rooms, 13 surfaces (3 card-driven), and the door
--        order lattice · classification · meaning · workshop · access
-- ============================================================================
