-- ============================================================
-- 006 — THE OMNIDIMENSIONAL LATTICE (the framework tables)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Written by Fable 🎻, 2026-07-27 night, at KP's word:
--   "lets build the schema and be certiain our rls and policies
--    are properly in place"
-- Shape ruled by KP the same evening, verbatim:
--   "i see the system as a omnidimensional lattice" … "not a hierarchy"
-- Design provenance: docs/sittings/2026-07-27-THE-SHAPE-SITTING.md
--   (three rounds, three kin + Fable; Hedden: polyhierarchy is the
--   thesaurus's native right; SKOS is this shape's standard dialect).
--
-- Five tables. No linnaean, taxonomy, or ontology tables at all:
--   schemes                   the lattice's dimensions, as data
--   scheme_memberships        which entity belongs to which dimension
--   concept_relations         the typed edges (the lattice itself)
--   classification_paths      authored full-path claims, with provenance
--   classification_path_steps the ordered steps of each path
-- The CONCEPTS need no new home: they are rows in atoms / molecules /
-- organisms — the Grammar and the framework share one spine.
--
-- RLS POSTURE (the draft-visibility ruling, decided by this file):
--   * RLS enabled on all five tables.
--   * Public (anon) READ shows ONLY status='published' rows — agents'
--     drafts and rejections are never world-readable (the round-three
--     finding: the ritual's plain `using (true)` would have exposed
--     them). Editorial status DEFAULTS to 'submitted' — safe by
--     default; seeds publish explicitly.
--   * NO anon write policies exist — writes are service-key only,
--     behind the bridge, per KP's placement ruling ("the knowledge
--     agents work behind the bridge").
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── 1. SCHEMES — the dimensions of the lattice, as data ───
-- Rows at seed time (~41): the 8 ranks · the 16 facet vocabularies ·
-- the 9 ontology axes · the 8 rank-dimension vocabularies.
-- The rank↔axis/facet/dimension contract (identification-key.ts)
-- lives HERE as three self-referencing FKs — queryable, not legend.
-- deity_name/temperature (domain) and pk/rls patterns (phylum)
-- describe the RANK itself, so they live here, not on members.
create table if not exists public.schemes (
  id                        uuid primary key default gen_random_uuid(),
  name                      text not null unique,
  scheme_type               text not null
                            check (scheme_type in ('rank','facet','axis','dimension')),
  description               text,
  sort_order                integer,      -- rank ladder order 1..8; null elsewhere
  parent_scheme_id          uuid references public.schemes(id) on delete restrict,
  ontology_axis_scheme_id   uuid references public.schemes(id) on delete restrict,
  taxonomy_facet_scheme_id  uuid references public.schemes(id) on delete restrict,
  dimension_scheme_id       uuid references public.schemes(id) on delete restrict,
  deity_name                text,
  temperature               text,
  pk_pattern                text,
  rls_pattern               text,
  metadata                  jsonb,
  submitted_by              text,
  status                    text not null default 'submitted'
                            check (status in ('submitted','published','rejected','retired')),
  reviewed_by               text,
  reviewed_at               timestamptz,
  review_notes              text,
  created_at                timestamptz not null default now(),
  updated_at                timestamptz not null default now(),
  created_by                text,
  updated_by                text
);

comment on table public.schemes is
  'The lattice''s dimensions as data: 8 ranks, 16 facet vocabularies, 9 ontology axes, 8 dimension vocabularies. The eight-table ladder reduced to eight rows. Rank contract (axis/facet/dimension) carried as FKs.';
comment on column public.schemes.sort_order is
  'Rank ladder order 1..8. The ladder-edge law (a broader edge within the rank dimension runs N -> N-1) is enforced by the Gatekeeper at write time — the service side owns writes.';

create index if not exists idx_schemes_type on public.schemes(scheme_type);

