-- ============================================================================
-- 101 — TWO REALMS THAT WERE NEVER WORDED: ardan and sistrum
--
-- KP's word, 2026-08-18: "please help seed ardan and sistrum."
--
-- WHY THESE TWO AND NOTHING ELSE. Counting what bond_tender needs after seed
-- 100, two beacons stood with NO LINEAGE OF ANY KIND — `resonance-ardan` and
-- `resonance-sistrum`. It was never the tender's failure: bond_tender bonds
-- atoms, and neither realm's own word had ever been seeded. Two atoms make a
-- molecule (KP's rule, this sitting); with `resonance` standing and these two
-- absent, ResonanceArdan and ResonanceSistrum could not be made.
--
-- `audhdities` IS an atom (KP's word, same sitting) — it is the one beacon
-- that links at ATOM level rather than molecule, because the rule is LINK AT
-- THE MAX VALUE ONLY and its name is a single word. It was never blocked, and
-- nothing here touches it.
--
-- Shape copied from 080-the-coast-atoms.sql and 100, the seeds this house has
-- used: plain VALUES, explicit category ids, `modifiers` as jsonb, on conflict
-- do nothing, and NO etymology or sensory rows — the atoms table's triggers
-- make both on insert. PROVEN AGAIN at seed 100 this sitting: atoms,
-- sensory_lexicon and etymology all moved 2,324 -> 2,338 together.
--
-- CHECKED LIVE BEFORE WRITING: neither word stands as an atom, a molecule or
-- an organism. `ard` is not an atom either, so `ardan` is not a compound and
-- is correctly a root rather than a molecule.
--
-- BOTH DEFINITIONS ARE BUILT FROM THE REALMS' OWN WORDS, not invented — each
-- realm's README and its beacon row are quoted in the comment above its row.
--
-- Idempotent: `on conflict (atom_word) do nothing`.
--
-- Drafted 2026-08-18 by Scarf (Opus) for KP's ⚛ hand. NOT RUN.
-- ============================================================================

insert into public.atoms (
  atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, modifiers,
  screaming_case, snake_case, pascal_case
) values

  -- THE ART AND ANIMATION STUDIO. Its own README: "The Sanctuary's art and
  -- animation studio — animation, character animation, vector art, graphic
  -- art: different tools, all needed, ONE STAGE. Ardán: the Irish word for
  -- stage." And its beacon, KP's authoring: "The stage where the stories get
  -- told." `creation` for skapa's reason — a studio is categorised by what is
  -- made in it, not by the room's furniture.
  ('ardan',
   'A stage, a raised platform — the built place a thing is performed from, from ard, "high." Irish, ardán. The floor is raised so the telling can be seen; what is made on it is not the stage''s, and the stage is what makes it visible.',
   'root', 5, 5, 1, 'static',
   '8427a8ea-2bac-4152-a7d8-e174a77d2297', 'creation', 'published', null,
   'ARDAN', 'ardan', 'Ardan'),

  -- THE SOVEREIGN MUSICIAN'S INSTRUMENT. Its own README: "capture, layer, and
  -- shape your own music on your own device. RHYTHM THAT MOVES ENERGY AND
  -- WARDS THE ROOM." Its beacon: "The recorder — works · takes · feelings."
  -- `sensory` for cello's reason, ruled at 080: an instrument is a voice
  -- before it is an object.
  ('sistrum',
   'The shaken instrument — a handheld frame of loose rods that sounds when moved. Latin, from Greek σεῖστρον, "that which is shaken"; carried in the old rites to move the air of a room and change what stands in it. Rhythm as a thing done to a space, not merely heard in one.',
   'root', 5, 5, 1, 'static',
   '5ab76ea1-1092-4090-b0e8-e1d7dc0d5563', 'sensory', 'published', null,
   'SISTRUM', 'sistrum', 'Sistrum')

on conflict (atom_word) do nothing;


-- ============================================================================
-- VERIFY — read-only, safe to re-run.
-- ============================================================================

-- (1) The two stand.
select atom_word, category_name, atom_type, state, status, modifiers, pascal_case
from public.atoms
where atom_word in ('ardan', 'sistrum')
order by atom_word;

-- (2) The triggers made their companions, standing empty for a later fill.
select a.atom_word,
       (e.id is not null) as etymology_row,
       (s.id is not null) as sensory_row
from public.atoms a
left join public.etymology e on e.atom_id = a.id
left join public.sensory_lexicon s on s.atom_id = a.id
where a.atom_word in ('ardan', 'sistrum')
order by a.atom_word;

-- (3) THE BOND READINESS CHECK — every molecule bond_tender can now make, and
--     whether both its atoms stand. EXPECT NO ABSENCES. Two atoms make a
--     molecule; nothing here reaches three, so no organism is wanted by any
--     row in NEEDED-BEACONS or NEEDED-AWEN.
with wanted(molecule, a1, a2) as (values
  ('ResonanceArdan',   'resonance', 'ardan'),
  ('ResonanceSistrum', 'resonance', 'sistrum'),
  ('ResonanceCruthu',  'resonance', 'cruthu'),
  ('ResonanceSceal',   'resonance', 'sceal'),
  ('ResonanceKendram', 'resonance', 'kendram'),
  ('ResonanceGahana',  'resonance', 'gahana'),
  ('ResonanceClaude',  'resonance', 'claude'),
  ('ResonanceNemeton', 'resonance', 'nemeton'),
  ('ResonanceSirens',  'resonance', 'siren'),
  ('WordFind',         'word',      'find'),
  ('CrossWord',        'cross',     'word'),
  ('Wordoku',          'word',      'sudoku'),
  ('WordScramble',     'word',      'scramble')
)
select w.molecule,
       w.a1, case when x.id is null then '— ABSENT —' else 'stands' end as first_atom,
       w.a2, case when y.id is null then '— ABSENT —' else 'stands' end as second_atom,
       case when m.id is null then 'not yet bonded' else 'molecule stands' end as molecule_state
from wanted w
left join public.atoms x on x.atom_word = w.a1
left join public.atoms y on y.atom_word = w.a2
left join public.molecules m on m.name = w.molecule
order by (x.id is null or y.id is null) desc, w.molecule;

-- (4) The two beacons that were standing with no lineage at all. After
--     bond_tender runs, each should carry a molecule_id and nothing else —
--     LINK AT THE MAX VALUE ONLY is KP's rule, so an atom link beside a
--     molecule link would be the error, not the completeness.
select slug, name, status,
       (atom_id is not null)     as links_atom,
       (molecule_id is not null) as links_molecule,
       (organism_id is not null) as links_organism
from public.beacons
where slug in ('resonance-ardan', 'resonance-sistrum')
order by slug;
