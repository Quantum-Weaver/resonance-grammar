-- ============================================================================
-- 087 — DRESSED: tools and beacons ready to render, all three tiers answered
--
-- KP's ⚛ words, 2026-08-11: the tools and beacons tables want the emoji of the
-- type they fall in — named `type_face` and `type_colour` at his choosing —
-- and "audhdities should get a crystal ball or brain." Then the correction
-- that shaped the whole file: **"this also means when we create the view of a
-- beacon or tools story, it has to account for if the linked reference is an
-- atom, molecule or organism."**
--
-- HE WAS RIGHT, AND THE DRAFT WAS WRONG. A first version of this file handled
-- atom-or-molecule and ignored `organism_id` entirely. The live count:
--     tools    — by atom 48 · by molecule 30 · BY ORGANISM 1 · unlinked 0
--     beacons  — by atom  1 · by molecule 25 · by organism 0 · unlinked 0
-- One tool links by organism (The Cosmic Design System → CosmicDesignSystem),
-- and the draft would have rendered it faceless while reporting success. One
-- row of seventy-nine is exactly the kind of miss that survives a casual eye.
--
-- THE THREE PATHS, and why one lateral can walk them all: every tier reaches
-- its atoms the same way — `molecule_atoms` and `organism_atoms` both carry
-- `position` and `role`, with the LAST position holding the `core_type`. So
-- the word a thing is NAMED FOR is: the last atom of its molecule, or the last
-- atom of its organism, or — where the name is a single word — the atom it
-- links to directly. A union inside one lateral reads all three without the
-- row ever multiplying.
--
-- `sensory_override` IS NOT READ, and that is deliberate: the column stands on
-- both molecules and organisms and is used ZERO times in the live base. Wiring
-- a path nobody walks would be inventing a rule to maintain. When the first
-- override is written, this view gains one coalesce — and the seed that writes
-- it should say so.
--
-- THE ONE FACE THAT CANNOT DERIVE — AudHDities, the single beacon linked to an
-- ATOM rather than a molecule (KP's ⚛ note: "it is an atom") because its name
-- is one word. Its atom wears ♾️ — the neurodiversity movement's own symbol,
-- which means the WORD. The beacon takes 🔮 at his word, so the two marks say
-- two different things:
--     atom   audhdities  ♾️   the word — neurodivergence itself
--     beacon AudHDities  🔮   the place — the platform the rooms open into
-- That is what `icon_emoji` is for: not a copy of a derivable value, but the
-- override for where derivation cannot reach or would say the wrong thing.
--
-- VIEWS, NOT COLUMNS — the reading that settled it: every beacon's own atom
-- ALREADY carries a face and a colour, so `resonance_beacons.icon_emoji`
-- (standing empty since seed 075) does not need filling by hand. It is
-- derivable, and a stored copy would go stale the moment a sense changed.
--
-- security_invoker on both views from birth — seed 086's lesson, paid once.
--
-- Drafted 2026-08-11 for KP's ⚛ hand.
-- ============================================================================


-- ── 1. THE ONE FACE THAT CANNOT DERIVE ──────────────────────────────────────

update public.resonance_beacons
set icon_emoji = '🔮'
where slug = 'audhdities';


-- ── 2. THE TOOLS, DRESSED ───────────────────────────────────────────────────

create or replace view public.tools_dressed
with (security_invoker = true)
as
select
  t.id,
  t.name,
  t.slug,
  coalesce(t.icon_emoji, own.emoji)   as face,          -- own mark, else the word's
  t.icon_emoji                        as own_face,      -- what was set by hand
  t.tool_type,
  ts.emoji                            as type_face,
  ts.color_hex                        as type_colour,
  own.atom_word                       as named_for,
  own.emoji                           as named_for_face,
  own.color_hex                       as named_for_colour,
  own.tier                            as named_via,     -- atom · molecule · organism
  t.status,
  t.folksonomy_type                   as family,
  t.home,
  t.definition,
  t.story
from public.tools t
left join public.atoms ta
       on ta.atom_word = t.tool_type::text              -- ::text — tool_type is an ENUM
left join public.sensory_lexicon ts
       on ts.atom_id = ta.id
left join lateral (
  select a.atom_word, s.emoji, s.color_hex, pick.tier
  from (
    select ma.atom_id, ma.position as ord, 'molecule' as tier
    from public.molecule_atoms ma
    where ma.molecule_id = t.molecule_id
    union all
    select oa.atom_id, oa.position, 'organism'
    from public.organism_atoms oa
    where oa.organism_id = t.organism_id
    union all
    select t.atom_id, 0, 'atom'
    where t.atom_id is not null
      and t.molecule_id is null
      and t.organism_id is null
  ) pick
  join public.atoms a                on a.id = pick.atom_id
  left join public.sensory_lexicon s on s.atom_id = a.id
  order by pick.ord desc
  limit 1
) own on true;


-- ── 3. THE COAST, DRESSED ───────────────────────────────────────────────────

create or replace view public.beacons_dressed
with (security_invoker = true)
as
select
  b.id,
  b.name,
  b.slug,
  coalesce(b.icon_emoji, own.emoji)   as face,
  b.icon_emoji                        as own_face,
  b.beacon_type,
  bs.emoji                            as type_face,
  bs.color_hex                        as type_colour,
  own.atom_word                       as named_for,
  own.emoji                           as named_for_face,
  own.color_hex                       as named_for_colour,
  own.tier                            as named_via,
  b.status,
  b.folksonomy_type                   as family,
  b.repo_url,
  b.is_public,
  b.version,
  b.available_on,
  b.definition,
  b.story
from public.resonance_beacons b
left join public.atoms ba
       on ba.atom_word = b.beacon_type::text            -- ::text — beacon_type is an ENUM
left join public.sensory_lexicon bs
       on bs.atom_id = ba.id
left join lateral (
  select a.atom_word, s.emoji, s.color_hex, pick.tier
  from (
    select ma.atom_id, ma.position as ord, 'molecule' as tier
    from public.molecule_atoms ma
    where ma.molecule_id = b.molecule_id
    union all
    select oa.atom_id, oa.position, 'organism'
    from public.organism_atoms oa
    where oa.organism_id = b.organism_id
    union all
    select b.atom_id, 0, 'atom'
    where b.atom_id is not null
      and b.molecule_id is null
      and b.organism_id is null
  ) pick
  join public.atoms a                on a.id = pick.atom_id
  left join public.sensory_lexicon s on s.atom_id = a.id
  order by pick.ord desc
  limit 1
) own on true;


comment on view public.tools_dressed is
  'Every tool ready to render: its own face beside the face and colour of its type, plus the word it is NAMED FOR resolved through whichever tier it links to — molecule, organism, or atom (named_via says which). Nothing is stored twice: change a type''s colour in the Grammar and every tool wearing it re-dresses. security_invoker: reads with the caller''s rights.';

comment on view public.beacons_dressed is
  'Every beacon ready to render: the face and colour of its type, the word it is named for through any of the three tiers, and its own icon_emoji as an override where derivation cannot reach. THE OVERRIDE CHAIN is coalesce(icon_emoji, named_for_face) — AudHDities carries 🔮 on the row because it is the one beacon linked to an ATOM rather than a molecule; its word wears ♾️, the neurodiversity infinity, which means the word and not the place. security_invoker: reads with the caller''s rights.';


-- ============================================================================
-- VERIFY — read-only, safe to re-run.
-- ============================================================================

-- (1) No multiplication: each view must match its base table exactly.
select (select count(*) from public.tools)             as tools,
       (select count(*) from public.tools_dressed)     as tools_dressed,
       (select count(*) from public.resonance_beacons) as beacons,
       (select count(*) from public.beacons_dressed)   as beacons_dressed;

-- (2) ALL THREE TIERS ANSWERED — the count by path. Expect tools to read
--     molecule 30 · atom 48 · organism 1, and NO nulls.
select named_via, count(*) from public.tools_dressed   group by named_via
union all
select 'beacon:' || coalesce(named_via,'NULL'), count(*) from public.beacons_dressed group by named_via
order by 1;

-- (3) THE ORGANISM ROW, named by KP's correction — The Cosmic Design System
--     must reach its word rather than render faceless.
select name, tool_type, named_via, named_for, face, type_face
from public.tools_dressed
where named_via = 'organism';

-- (4) THE SHELF, as a component would ask for it — one query, no strings.
select face, type_face, type_colour, name, tool_type, status
from public.tools_dressed
order by tool_type, name;

-- (5) THE COAST, likewise. AudHDities reads 🔮 (its own) over ♾️ (its word).
select face, own_face, named_for_face, type_face, name, beacon_type, named_via
from public.beacons_dressed
order by beacon_type, name;

-- (6) Anything that still cannot be dressed. Expect ZERO rows.
select 'tool' as kind, name from public.tools_dressed   where face is null or type_face is null
union all
select 'beacon',        name from public.beacons_dressed where face is null or type_face is null;

-- (7) OBSERVED, NOT ACTED ON — beacons whose derived face collides. Quantum
--     Weaver and Resonance Weaver both bond `weaver`, so both derive 🕸️. An
--     icon_emoji on either parts them, at KP's ⚛ word.
select face, string_agg(name, ' · ' order by name) as wearers, count(*)
from public.beacons_dressed
group by face having count(*) > 1;

-- (8) Both views must report security_invoker — the 086 lesson held.
select c.relname, c.reloptions
from pg_class c join pg_namespace n on n.oid = c.relnamespace
where n.nspname = 'public' and c.relname in ('tools_dressed','beacons_dressed');