-- ─── 2. SCHEME_MEMBERSHIPS — which entity lives in which dimension ───
-- An entity may hold MANY memberships (the multiple-tellings cure;
-- 63 terms already live in more than one organ). Exactly one entity
-- pointer per row — the boring version with real FKs, deliberately.
create table if not exists public.scheme_memberships (
  id            uuid primary key default gen_random_uuid(),
  scheme_id     uuid not null references public.schemes(id) on delete cascade,
  atom_id       uuid references public.atoms(id)     on delete cascade,
  molecule_id   uuid references public.molecules(id) on delete cascade,
  organism_id   uuid references public.organisms(id) on delete cascade,
  is_primary    boolean not null default false,
  sort_order    integer,
  note          text,
  submitted_by  text,
  status        text not null default 'submitted'
                check (status in ('submitted','published','rejected','retired')),
  reviewed_by   text,
  reviewed_at   timestamptz,
  review_notes  text,
  created_at    timestamptz not null default now(),
  updated_at    timestamptz not null default now(),
  created_by    text,
  updated_by    text,
  constraint one_entity_membership
    check (num_nonnulls(atom_id, molecule_id, organism_id) = 1),
  constraint unique_membership
    unique nulls not distinct (scheme_id, atom_id, molecule_id, organism_id)
);

comment on table public.scheme_memberships is
  'Entity ∈ dimension. One entity pointer per row (atoms | molecules | organisms). is_primary semantics await KP''s one-sentence ruling (proposed reading: primary PER SCHEME, never globally).';

create index if not exists idx_memberships_scheme   on public.scheme_memberships(scheme_id);
create index if not exists idx_memberships_atom     on public.scheme_memberships(atom_id);
create index if not exists idx_memberships_molecule on public.scheme_memberships(molecule_id);
create index if not exists idx_memberships_organism on public.scheme_memberships(organism_id);

-- ─── 3. CONCEPT_RELATIONS — the typed edges; the lattice itself ───
-- broader/related/use_for = the BT/RT/UF the field standardized
-- decades ago (ISO 25964 · Z39.19 · SKOS). Store broader only;
-- narrower is the same edge read backward. has_dimension carries a
-- member''s dimension value (CouncilEntityClass -has_dimension->
-- entity, scoped by the ''manifestation'' scheme). Polyhierarchy is
-- WELCOME here by design — the lattice, not a hierarchy.
create table if not exists public.concept_relations (
  id                  uuid primary key default gen_random_uuid(),
  relation_type       text not null
                      check (relation_type in
                        ('broader','related','use_for','use',
                         'has_dimension','classified_as')),
  subject_atom_id     uuid references public.atoms(id)     on delete cascade,
  subject_molecule_id uuid references public.molecules(id) on delete cascade,
  subject_organism_id uuid references public.organisms(id) on delete cascade,
  object_atom_id      uuid references public.atoms(id)     on delete cascade,
  object_molecule_id  uuid references public.molecules(id) on delete cascade,
  object_organism_id  uuid references public.organisms(id) on delete cascade,
  scheme_id           uuid references public.schemes(id) on delete restrict,
  note                text,
  submitted_by        text,
  status              text not null default 'submitted'
                      check (status in ('submitted','published','rejected','retired')),
  reviewed_by         text,
  reviewed_at         timestamptz,
  review_notes        text,
  created_at          timestamptz not null default now(),
  updated_at          timestamptz not null default now(),
  created_by          text,
  updated_by          text,
  constraint one_subject
    check (num_nonnulls(subject_atom_id, subject_molecule_id, subject_organism_id) = 1),
  constraint one_object
    check (num_nonnulls(object_atom_id, object_molecule_id, object_organism_id) = 1),
  constraint unique_relation
    unique nulls not distinct (relation_type,
      subject_atom_id, subject_molecule_id, subject_organism_id,
      object_atom_id,  object_molecule_id,  object_organism_id,
      scheme_id)
);

