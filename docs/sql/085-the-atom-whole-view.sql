-- ============================================================================
-- 085 — THE ATOM WHOLE: one row per atom, everything the lattice knows
--
-- KP's ⚛ commission, 2026-08-11: "we need a view that shows every atom AND
-- it's sensory lexicons and etymology at once. this is then filterable for the
-- needs of the taxonomy and folksonomy and thesaurus entries applied to it as
-- needed to modify existing meaning or lexicons for the linked atom words."
--
-- So this view is THE BASE READING — the atom whole, in one row, before any
-- override. The folksonomy and thesaurus layers are applied ON TOP of it by
-- whatever asks; they are not merged in here, because merging would make the
-- base truth unreadable and the override untraceable.
--
-- THE OVERRIDE MECHANISM ALREADY LIVES, and reading it is what settled this
-- design: `thesaurus` holds 45 rows in which the SAME WORD appears more than
-- once with different folksonomy_type — "Calm" stands as both Echoes and
-- Compass, sharing one sensory_id but free to carry its own emoji, colour,
-- and sensory readings. One base sense; per-app entries that modify it. This
-- view is the thing those entries modify.
--
-- KEYED ON snake_case AT HIS ⚛ WORD — "use the snakecase of the atoms to
-- ensure standardized format" — verified before writing: 2,323 atoms, ZERO
-- nulls, ZERO duplicates, so it is a sound key. ALL FOUR CASES ARE EXPOSED at
-- his following word ("actually expose all cases"), so a consumer takes the
-- form its own grammar wants rather than transforming a string and hoping.
--
-- ONE ROW PER ATOM. The many-to-manys (schemes, relations, molecules) arrive
-- as aggregated arrays rather than multiplying the row — the view stays flat
-- and filterable, which is what "filterable for the needs of the taxonomy"
-- asks for. A consumer wanting one-row-per-membership joins the junction
-- itself; a consumer wanting to FILTER by membership can ask this view.
--
-- Read-only by nature: a view over published rows. It writes nothing and owns
-- nothing — every value belongs to the table it came from, which is the
-- house's one-definition-per-object law holding at the read layer too.
--
-- Drafted 2026-08-11 for KP's ⚛ hand.
-- ============================================================================

create or replace view public.atom_whole as
select
  -- ── identity, in every case the house speaks ──────────────────────────────
  a.id                              as atom_id,
  a.atom_word,
  a.snake_case,                     -- THE KEY: standardized, unique, never null
  a.screaming_case,
  a.pascal_case,
  -- THREE, not five: atoms carry screaming/snake/pascal only. camel_case and
  -- kebab_case are MOLECULES' columns — a first draft of this view reached for
  -- all five and KP's ⚛ eye caught it ("atoms do not have camelCase") before
  -- the view was created. Verified against the live tables rather than assumed.

  -- ── the word itself ───────────────────────────────────────────────────────
  a.definition,
  a.atom_type,
  a.category_name,
  a.category                        as category_id,
  a.modifiers,                      -- the derivation law: ["s"], ["es"], ["ed"]…
  a.weight,
  a.affinity,
  a.valence,
  a.state,
  a.status,

  -- ── the senses, for telling the story on a card ───────────────────────────
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

  -- ── the roots ─────────────────────────────────────────────────────────────
  e.root_word,
  e.root_language,
  e.historical_meaning,
  e.sanctuary_meaning,
  e.completion_progress             as etymology_progress,
  (e.completion_progress = 100)     as has_etymology,

  -- ── the lattice around it, aggregated so the row stays one ────────────────
  coalesce(sch.schemes, '{}')       as scheme_names,
  coalesce(sch.primary_schemes, '{}') as primary_scheme_names,
  coalesce(mol.molecules, '{}')     as molecule_names,
  coalesce(mol.n, 0)                as molecule_count,
  coalesce(rel.relations, '{}')     as relation_types,

  -- ── the folksonomy layer: NAMED, never merged ─────────────────────────────
  -- KP's ⚛ ruling on how a reading is chosen: "the taxonomy type would
  -- indicate which to read." So the TYPE IS THE SELECTOR — the view's job is
  -- not to decide which sense wins, but to expose enough that a caller can
  -- pick by naming its own type. A card in Echoes asks for Echoes' reading; a
  -- card with no type gets the base sense in the sensory_* columns above.
  --
  -- The overrides themselves stay in `thesaurus`, one row per word per
  -- folksonomy — resolved by the sibling view `atom_dressed` below, which
  -- takes a type and returns the reading. These two columns make the base view
  -- FILTERABLE without resolving: which types have an opinion, and how many.
  coalesce(th.folksonomies, '{}')   as thesaurus_folksonomies,
  coalesce(th.n, 0)                 as thesaurus_entry_count

from public.atoms a
left join public.sensory_lexicon s on s.atom_id = a.id
left join public.etymology       e on e.atom_id = a.id

-- the schemes this atom is placed in
left join lateral (
  select array_agg(distinct sc.name)                                as schemes,
         array_agg(distinct sc.name) filter (where sm.is_primary)   as primary_schemes
  from public.scheme_memberships sm
  join public.schemes sc on sc.id = sm.scheme_id
  where sm.atom_id = a.id
) sch on true

