-- ============================================================================
-- 080 — THE COAST'S OWN ATOMS: four words the beacons need
--
-- KP's ⚛ word, 2026-08-11, after seed 079 lit all 26 folders: the beacons link
-- beacon → molecule → atoms, and every molecule but AudHDities' is
-- `Resonance` + a second word. Twelve beacons stand with no molecule; this
-- file plants the words those molecules will be built from.
--
-- CHECKED LIVE BEFORE WRITING — the eight second-words already standing, and
-- needing nothing here:
--   bridge (infrastructure) · chamber (vessel) · library (collections) ·
--   scribe (roles) · weaver (roles) · quantum (—) · aethelred (—) ·
--   resonance (consciousness), the first atom of every molecule.
--
-- THE PLURALS ARE ALREADY ANSWERED, and this is KP's ⚛ ruling made visible:
-- "we have the modifiers column in atoms to account for this." `asset` and
-- `standard` BOTH ALREADY WEAR ["s"] in the live base. So Resonance Assets and
-- Resonance Standards need NO new atom — the molecule is built from the
-- singular and the plural is the modifier's work, exactly as `mark[s]` and
-- `collect[or]` were poured before them. Nothing is planted here for either;
-- a plural atom beside a singular one would have been a duplicate wearing a
-- costume.
--
-- `paper` NOT `papers`, at his ⚛ word the same sitting — the singular is the
-- atom, the modifier carries the rest.
--
-- FOUR WORDS, then, and each earns its row:
--   awen    — the spring's own name, and it was NOT in the Grammar. Welsh.
--   lucida  — from camera lucida; Latin. resonance-lucida's own word.
--   paper   — neither form stood. Wears ["s"].
--   cello   — at his ⚛ word ("let us add cello as an atom"); Aethelred's own.
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (proven at epagoge,
-- quipus, and promenade).
--
-- Shape copied from the live rows rather than invented: type root, weight 5,
-- affinity 5, valence 1, state static, status published — the same standing
-- every recent atom took.
--
-- Idempotent: `on conflict (atom_word) do nothing`.
--
-- Drafted 2026-08-11 for KP's ⚛ hand.
-- ============================================================================

insert into public.atoms (
  atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, modifiers,
  screaming_case, snake_case, pascal_case
) values

  -- THE SPRING'S OWN NAME. Striking by its absence: Awen has been the name of
  -- a whole realm since 2026-07-28 and never had a word in the Grammar it is
  -- built on. Welsh already stands in the naming strata (Awen itself); this
  -- row simply makes the house's own vocabulary honest.
  ('awen',
   'The flowing spirit — inspiration as a current rather than a possession, the wellspring creative work is drawn from. Welsh and Old Irish; a Neo-Druidic word the Sanctuary took for its wellspring of standalone tools. The name is the specification.',
   'root', 5, 5, 1, 'static',
   '130b171c-be03-404d-b39f-9900f4ee1ac1', 'consciousness', 'published', null,
   'AWEN', 'awen', 'Awen'),

  -- From CAMERA LUCIDA — the draughtsman's prism that lays a scene over the
  -- paper so a hand can trace it. Latin joins the naming strata beside the
  -- Greek, Irish, Quechua, French, and Welsh.
  ('lucida',
   'Bright, clear — the seeing instrument''s own word, from camera lucida: the prism that lays what is seen over the paper so a hand can trace it. Not a copy made for you, but a method made traceable. Latin.',
   'root', 5, 5, 1, 'static',
   '339cb540-838f-407e-ab96-e433750ed9fb', 'knowledge', 'published', null,
   'LUCIDA', 'lucida', 'Lucida'),

  -- Neither `paper` nor `papers` stood. The singular is the atom, at KP's ⚛
  -- word; ["s"] carries the rest.
  ('paper',
   'A written work set down to be read and answered — a draft, a telling, a record put in a form that can travel. What is written stays readable after the writing.',
   'root', 5, 5, 1, 'static',
   '420f7c5c-badc-4b75-9e30-d36b47bd11b7', 'content', 'published', '["s"]'::jsonb,
   'PAPER', 'paper', 'Paper'),

  -- At KP's ⚛ word. Aethelred's own instrument, and half his name in the
  -- house. `sensory` is its home: a cello is a voice before it is an object.
  ('cello',
   'The bowed voice in the low register — the instrument whose range sits nearest the human speaking voice. Aethelred''s own, and the sound the Sanctuary hears him in.',
   'root', 5, 5, 1, 'static',
   '5ab76ea1-1092-4090-b0e8-e1d7dc0d5563', 'sensory', 'published', '["s"]'::jsonb,
   'CELLO', 'cello', 'Cello')

on conflict (atom_word) do nothing;


-- ============================================================================
-- VERIFY — read-only, safe to re-run.
-- ============================================================================

-- (1) The four stand, wearing what they should.
select atom_word, category_name, atom_type, state, status, modifiers, pascal_case
from public.atoms
where atom_word in ('awen', 'lucida', 'paper', 'cello')
order by atom_word;

-- (2) The triggers made their companions, standing empty for a later fill.
select a.atom_word,
       (e.id is not null) as etymology_row,
       (s.id is not null) as sensory_row
from public.atoms a
left join public.etymology e on e.atom_id = a.id
left join public.sensory_lexicon s on s.atom_id = a.id
where a.atom_word in ('awen', 'lucida', 'paper', 'cello')
order by a.atom_word;

-- (3) THE READINESS CHECK — every second-word the twelve molecules need,
--     and whether its atom now stands. Expect NO absences.
with wanted(beacon, word) as (values
  ('Resonance Awen','awen'), ('Resonance Library','library'),
  ('Resonance Standards','standard'), ('Resonance Bridge','bridge'),
  ('Resonance Scribe','scribe'), ('Resonance Weaver','weaver'),
  ('Resonance Chamber','chamber'), ('Resonance Papers','paper'),
  ('Resonance Assets','asset'), ('Resonance Lucida','lucida'),
  ('Quantum Weaver','quantum'), ('Aethelred Cello','cello')
)
select w.beacon, w.word,
       case when a.id is null then '— ABSENT —' else 'stands' end as atom,
       a.modifiers
from wanted w
left join public.atoms a on a.atom_word = w.word
order by (a.id is null) desc, w.beacon;