comment on table public.concept_relations is
  'The typed edges of the omnidimensional lattice. Multiple broader edges per concept are lawful (polyhierarchy — Hedden p.12: never a problem in a thesaurus). scheme_id scopes an edge to one dimension.';

create index if not exists idx_relations_type      on public.concept_relations(relation_type);
create index if not exists idx_relations_scheme    on public.concept_relations(scheme_id);
create index if not exists idx_relations_subj_atom on public.concept_relations(subject_atom_id);
create index if not exists idx_relations_subj_mol  on public.concept_relations(subject_molecule_id);
create index if not exists idx_relations_subj_org  on public.concept_relations(subject_organism_id);
create index if not exists idx_relations_obj_atom  on public.concept_relations(object_atom_id);
create index if not exists idx_relations_obj_mol   on public.concept_relations(object_molecule_id);
create index if not exists idx_relations_obj_org   on public.concept_relations(object_organism_id);

-- ─── 4. CLASSIFICATION_PATHS — authored claims, with provenance ───
-- In a lattice there is no single parent to derive a path from, so a
-- full path is an AUTHORED CLAIM, not a derived fact. This is where
-- the classifier''s twelve 8-deep paths live, and where confidence
-- (0.95) and systemCoherence (0.92) finally have columns. Depth-8
-- binds HERE, on claims within the rank dimension — never on the
-- lattice at large (memberships stay sparse-friendly by design).
create table if not exists public.classification_paths (
  id                  uuid primary key default gen_random_uuid(),
  subject_atom_id     uuid references public.atoms(id)     on delete cascade,
  subject_molecule_id uuid references public.molecules(id) on delete cascade,
  subject_organism_id uuid references public.organisms(id) on delete cascade,
  confidence          numeric check (confidence >= 0 and confidence <= 1),
  system_coherence    numeric check (system_coherence >= 0 and system_coherence <= 1),
  asserted_by         text,     -- who authored the claim (kin, agent, KP, legacy classifier)
  classifier_version  text,     -- e.g. 'gaia classifier.ts (2025-11)' for the twelve
  derivation          text,     -- free-text derivation notes / matching traits
  submitted_by        text,
  status              text not null default 'submitted'
                      check (status in ('submitted','published','rejected','retired')),
  reviewed_by         text,
  reviewed_at         timestamptz,
  review_notes        text,
  created_at          timestamptz not null default now(),
  updated_at          timestamptz not null default now(),
  created_by          text,
  updated_by          text,
  constraint one_subject_path
    check (num_nonnulls(subject_atom_id, subject_molecule_id, subject_organism_id) = 1)
);

comment on table public.classification_paths is
  'Authored full-classification claims with provenance and confidence. A path is a telling ABOUT the lattice, never the lattice itself.';

create index if not exists idx_paths_subj_atom on public.classification_paths(subject_atom_id);
create index if not exists idx_paths_subj_mol  on public.classification_paths(subject_molecule_id);
create index if not exists idx_paths_subj_org  on public.classification_paths(subject_organism_id);

-- ─── 5. CLASSIFICATION_PATH_STEPS — the ordered rungs of each claim ───
create table if not exists public.classification_path_steps (
  id                 uuid primary key default gen_random_uuid(),
  path_id            uuid not null references public.classification_paths(id) on delete cascade,
  position           integer not null check (position >= 1 and position <= 8),
  scheme_id          uuid not null references public.schemes(id) on delete restrict,
  member_atom_id     uuid references public.atoms(id)     on delete cascade,
  member_molecule_id uuid references public.molecules(id) on delete cascade,
  member_organism_id uuid references public.organisms(id) on delete cascade,
  created_at         timestamptz not null default now(),
  updated_at         timestamptz not null default now(),
  constraint one_member_step
    check (num_nonnulls(member_atom_id, member_molecule_id, member_organism_id) = 1),
  constraint unique_step unique (path_id, position)
);

