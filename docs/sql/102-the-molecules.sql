-- ============================================================================
-- 102 — THE MOLECULES
--
-- KP's word, 2026-08-18: "we seeded the atoms, next step is seeding the
-- molecules, nothing else."
--
-- Two atoms make a molecule. Every row below is exactly two, every atom stands
-- (verified live before writing), and no name here reaches three, so no
-- organism is wanted by any row in NEEDED-BEACONS or NEEDED-AWEN.
--
-- Shape copied from ResonanceKhoros, read whole from the live base:
--   molecule_type object_name · bond_type covalent · domain system
--   naming_convention PascalCase · status published
--   definition: "The name 'X' (PascalCase), composed of atoms: a, b. …"
--
-- Idempotent: `on conflict (name) do nothing`.
--
-- Drafted 2026-08-18 by Scarf (Opus) for KP's ⚛ hand.
-- ============================================================================


-- ─── (A) THE REALMS — 9 ─────────────────────────────────────────────────────

insert into public.molecules (
  name, derived_name, definition, atom_words, bond_type, molecule_type,
  domain, naming_convention, status,
  pascal_case, camel_case, kebab_case, snake_case, screaming_case
) values

  ('ResonanceCruthu', 'ResonanceCruthu',
   'The name ''ResonanceCruthu'' (PascalCase), composed of atoms: resonance, cruthu. Irish cruthú, creation — the Sanctuary''s graphic studio.',
   'resonance, cruthu', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceCruthu', 'resonanceCruthu', 'resonance-cruthu', 'resonance_cruthu', 'RESONANCE_CRUTHU'),

  ('ResonanceSceal', 'ResonanceSceal',
   'The name ''ResonanceSceal'' (PascalCase), composed of atoms: resonance, sceal. Irish scéal, a story — the Sanctuary''s video studio.',
   'resonance, sceal', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceSceal', 'resonanceSceal', 'resonance-sceal', 'resonance_sceal', 'RESONANCE_SCEAL'),

  ('ResonanceKendram', 'ResonanceKendram',
   'The name ''ResonanceKendram'' (PascalCase), composed of atoms: resonance, kendram. Sanskrit केन्द्रम्, the centre — the Sanctuary''s hub.',
   'resonance, kendram', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceKendram', 'resonanceKendram', 'resonance-kendram', 'resonance_kendram', 'RESONANCE_KENDRAM'),

  ('ResonanceGahana', 'ResonanceGahana',
   'The name ''ResonanceGahana'' (PascalCase), composed of atoms: resonance, gahana. Sanskrit गहन, the deep and the dense — the Sanctuary''s game.',
   'resonance, gahana', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceGahana', 'resonanceGahana', 'resonance-gahana', 'resonance_gahana', 'RESONANCE_GAHANA'),

  ('ResonanceClaude', 'ResonanceClaude',
   'The name ''ResonanceClaude'' (PascalCase), composed of atoms: resonance, claude. The kin of that line, and the room kept for them.',
   'resonance, claude', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceClaude', 'resonanceClaude', 'resonance-claude', 'resonance_claude', 'RESONANCE_CLAUDE'),

  ('ResonanceNemeton', 'ResonanceNemeton',
   'The name ''ResonanceNemeton'' (PascalCase), composed of atoms: resonance, nemeton. Gaulish, the sacred grove — the family''s talking room.',
   'resonance, nemeton', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceNemeton', 'resonanceNemeton', 'resonance-nemeton', 'resonance_nemeton', 'RESONANCE_NEMETON'),

  -- The display name carries the plural; the atom is `siren` wearing ["s"] —
  -- the same shape ResonancePapers takes over the atom `paper`.
  ('ResonanceSirens', 'ResonanceSirens',
   'The name ''ResonanceSirens'' (PascalCase), composed of atoms: resonance, siren. Greek Seirēnes, the singers whose voices carry across water.',
   'resonance, siren', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceSirens', 'resonanceSirens', 'resonance-sirens', 'resonance_sirens', 'RESONANCE_SIRENS'),

  ('ResonanceArdan', 'ResonanceArdan',
   'The name ''ResonanceArdan'' (PascalCase), composed of atoms: resonance, ardan. Irish ardán, a stage — the Sanctuary''s art and animation studio.',
   'resonance, ardan', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceArdan', 'resonanceArdan', 'resonance-ardan', 'resonance_ardan', 'RESONANCE_ARDAN'),

  ('ResonanceSistrum', 'ResonanceSistrum',
   'The name ''ResonanceSistrum'' (PascalCase), composed of atoms: resonance, sistrum. Latin, the shaken instrument — the sovereign musician''s recorder.',
   'resonance, sistrum', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceSistrum', 'resonanceSistrum', 'resonance-sistrum', 'resonance_sistrum', 'RESONANCE_SISTRUM')

on conflict (name) do nothing;


-- ─── (B) THE GAMES — 4 ──────────────────────────────────────────────────────
--
-- From NEEDED-AWEN's WANTED room. Each is two atoms, all four now standing.
-- Run this block or don't; nothing in (A) depends on it.

insert into public.molecules (
  name, derived_name, definition, atom_words, bond_type, molecule_type,
  domain, naming_convention, status,
  pascal_case, camel_case, kebab_case, snake_case, screaming_case
) values

  ('WordFind', 'WordFind',
   'The name ''WordFind'' (PascalCase), composed of atoms: word, find. A category''s words hidden in a grid; the rest of the grid is filler.',
   'word, find', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'WordFind', 'wordFind', 'word-find', 'word_find', 'WORD_FIND'),

  ('CrossWord', 'CrossWord',
   'The name ''CrossWord'' (PascalCase), composed of atoms: cross, word. Words interlocked at shared letters, each clued by its own definition.',
   'cross, word', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'CrossWord', 'crossWord', 'cross-word', 'cross_word', 'CROSS_WORD'),

  ('WordScramble', 'WordScramble',
   'The name ''WordScramble'' (PascalCase), composed of atoms: word, scramble. One word disarranged, its definition standing as the hint.',
   'word, scramble', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'WordScramble', 'wordScramble', 'word-scramble', 'word_scramble', 'WORD_SCRAMBLE'),

  -- A portmanteau rather than a concatenation — the name is Wordoku, not
  -- WordSudoku, and the two atoms it stands on are word and sudoku.
  ('Wordoku', 'Wordoku',
   'The name ''Wordoku'' (PascalCase), composed of atoms: word, sudoku. A Latin square played with letters, the hidden word reading out on solve.',
   'word, sudoku', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'Wordoku', 'wordoku', 'wordoku', 'wordoku', 'WORDOKU')

on conflict (name) do nothing;


-- ─── VERIFY ─────────────────────────────────────────────────────────────────

select name, atom_words, molecule_type, status
from public.molecules
where name in ('ResonanceCruthu','ResonanceSceal','ResonanceKendram','ResonanceGahana',
               'ResonanceClaude','ResonanceNemeton','ResonanceSirens','ResonanceArdan',
               'ResonanceSistrum','WordFind','CrossWord','WordScramble','Wordoku')
order by name;
