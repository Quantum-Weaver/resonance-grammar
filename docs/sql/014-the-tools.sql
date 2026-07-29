-- ============================================================
-- 014 — THE TOOLS (the spring gets a registry)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane A), 2026-07-28, at KP's design, his words:
--   "to make tools, we will need a tools table 'in my mind' /
--    that table have an enums column for tool type /
--    that table links to the organism, molecule, or atom associated"
-- Companion realm: resonance-awen (tools born standalone, combined
-- freely). A tool is a verb made standalone; the enum below carries
-- the verb families from the Prometheus concept breakdown —
-- MEMBERS ARE KP'S RULING, edit freely before running.
-- THE FLOW, KP's law, same sitting, verbatim: "we just plan them in
-- the grammar, then we build them in the workspace" — this table is
-- the PLANNING surface (rows are seeds, status 'imagined'); the
-- building happens in resonance-awen/tools/<slug>, and `home` fills
-- in when the water flows. Intent precedes the gear, formalized.
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── 1. The enum — tool_type (the verb a tool makes standalone) ───
create type public.tool_type as enum (
  'capture',    -- sound in, stroke in, word in, frame in
  'arrange',    -- in time (timeline/conductor) or space (canvas/layout)
  'transform',  -- effects, filters, motion applied
  'refine',     -- trim, edit, revise
  'combine',    -- mix, layer, bind
  'emit',       -- render, encode, export, publish
  'witness',    -- play, view, read — the standalone player family
  'translate'   -- across senses: captions, transcripts, folksonomy (P-10 floor)
);

-- ─── 2. THE TOOLS — one row per standalone tool of the spring ───
create table if not exists public.tools (
  id             uuid primary key default gen_random_uuid(),
  name           text not null,
  slug           text not null unique,          -- tools/<slug> in resonance-awen
  tool_type      public.tool_type not null,
  definition     text,                          -- what it does, plainly
  home           text,                          -- repo path (resonance-awen/tools/<slug>)
  status         text not null default 'imagined',  -- plain text on purpose;
                                                 -- becomes an enum at KP's word
                                                 -- once the lifecycle names itself
  -- the tier link: exactly one of the three, per KP's design —
  -- real FKs, not a polymorphic pointer, so provenance survives
  atom_id        uuid references public.atoms(id)      on delete restrict,
  molecule_id    uuid references public.molecules(id)  on delete restrict,
  organism_id    uuid references public.organisms(id)  on delete restrict,
  constraint tools_one_tier check (
    (atom_id is not null)::int
    + (molecule_id is not null)::int
    + (organism_id is not null)::int = 1
  ),
  story          text,                          -- the story block seed: whose need birthed it
  created_at     timestamptz not null default now(),
  updated_at     timestamptz not null default now(),
  created_by     text,
  updated_by     text
);

comment on table public.tools is
  'The spring''s registry: standalone tools (resonance-awen), each a verb made standalone, each linked to exactly one Grammar tier — atom, molecule, or organism.';
comment on column public.tools.tool_type is
  'The verb family the tool makes standalone. Members ruled by KP.';

-- ─── 3. The ritual (000): RLS on + the house door ───
alter table public.tools enable row level security;

create policy "Public read tools"
  on public.tools for select using (true);

-- ─── 4. Verify through the anon door after running (the ritual's
--        third step): select count(*) from tools should return 0
--        rows-error-free, not a false-empty. ───
