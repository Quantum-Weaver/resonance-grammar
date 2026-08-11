-- ============================================================================
-- 086 — THE VIEWS MENDED: security_invoker, and the lints our queries raised
--
-- KP's ⚛ word, 2026-08-11: "repair the linter errors in the database caused by
-- our queries."
--
-- WHAT SEED 085 RAISED, and why it is a real finding rather than noise:
-- `atom_whole` and `atom_dressed` were created without `security_invoker`, so
-- in Postgres they run with their OWNER's rights rather than the caller's.
-- Both were verified readable through the ANON door — which means they read
-- their base tables (atoms · sensory_lexicon · etymology · schemes ·
-- scheme_memberships · molecules · molecule_atoms · concept_relations ·
-- thesaurus) with the owner's privileges, stepping past whatever RLS those
-- tables keep. Supabase's own advisor names this `security_definer_view`.
--
-- Nothing was exposed that was not already public — the Almanac and its kin
-- have always read these tables through the anon door — but the VIEW should
-- not be the thing deciding that. A view that quietly carries more authority
-- than its caller is a door with no lock reported as a wall.
--
-- THE MEND is one clause per view: `security_invoker = true` makes the view
-- run as whoever queries it, so RLS on the base tables applies exactly as it
-- would to a direct select. The definitions are otherwise UNCHANGED — this
-- file re-creates them verbatim from 085 with the option added, so the two
-- files can be diffed and the only difference is the security posture.
--
-- Requires Postgres 15+. Supabase runs 15 or later, so this is safe.
--
-- Drafted 2026-08-11 for KP's ⚛ hand.
-- ============================================================================


-- ── 1. THE ATOM WHOLE, invoker-scoped ───────────────────────────────────────

create or replace view public.atom_whole
with (security_invoker = true)
as
select
  a.id                              as atom_id,
  a.atom_word,
  a.snake_case,
  a.screaming_case,
  a.pascal_case,

  a.definition,
  a.atom_type,
  a.category_name,
  a.category                        as category_id,
  a.modifiers,
  a.weight,
  a.affinity,
  a.valence,
  a.state,
  a.status,

  s.emoji                           as sensory_emoji,
  s.color_hex                       as sensory_color,
  s.texture                         as sensory_texture,
  s.shape                           as sensory_shape,
  s.movement                        as sensory_movement,
  s.temperature                     as sensory_temperature,
  s.sound_description               as sensory_sound,
  s.sound_tone,
  s.sound_pitch,
  s.sound_frequency,
  s.sound_timbre,
  s.taste                           as sensory_taste,
  s.smell                           as sensory_smell,
  (s.emoji is not null)             as has_face,
  (s.color_hex is not null)         as has_color,

  e.root_word,
  e.root_language,
  e.historical_meaning,
  e.sanctuary_meaning,
  e.completion_progress             as etymology_progress,
  (e.completion_progress = 100)     as has_etymology,

  coalesce(sch.schemes, '{}')         as scheme_names,
  coalesce(sch.primary_schemes, '{}') as primary_scheme_names,
  coalesce(mol.molecules, '{}')       as molecule_names,
  coalesce(mol.n, 0)                  as molecule_count,
  coalesce(rel.relations, '{}')       as relation_types,

  coalesce(th.folksonomies, '{}')   as thesaurus_folksonomies,
  coalesce(th.n, 0)                 as thesaurus_entry_count

from public.atoms a
left join public.sensory_lexicon s on s.atom_id = a.id
left join public.etymology       e on e.atom_id = a.id

left join lateral (
  select array_agg(distinct sc.name)                              as schemes,
         array_agg(distinct sc.name) filter (where sm.is_primary) as primary_schemes
  from public.scheme_memberships sm
  join public.schemes sc on sc.id = sm.scheme_id
  where sm.atom_id = a.id
) sch on true

left join lateral (
  select array_agg(distinct m.name) as molecules, count(distinct m.id) as n
  from public.molecule_atoms ma
  join public.molecules m on m.id = ma.molecule_id
  where ma.atom_id = a.id
) mol on true

