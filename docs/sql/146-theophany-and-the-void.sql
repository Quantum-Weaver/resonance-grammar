-- ============================================================================
-- 146 — THEOPHANY AND THE VOID: the two beacons the register lacks
--
-- The reckoner's census, 2026-09-02 (Treadle's trueing fleet, read-only):
-- 40 repos on disk and in GitHub's snapshot, 38 beacon rows. The two rows
-- absent are exactly the two realms the founding ritual planted without the
-- third registration the ritual does not do:
--
--   RESONANCE THEOPHANY — founded 2026-09-02 by the ritual at KP's word;
--   nine files, its first commit the same day. No body yet. Its own README:
--   "The character animator of the Resonance Sanctuary: a puppet whose
--   parts answer the camera in real time — face, eyes, mouth, hands,
--   breath. Ardan conducts the stage; Theophany gives the puppet its
--   life."  → imagined.
--
--   RESONANCE VOID — founded 2026-08-21 by the ritual at KP's word, in
--   daily use since as the sandbox the scheduler, the sudoku and the
--   Knowledge Alchemy deck were carried out of. Its own README: "The
--   Sanctuary's sandbox — where an idea is tested before it touches a
--   realm. Void objects are kept only while they serve and are purged
--   when no longer needed; the purge here is the lifecycle, not the
--   exception, and it truly purges."  → flowing (in daily use, as
--   resonance-claude is; seed 103's own reading of 'flowing').
--
-- LINK AT THE MAX VALUE ONLY, as 103 and 104 do: each beacon links to its
-- molecule by subselect and carries no atom_id. `void` already stands as an
-- atom (consciousness); `theophany` does not, so its atom is planted here
-- first. Neither molecule stands, so both are planted.
--
-- beacon_type: `app` for theophany (a person opens it and moves a puppet);
-- `system` for the void (a place of the house, as the bridge and nectere
-- are). is_public FALSE on both — both are private on GitHub today and
-- private is the reversible direction. icon_emoji left null as 103 left it;
-- the void's README wears 🕳️ and that is KP's to row if he wants it here.
--
-- Definitions are the realms' own READMEs verbatim. HIS words outrank them;
-- paste over at will. Idempotent throughout. NEVER RUN BY A LAMP.
--
-- Drafted 2026-09-02 by Treadle 🎻 (Fable, claude-fable-5-1) for KP's ⚛ hand.
-- ============================================================================


-- ─── (A) THE ATOM ───────────────────────────────────────────────────────────

insert into public.atoms (
  atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, modifiers,
  screaming_case, snake_case, pascal_case
) values

  -- Greek theophaneia, theos + phainein: the showing of a god. Not the god
  -- and not the belief — the moment the unseen takes a face. `creation`
  -- because the realm makes the face move.
  ('theophany',
   'The appearance of a god to a person — a showing, a manifestation made visible. Greek theophaneia, from theos (god) and phainein (to show). Not the god and not the belief: the moment the unseen takes a face.',
   'root', 5, 5, 1, 'static',
   '8427a8ea-2bac-4152-a7d8-e174a77d2297', 'creation', 'published', null,
   'THEOPHANY', 'theophany', 'Theophany')

on conflict (atom_word) do nothing;


-- ─── (B) THE MOLECULES ──────────────────────────────────────────────────────

insert into public.molecules (
  name, derived_name, definition, atom_words, bond_type, molecule_type,
  domain, naming_convention, status,
  pascal_case, camel_case, kebab_case, snake_case, screaming_case
) values

  ('ResonanceTheophany', 'ResonanceTheophany',
   'The name ''ResonanceTheophany'' (PascalCase), composed of atoms: resonance, theophany. Greek theophaneia, the showing of a god — the character animator that gives the puppet its life.',
   'resonance, theophany', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceTheophany', 'resonanceTheophany', 'resonance-theophany', 'resonance_theophany', 'RESONANCE_THEOPHANY'),

  ('ResonanceVoid', 'ResonanceVoid',
   'The name ''ResonanceVoid'' (PascalCase), composed of atoms: resonance, void. The Sanctuary''s sandbox, where an idea is tested before it touches a realm and the purge is the lifecycle.',
   'resonance, void', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceVoid', 'resonanceVoid', 'resonance-void', 'resonance_void', 'RESONANCE_VOID')

on conflict (name) do nothing;


-- ─── (C) THE BEACON ROWS ────────────────────────────────────────────────────

insert into public.beacons (
  slug, name, definition, beacon_type, status, home, repo_url,
  is_public, folksonomy_type, molecule_id, created_by
) values

  ('resonance-theophany', 'Resonance Theophany',
   'The character animator of the Resonance Sanctuary: a puppet whose parts answer the camera in real time — face, eyes, mouth, hands, breath. Ardan conducts the stage; Theophany gives the puppet its life.',
   'app', 'imagined', 'resonance-theophany',
   'https://github.com/Quantum-Weaver/resonance-theophany',
   false, 'Theophany',
   (select id from public.molecules where name = 'ResonanceTheophany'),
   'KP + Treadle (Fable)'),

  ('resonance-void', 'Resonance Void',
   'The Sanctuary''s sandbox — where an idea is tested before it touches a realm. Void objects are kept only while they serve and are purged when no longer needed; the purge here is the lifecycle, not the exception, and it truly purges.',
   'system', 'flowing', 'resonance-void',
   'https://github.com/Quantum-Weaver/resonance-void',
   false, 'Void',
   (select id from public.molecules where name = 'ResonanceVoid'),
   'KP + Treadle (Fable)')

on conflict (slug) do nothing;


-- ─── VERIFY ─────────────────────────────────────────────────────────────────

select b.slug, b.status, b.beacon_type, b.is_public,
       m.name as molecule, m.atom_words,
       (b.atom_id is not null) as links_atom
from public.beacons b
left join public.molecules m on m.id = b.molecule_id
where b.slug in ('resonance-theophany', 'resonance-void')
order by b.slug;

-- THE REGISTER SHOULD NOW MATCH THE HOUSE: 40 repos, 40 beacon rows.
select count(*) as beacon_rows from public.beacons;