-- the molecules this atom bonds into
left join lateral (
  select array_agg(distinct m.name) as molecules, count(distinct m.id) as n
  from public.molecule_atoms ma
  join public.molecules m on m.id = ma.molecule_id
  where ma.atom_id = a.id
) mol on true

-- the relation kinds this atom stands in, either side
left join lateral (
  select array_agg(distinct cr.relation_type::text) as relations
  from public.concept_relations cr
  where cr.subject_atom_id = a.id or cr.object_atom_id = a.id
) rel on true

-- which folksonomies hold a thesaurus entry for this word
left join lateral (
  select array_agg(distinct t.folksonomy_type) as folksonomies, count(*) as n
  from public.thesaurus t
  where lower(t.word) = a.atom_word
) th on true;


comment on view public.atom_whole is
  'The atom whole — one row per atom carrying its own fields, its senses, its etymology, and the lattice around it (schemes, molecules, relation kinds) as arrays. THE BASE READING: folksonomy and thesaurus overrides are NAMED here (thesaurus_folksonomies) but never merged, so the base truth stays readable and any override stays traceable to its own row. Keyed on snake_case, which is unique and never null across all atoms. All four case forms are exposed so a consumer takes the form its grammar wants rather than transforming a string.';


-- ============================================================================
-- THE DRESSED READING — the type chooses, at KP's ⚛ word
-- ============================================================================
-- "The taxonomy type would indicate which to read." This view is that rule as
-- code: one row per atom PER FOLKSONOMY THAT HAS AN OPINION, plus the base
-- row (folksonomy_type null) for every atom. A consumer names its type and
-- gets the reading it should use — no merge logic in any app, ever again.
--
--   Echoes' reading of a word:  where folksonomy_type = 'Echoes'
--   the base, unflavoured:      where folksonomy_type is null
--   everything an app can see:  where folksonomy_type in ('Echoes', null)
--                               order by folksonomy_type nulls last
--
-- COALESCE IS THE OVERRIDE: a thesaurus entry's own emoji/colour wins where it
-- has one, and falls through to the atom's base sense where it does not. An
-- app may re-face a word without re-describing it.

create or replace view public.atom_dressed as
-- the base reading: every atom, unflavoured
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

-- the flavoured readings: one per thesaurus entry, overriding where it speaks
select
  w.atom_id, w.atom_word, w.snake_case, w.screaming_case, w.pascal_case,
  t.folksonomy_type,
  coalesce(t.definition, w.definition)   as definition,
  coalesce(t.emoji,      w.sensory_emoji) as emoji,
  coalesce(t.color_hex,  w.sensory_color) as color_hex,
  w.category_name, w.atom_type, w.modifiers,
  w.root_language, w.root_word,
  true                as is_override
from public.atom_whole w
join public.thesaurus t on lower(t.word) = w.atom_word;


comment on view public.atom_dressed is
  'The atom as a given taxonomy type reads it — KP''s ruling that "the taxonomy type would indicate which to read", made queryable. One base row per atom (folksonomy_type null) plus one row per thesaurus entry that has an opinion. A thesaurus entry''s own emoji, colour, or definition overrides the atom''s base sense; where the entry is silent the base falls through, so an app may re-face a word without re-describing it. Filter by folksonomy_type to get the reading a consumer should use.';


-- ============================================================================
-- VERIFY — read-only, safe to re-run.
-- ============================================================================

-- (1) One row per atom, no multiplication. The two counts must match.
select (select count(*) from public.atoms)      as atoms,
       (select count(*) from public.atom_whole) as view_rows;

-- (2) The key holds: unique and never null.
select count(*) as rows,
       count(distinct snake_case) as distinct_keys,
       count(*) filter (where snake_case is null) as null_keys
from public.atom_whole;

-- (3) THE CARD READING — what a component would ask for, one query.
select snake_case, pascal_case, sensory_emoji, sensory_color, root_language, definition
from public.atom_whole
where snake_case in ('awen','khoros','person','instrument','system','resonance')
order by snake_case;

-- (4) THE FILTERS the taxonomy layer wants, each now a single predicate.
select 'no face'        as gap, count(*) from public.atom_whole where not has_face
union all select 'no colour',      count(*) from public.atom_whole where not has_color
union all select 'no etymology',   count(*) from public.atom_whole where not has_etymology
union all select 'in no scheme',   count(*) from public.atom_whole where scheme_names = '{}'
union all select 'in no molecule', count(*) from public.atom_whole where molecule_count = 0
union all select 'has an override', count(*) from public.atom_whole where thesaurus_entry_count > 0;

-- (5) THE OVERRIDE LAYER, visible — words some app has its own reading of.
--     "Calm" stands in thesaurus as both Echoes and Compass; this finds every
--     such word without resolving which reading wins.
select snake_case, sensory_emoji, sensory_color, thesaurus_folksonomies
from public.atom_whole
where thesaurus_entry_count > 0
order by thesaurus_entry_count desc, snake_case;
