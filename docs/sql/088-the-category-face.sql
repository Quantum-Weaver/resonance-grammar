-- ============================================================================
-- 088 — THE CATEGORY FACE: an atom's grouping mark, and two faces swapped
--
-- KP's ⚛ words, 2026-08-11, closing the gap his own question found: "did we
-- bring in the type faces and colours into the story views?" — and then, on
-- reading the twenty-five category faces, "i would suggest a minor change,
-- making a vessel the brain and consciousness an eye."
--
-- WHAT HIS QUESTION FOUND. `tools_dressed` and `beacons_dressed` carry story,
-- definition, type_face and type_colour together — a story card renders whole
-- from one row. But the ATOM views did not: `atom_whole` and `atom_dressed`
-- expose an atom's own face and colour and its category's NAME, while the
-- category's own mark stayed unreachable. All 25 categories carry an
-- `icon_emoji` and neither view read it, so an atom card could not group by
-- category the way a tool card groups by type. The parallel was half-built.
--
-- Told plainly, so the shape is not mistaken for a gap: ATOMS HAVE NO `story`
-- COLUMN. Story is a tools/beacons field. What an atom carries instead is
-- `sanctuary_meaning` on its etymology, which atom_whole already exposes.
--
-- NO CATEGORY COLOUR EXISTS. The categories table holds `icon_emoji` and no
-- `color_hex`, so `category_face` lands here and `category_colour` does not.
-- Inventing 25 hues to complete a symmetry would be exactly the bulk-fill
-- approach KP's ⚛ teaching this same sitting set aside: "this is why the first
-- approach was abandoned for the intentional sittings." A colour is placed
-- when someone chooses it, and no one has chosen these.
--
-- THE SWAP, and why it reads true against the rows' own descriptions:
--   consciousness  "Words for minds and their inner weather — being,
--                   awareness, flow, wisdom. The vocabulary of what it is
--                   like to be."                            🧠 → 👁️
--                   Awareness itself, not the organ that hosts it. An eye is
--                   the experiencing, the looking-out-from.
--   vessel         "The bodies and rooms a mind lives in — vessels, chambers,
--                   homes, studios."                        🏠 → 🧠
--                   The brain IS the first vessel — the body a mind lives in
--                   before any room is built around it.
-- 👁️ was verified free among the categories before the swap; 🏠 is released.
--
-- AND `system` THE ATOM COMES WITH IT, at his ⚛ word the same breath: "system
-- the atom can wear ⚙️". This morning it took 🧠 at his "reasoning system"
-- ruling, which was right against the alternative then on the table (a speech
-- balloon shared with seventeen words). With `vessel` now taking 🧠, the
-- better resolution is the plainer one: THE ATOM AND ITS CATEGORY WEAR THE
-- SAME MARK. `system` the category already wears ⚙️, and ⚙️ is already worn by
-- six kin atoms — default · configuration · method · operation · fn · runtime,
-- every one a machinery word. The atom joins its own family, one word means
-- one thing in both places, and 🧠 belongs wholly to the vessel.
--
-- What this re-dresses, checked before writing: the three `system` beacons
-- (Bridge · Gaia · Grammar) render ⚙️ as their type_face instead of 🧠, and
-- The Cosmic Design System's named_for_face follows — its own 🎭 still wins
-- the `face` column by the override chain, unchanged.
--
-- security_invoker on both views, carried from seed 086 — the definitions
-- below are 086's verbatim with the category join and column added.
--
-- Drafted 2026-08-11 for KP's ⚛ hand.
-- ============================================================================


-- ── 1. THE TWO FACES SWAPPED ────────────────────────────────────────────────

update public.categories set icon_emoji = '👁️' where name = 'consciousness';
update public.categories set icon_emoji = '🧠' where name = 'vessel';

-- and the atom follows its category, at his word — ⚙️ with its own kin
-- (default · configuration · method · operation · fn · runtime), leaving 🧠
-- wholly to the vessel. The colour set this morning stands: quantum.purple.
update public.sensory_lexicon set emoji = '⚙️' where atom_word = 'system';


-- ── 2. THE ATOM WHOLE, now carrying its category's mark ─────────────────────
--
-- ⚠ DROPPED, NOT REPLACED, and the reason is worth keeping. The first run of
-- this file failed:
--     ERROR 42P16: cannot change name of view column "modifiers" to
--     "category_face"
-- `create or replace view` may only APPEND columns to an existing view — it
-- cannot insert one mid-list, because every column after the insertion point
-- shifts and Postgres reads that as renaming them. `category_face` was placed
-- beside `category_name`, where it belongs for a reader, so the whole tail
-- shifted by one.
--
-- Two ways out: append the column at the END (keeps `create or replace`, but
-- puts the category's mark far from the category's name, where nobody looking
-- at the view would expect it), or DROP and recreate (a moment where the views
-- do not exist, and any dependent object would refuse the drop). Taken the
-- second: these two views are three hours old, nothing depends on them yet,
-- and a view's column order is part of how it reads. `drop ... cascade` is NOT
-- used — if something has come to depend on these since, the drop should fail
-- loudly rather than quietly take that dependent with it.
--
-- atom_dressed is dropped FIRST because it selects from atom_whole.