left join lateral (
  select array_agg(distinct cr.relation_type::text) as relations
  from public.concept_relations cr
  where cr.subject_atom_id = a.id or cr.object_atom_id = a.id
) rel on true

left join lateral (
  select array_agg(distinct t.folksonomy_type) as folksonomies, count(*) as n
  from public.thesaurus t
  where lower(t.word) = a.atom_word
) th on true;


-- ── 2. THE DRESSED READING, invoker-scoped ──────────────────────────────────

create or replace view public.atom_dressed
with (security_invoker = true)
as
select
  w.atom_id, w.atom_word, w.snake_case, w.screaming_case, w.pascal_case,
  null::text          as folksonomy_type,
  w.definition,
  w.sensory_emoji     as emoji,
  w.sensory_color     as color_hex,
  w.category_name, w.atom_type, w.modifiers,
  w.root_language, w.root_word,
  false               as is_override
from public.atom_whole w

union all

select
  w.atom_id, w.atom_word, w.snake_case, w.screaming_case, w.pascal_case,
  t.folksonomy_type,
  coalesce(t.definition, w.definition)    as definition,
  coalesce(t.emoji,      w.sensory_emoji) as emoji,
  coalesce(t.color_hex,  w.sensory_color) as color_hex,
  w.category_name, w.atom_type, w.modifiers,
  w.root_language, w.root_word,
  true                as is_override
from public.atom_whole w
join public.thesaurus t on lower(t.word) = w.atom_word;


-- ── 3. THE COMMENTS, carried across unchanged ───────────────────────────────

comment on view public.atom_whole is
  'The atom whole — one row per atom carrying its own fields, its senses, its etymology, and the lattice around it (schemes, molecules, relation kinds) as arrays. THE BASE READING: folksonomy and thesaurus overrides are NAMED here (thesaurus_folksonomies) but never merged, so the base truth stays readable and any override stays traceable to its own row. Keyed on snake_case, which is unique and never null across all atoms. security_invoker: the view reads with the caller''s rights, so RLS on the base tables applies exactly as it would to a direct select.';

comment on view public.atom_dressed is
  'The atom as a given taxonomy type reads it — KP''s ruling that "the taxonomy type would indicate which to read", made queryable. One base row per atom (folksonomy_type null) plus one row per thesaurus entry that has an opinion. A thesaurus entry''s own emoji, colour, or definition overrides the atom''s base sense; where the entry is silent the base falls through, so an app may re-face a word without re-describing it. Filter by folksonomy_type to get the reading a consumer should use. security_invoker: reads with the caller''s rights.';


-- ============================================================================
-- VERIFY — read-only, safe to re-run.
-- ============================================================================

-- (1) THE MEND ITSELF — both views must now report security_invoker=true.
--     Expect two rows, each showing the option set.
select c.relname as view_name, c.reloptions
from pg_class c
join pg_namespace n on n.oid = c.relnamespace
where n.nspname = 'public'
  and c.relname in ('atom_whole', 'atom_dressed');

-- (2) Nothing was lost in the re-creation: the counts must match 085's.
select (select count(*) from public.atoms)        as atoms,
       (select count(*) from public.atom_whole)   as whole_rows,
       (select count(*) from public.atom_dressed) as dressed_rows;

-- (3) The card reading still works.
select snake_case, pascal_case, sensory_emoji, sensory_color, root_language
from public.atom_whole
where snake_case in ('awen','khoros','person','instrument','system','resonance')
order by snake_case;

-- (4) ANY OTHER SECURITY DEFINER VIEW IN public — this file mends two; if the
--     advisor names others, they were not ours and are reported, not touched.
select c.relname, c.reloptions
from pg_class c
join pg_namespace n on n.oid = c.relnamespace
where n.nspname = 'public'
  and c.relkind = 'v'
  and (c.reloptions is null
       or not ('security_invoker=true' = any(c.reloptions)))
order by c.relname;