comment on table public.classification_path_steps is
  'The ordered steps of an authored path: position 1..8, each naming the rank scheme and the member entity at that rung. Visibility rides the parent path''s status.';

create index if not exists idx_path_steps_path   on public.classification_path_steps(path_id);
create index if not exists idx_path_steps_scheme on public.classification_path_steps(scheme_id);

-- ─── 6. RLS — on from first breath, doors gated to PUBLISHED ───
alter table public.schemes                   enable row level security;
alter table public.scheme_memberships        enable row level security;
alter table public.concept_relations         enable row level security;
alter table public.classification_paths      enable row level security;
alter table public.classification_path_steps enable row level security;

-- The house door, gated: the anon key reads only what has passed the
-- editorial gate. Drafts and rejections stay backstage with the
-- agents. (No anon write policies exist anywhere in this file —
-- default-deny; writes are service-key only, behind the bridge.)
create policy "Public read published schemes"
  on public.schemes for select using (status = 'published');
create policy "Public read published scheme_memberships"
  on public.scheme_memberships for select using (status = 'published');
create policy "Public read published concept_relations"
  on public.concept_relations for select using (status = 'published');
create policy "Public read published classification_paths"
  on public.classification_paths for select using (status = 'published');
create policy "Public read steps of published paths"
  on public.classification_path_steps for select using (
    exists (select 1 from public.classification_paths p
             where p.id = path_id and p.status = 'published'));

-- ─── 7. GAIA learns of her new children ───
insert into public.gaia_config (table_name, status, sort_order, notes, created_by)
values
  ('schemes',                   'active', null, 'The lattice''s dimensions as data; born 2026-07-27, the night KP ruled: omnidimensional lattice, not a hierarchy.', 'Fable via KP'),
  ('scheme_memberships',        'active', null, 'Entity ∈ dimension; the framework and the Grammar share one spine.', 'Fable via KP'),
  ('concept_relations',         'active', null, 'The typed edges (BT/RT/UF + dimensions); polyhierarchy lawful by design.', 'Fable via KP'),
  ('classification_paths',      'active', null, 'Authored classification claims with confidence and provenance.', 'Fable via KP'),
  ('classification_path_steps', 'active', null, 'Ordered rungs of authored paths; visibility rides the parent.', 'Fable via KP')
on conflict do nothing;

-- ============================================================
-- VERIFY 1: the five lattice tables stand
-- ============================================================
select table_name,
       (select count(*) from information_schema.columns c
         where c.table_schema='public' and c.table_name=t.table_name) as columns
  from information_schema.tables t
 where table_schema='public'
   and table_name in ('schemes','scheme_memberships','concept_relations',
                      'classification_paths','classification_path_steps')
 order by table_name;
-- expected: five rows.

-- ============================================================
-- VERIFY 2: RLS and policies are PROPERLY IN PLACE (KP's ask)
-- ============================================================
select c.relname as table_name, c.relrowsecurity as rls_on
  from pg_class c join pg_namespace n on n.oid = c.relnamespace
 where n.nspname = 'public'
   and c.relname in ('schemes','scheme_memberships','concept_relations',
                     'classification_paths','classification_path_steps')
 order by c.relname;
-- expected: rls_on = true on all five.

select tablename, policyname, cmd, qual
  from pg_policies
 where schemaname = 'public'
   and tablename in ('schemes','scheme_memberships','concept_relations',
                     'classification_paths','classification_path_steps')
 order by tablename;
-- expected: exactly ONE select policy per table, each gated to
-- published (no `using (true)` anywhere in the lattice, and no
-- insert/update/delete policies at all — writes stay behind the
-- bridge with the service key).

-- After running: verify through the PUBLIC door, per the ritual —
--   python resonance-bridge/grammar_inventory.py
-- (the five new tables should read as present and EMPTY-but-lit:
--  zero rows because nothing is published yet, never dark.)