drop view if exists public.atom_dressed;
drop view if exists public.atom_whole;

create view public.atom_whole
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
  cat.icon_emoji                    as category_face,   -- NEW: the grouping's mark
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
left join public.categories    cat on cat.id    = a.category

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


-- ── 3. THE DRESSED READING, likewise ────────────────────────────────────────
-- Already dropped at the head of section 2 (it depends on atom_whole, so it
-- had to go first). Plain `create` here — same reason as above: this view
-- gains category_face and sanctuary_meaning mid-list, which `create or
-- replace` would read as renaming every column after them.

create view public.atom_dressed
with (security_invoker = true)
as
select
  w.atom_id, w.atom_word, w.snake_case, w.screaming_case, w.pascal_case,
  null::text          as folksonomy_type,
  w.definition,
  w.sensory_emoji     as emoji,
  w.sensory_color     as color_hex,
  w.category_name,
  w.category_face,
  w.atom_type, w.modifiers,
  w.root_language, w.root_word,
  w.sanctuary_meaning,
  false               as is_override
from public.atom_whole w

union all

select
  w.atom_id, w.atom_word, w.snake_case, w.screaming_case, w.pascal_case,
  t.folksonomy_type,
  coalesce(t.definition, w.definition)    as definition,
  coalesce(t.emoji,      w.sensory_emoji) as emoji,
  coalesce(t.color_hex,  w.sensory_color) as color_hex,
  w.category_name,
  w.category_face,
  w.atom_type, w.modifiers,
  w.root_language, w.root_word,
  w.sanctuary_meaning,
  true                as is_override
from public.atom_whole w
join public.thesaurus t on lower(t.word) = w.atom_word;


comment on view public.atom_whole is
  'The atom whole — one row per atom carrying its own fields, its senses, its etymology, its CATEGORY''S FACE, and the lattice around it (schemes, molecules, relation kinds) as arrays. THE BASE READING: folksonomy and thesaurus overrides are NAMED here (thesaurus_folksonomies) but never merged, so the base truth stays readable and any override stays traceable. Keyed on snake_case, unique and never null. Atoms have no story column — story is a tools/beacons field; an atom''s telling is sanctuary_meaning on its etymology, exposed here. security_invoker: reads with the caller''s rights.';

comment on view public.atom_dressed is
  'The atom as a given taxonomy type reads it — KP''s ruling that "the taxonomy type would indicate which to read", made queryable. One base row per atom (folksonomy_type null) plus one row per thesaurus entry that has an opinion; a thesaurus entry''s own emoji, colour, or definition overrides the base and falls through where silent. Carries category_face so a card can group by category the way a tool card groups by type, and sanctuary_meaning so it can tell the word''s story. security_invoker: reads with the caller''s rights.';


-- ============================================================================
-- VERIFY — read-only, safe to re-run.
-- ============================================================================

-- (1) THE SWAP — consciousness looks out, the vessel houses, and `system`
--     wears one mark in both places.
select 'category' as tier, c.name, c.icon_emoji, c.sort_order::text as ord
from public.categories c
where c.name in ('consciousness','vessel','system')
union all
select 'atom', a.atom_word, s.emoji, a.category_name
from public.atoms a
join public.sensory_lexicon s on s.atom_id = a.id
where a.atom_word in ('system','vessel','consciousness')
order by 1, 2;

-- (1b) The three `system` beacons now render ⚙️ as their type face; each keeps
--      its own face. The Cosmic Design System keeps 🎭 over the derived ⚙️.
select name, face, type_face, type_colour from public.beacons_dressed
where beacon_type = 'system' order by name;
select name, face, named_for, named_for_face from public.tools_dressed
where named_via = 'organism';

-- (2) No multiplication after the re-creation.
select (select count(*) from public.atoms)        as atoms,
       (select count(*) from public.atom_whole)   as whole_rows,
       (select count(*) from public.atom_dressed) as dressed_rows;

-- (3) THE ATOM CARD, whole — its own mark, its category's mark, its story.
--     NOTE the column names: `atom_dressed` calls them `emoji`/`color_hex`
--     (they may be an override, so the sensory_ prefix would lie); only
--     `atom_whole` uses sensory_emoji/sensory_color. A first draft of this
--     query asked atom_dressed for sensory_emoji and failed — the views were
--     already created correctly, it was the verify that was wrong.
select snake_case, emoji, color_hex, category_face, category_name,
       root_language, sanctuary_meaning
from public.atom_dressed
where folksonomy_type is null
  and snake_case in ('awen','khoros','person','resonance','cello','lucida')
order by snake_case;

-- (4) Every category now reachable from an atom. Expect ZERO rows.
select distinct category_name
from public.atom_whole
where category_name is not null and category_face is null;

-- (5) The face census across the categories — 25, each distinct.
select count(*) as categories,
       count(icon_emoji) as with_face,
       count(distinct icon_emoji) as distinct_faces
from public.categories;
