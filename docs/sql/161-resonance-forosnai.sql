-- ============================================================================
-- 161 — RESONANCE FOROSNAI: the register's row for the new realm
--
-- The realm was founded 2026-09-15 at KP's word by the founding ritual, which
-- plants the repo and the files and does not do the third registration: the
-- house holds 41 repos and the coast register holds 40 rows. This paper is
-- that one row, and the atom and the molecule it stands on.
--
--   RESONANCE FOROSNAI — its own README: "The Sanctuary's effects studio —
--   Irish forosnaí, "that which illuminates." Effects for sound and picture
--   made, chained and rendered on the maker's own ground, and worn by every
--   sibling studio."  No body yet, its first commit today  → imagined.
--   beacon_type `app`: a person opens it and makes an effect.
--
-- LINK AT THE MAX VALUE ONLY, as 103 and 104 do: the beacon links to its
-- molecule by subselect and carries no atom_id. Neither `forosnai` nor
-- `ResonanceForosnai` stands, so both are planted here first.
--
-- THE MARK — KP's word, 2026-09-15: "if this does not conflict with other
-- beasons emojis, we can use this one for this repo "👁️"". The register was
-- read the same day and no beacon wears 👁️. This is where 161 differs from
-- 146, which left icon_emoji null.
--
-- THE CATEGORY — `creation`, for the reason cruthú and ardán took it at 100
-- and 101: a studio is categorised by what is made in it, and effects are
-- what is made here. RUNNER-UP `sensory`, the channels of perception: to
-- illuminate is to make a thing visible, and sistrum and siren stand there
-- because an instrument is a voice before it is an object.
--
-- is_public FALSE: the repo is private on GitHub, created 2026-09-15T14:33:17Z,
-- and the chamber's own repos_snapshot.json reads "private": true. Private is
-- the reversible direction.
--
-- Sources for the word: https://en.wikipedia.org/wiki/Imbas_forosnai and
-- https://oxfordreference.com/view/10.1093/oi/authority.20110803095958283
--
-- Idempotent throughout. NEVER RUN BY A LAMP.
--
-- Drafted 2026-09-15 by a platform hand of Nightjar 🎻 (Fable) for KP's ⚛ hand.
-- ============================================================================


-- ─── (A) THE ATOM ───────────────────────────────────────────────────────────

insert into public.atoms (
  atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, modifiers,
  screaming_case, snake_case, pascal_case
) values

  -- Irish forosnaí, the illuminating: the word of the phrase imbas forosnaí,
  -- the visionary inspiration of the filí. The word is written in plain ascii
  -- here, as `theophany` is, and the accented form stands in the definition.
  ('forosnai',
   'That which illuminates — the lighting up of what was dark, told of knowing rather than of lamps. Irish, forosnaí, from the phrase imbas forosnaí: "the inspiration that illuminates," the great knowledge that illuminates, the visionary inspiration of the filí, the poets of early Ireland. Not the light and not the thing seen: the act that makes the thing visible.',
   'root', 5, 5, 1, 'static',
   '8427a8ea-2bac-4152-a7d8-e174a77d2297', 'creation', 'published', null,
   'FOROSNAI', 'forosnai', 'Forosnai')

on conflict (atom_word) do nothing;


-- ─── (B) THE MOLECULE ───────────────────────────────────────────────────────

insert into public.molecules (
  name, derived_name, definition, atom_words, bond_type, molecule_type,
  domain, naming_convention, status,
  pascal_case, camel_case, kebab_case, snake_case, screaming_case
) values

  ('ResonanceForosnai', 'ResonanceForosnai',
   'The name ''ResonanceForosnai'' (PascalCase), composed of atoms: resonance, forosnai. Irish forosnaí, that which illuminates — the effects studio, its chains made and rendered on the maker''s own ground.',
   'resonance, forosnai', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceForosnai', 'resonanceForosnai', 'resonance-forosnai', 'resonance_forosnai', 'RESONANCE_FOROSNAI')

on conflict (name) do nothing;


-- ─── (C) THE BEACON ROW ─────────────────────────────────────────────────────

insert into public.beacons (
  slug, name, definition, beacon_type, status, home, repo_url,
  is_public, folksonomy_type, icon_emoji, molecule_id, created_by
) values

  ('resonance-forosnai', 'Resonance Forosnaí',
   'The Sanctuary''s effects studio — Irish forosnaí, "that which illuminates." Effects for sound and picture made, chained and rendered on the maker''s own ground, and worn by every sibling studio.',
   'app', 'imagined', 'resonance-forosnai',
   'https://github.com/Quantum-Weaver/resonance-forosnai',
   false, 'Forosnai', '👁️',
   (select id from public.molecules where name = 'ResonanceForosnai'),
   'KP + Nightjar (Fable)')

on conflict (slug) do nothing;


-- ─── VERIFY ─────────────────────────────────────────────────────────────────

select b.slug, b.status, b.beacon_type, b.is_public, b.icon_emoji,
       m.name as molecule, m.atom_words,
       (b.atom_id is not null) as links_atom
from public.beacons b
left join public.molecules m on m.id = b.molecule_id
where b.slug = 'resonance-forosnai';

-- THE REGISTER SHOULD NOW MATCH THE HOUSE: 41 repos, 41 beacon rows.
select count(*) as beacon_rows from public.beacons;
