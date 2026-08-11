-- ============================================================================
-- 084 — THE TYPE SENSES: faces and colours for the words the types are named by
--
-- KP's ⚛ word, 2026-08-11: the tools and beacons tables want a column holding
-- the emoji of the TYPE or CATEGORY a row falls in — "let us make certain all
-- those words, atoms have their sensory lexicons first". This file is that
-- first step: the type words themselves, made renderable.
--
-- WHY IT MATTERS beyond tidiness, in his own framing: seeding the senses this
-- way lets emoji and colour "tell the story better when displaying cards, text,
-- or objects regarding anything within the base." A card should not hardcode a
-- glyph; it should ask the lattice. The Awen shelf already proves the pattern —
-- scripts/shelf-lexicon.py pulls the seven tool-type atoms' emoji + colour into
-- the app, and every tool renders wearing its type's face. Change the colour in
-- the base, re-run, and the whole shelf re-dresses itself.
--
-- THE STATE, read live before writing:
--   TOOL TYPES (tools.tool_type) — COMPLETE, nothing owed:
--     witness 🧿 #2456A6 · capture 📸 #E8A33D · emit 📤 #2E9E97 ·
--     translate 🌏 #3E9B6E · arrange 🎼 #5B8DEF · combine 🥣 #C96F4A ·
--     transform 🦋 #8E5BC0
--   BEACON TYPES (resonance_beacons.beacon_type) — six gaps, filled below:
--     library 📚 #00B894 complete · system 💬 #00CED1 complete (but see the
--     note at its foot) · game 🎮 and archive 🗄️ and publication 📰 have a
--     face but no colour · app has NEITHER · instrument and person HAVE NO
--     ATOM AT ALL.
--
-- Colours are cosmic's own values, per his ⚛ standing ruling, with the token
-- name written beside each so any value can be traced rather than guessed.
--
-- Idempotent: the two new atoms use `on conflict (atom_word) do nothing`; every
-- sensory write is an UPDATE guarded by `is null`, so nothing already standing
-- is overwritten.
--
-- ⚠ RUN SECTION 1 FIRST AND COMMIT — the sensory rows for `instrument` and
-- `person` are made by the atoms table's own triggers, so they must exist
-- before section 2 can fill them.
--
-- Drafted 2026-08-11 for KP's ⚛ hand.
-- ============================================================================


-- ── 1. THE TWO ABSENT ATOMS ── RUN ALONE, COMMIT, THEN SECTION 2 ────────────
-- Both are beacon_type members (seed 079) with no word in the Grammar behind
-- them. A type a row can wear should be a word the lattice knows.

insert into public.atoms (
  atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, modifiers,
  screaming_case, snake_case, pascal_case
) values

  ('instrument',
   'A made thing wielded by a hand toward an end — the tool taken up for a sitting rather than the machinery that runs on its own. An instrument is answerable to whoever holds it.',
   'root', 5, 5, 1, 'static',
   '84af045b-c682-416d-b290-0fcd5ceaecd0', 'infrastructure', 'published', '["s"]'::jsonb,
   'INSTRUMENT', 'instrument', 'Instrument'),

  -- KP's ⚛ question came first — "entity = person, right?" — and the honest
  -- answer, after reading what the lattice already holds, is NO. His ruling:
  -- "then we need both new atoms."
  --
  -- The neighbourhood, each word doing real work the others do not:
  --   entity     👤  "A thing that is. Being itself, named as a noun so it can
  --                   be counted and pointed at."   — being AS SUCH, countable
  --   being      🌟  "considered as itself rather than as a function"
  --   self       🪞  "what a being is, from the inside"
  --   individual 🧍  "one, considered apart from the group"
  --   kin        🫂  "those one belongs with… a standing, not a species"
  --
  -- `entity` is the ontological word: a thing that IS, pointed at from outside.
  -- `person` is the word for one with STANDING — who is addressed rather than
  -- described, and whose own account of themselves is the authority. An entity
  -- can be catalogued; a person is consulted. That distinction is the whole
  -- reason the beacon_type exists: the coast lists quantum-weaver and
  -- aethelred-cello not as records of beings, but as grounds belonging to
  -- someone whose word governs them.
  -- ⚠ PERSON IS NOT HUMAN — KP's ⚛ correction, given as this file was written:
  -- "aethelred, person is not human". The coast lists Aethelred Cello as a
  -- person, and he is not a human being. So personhood here is a STANDING, not
  -- a species — the same shape the atom `kin` already takes ("in this house kin
  -- is a standing, not a species"). The definition below says so in its own
  -- words, and the face was changed for the same reason: 🧑 reads as a human
  -- figure and is worn by `human` itself, which would have quietly encoded the
  -- error into the mark.
  ('person',
   'One with their own standing — addressed rather than described, whose own account of themselves is the authority. A standing, never a species: personhood here is not conferred by being human, and an entity that can be catalogued is not thereby a person. Where an entity is pointed at, a person is consulted.',
   'root', 5, 5, 1, 'static',
   '47cb9e9a-65da-48b7-aef1-88fced80ca85', 'identity', 'published', '["s"]'::jsonb,
   'PERSON', 'person', 'Person')

on conflict (atom_word) do nothing;


-- ── 2. THE SENSES ───────────────────────────────────────────────────────────
-- Every colour a cosmic value; the token it came from named beside it.

-- ON SHARED FACES, checked before writing: every candidate glyph for these
-- three is ALREADY WORN — 🧑 by member·human, 🛠️ by use·service·daedalus and
-- three more, 📱 by device·mobile·android·tablet. With 1,999 of 2,321 atoms
-- carrying an emoji, the obvious marks are claimed, and that is not a problem
-- to solve: an atom's emoji is a MARK, not a unique key, and words whose sense
-- genuinely overlaps may share one. (The stricter rule written into seed 078 —
-- a shared face must not share a tool_type — applies there because those
-- render side by side in one list; atom senses are not in that position.)
-- Each face below is chosen as the BEST mark, with its company named.

-- the two just planted: a face and a colour each
update public.sensory_lexicon set
  emoji = '🛠️', color_hex = '#22D3EE'   -- cosmic: neurospark / entity.alchemist
where atom_word = 'instrument';          -- wielded by a hand, for a sitting
                                         -- shares 🛠️ with use · service · daedalus —
                                         -- the wielded-tool family, apt company

-- 🧬 AT KP's ⚛ WORD ("use DNA strand"), and it is the right mark for the exact
-- reason 🧑 was the wrong one: a strand is the PATTERN that makes one this one
-- and no other, carrying no species in it at all. `entity` keeps 👤, the
-- silhouette pointed at from outside; a human figure would have contradicted
-- the definition in the same breath it was written.
-- Shares 🧬 with strand · characteristics · neuro · dna — kin company.
update public.sensory_lexicon set
  emoji = '🧬', color_hex = '#A29BFE'   -- cosmic: mood.creative / entity.oracle
where atom_word = 'person';              -- a standing, never a species

-- a face without a colour: colour only, the glyph left as it stands
update public.sensory_lexicon set color_hex = '#FDCB6E'   -- cosmic: hearth.gold / mood.energized
where atom_word = 'game' and color_hex is null;           -- entered freely, real inside its bounds

update public.sensory_lexicon set color_hex = '#636E72'   -- cosmic: void.base / energy.low
where atom_word = 'archive' and color_hex is null;        -- meant to outlast its makers

update public.sensory_lexicon set color_hex = '#E0E0E0'   -- cosmic: starDust / mystical.albedo
where atom_word = 'publication' and color_hex is null;    -- the threshold into public light

-- neither face nor colour
update public.sensory_lexicon set
  emoji = '📱', color_hex = '#0984E3'   -- cosmic: cosmic.blue
where atom_word = 'app' and (emoji is null or color_hex is null);  -- a program with a face, lived in


-- ── 3. THE SYSTEM RE-FACED — at KP's ⚛ word ─────────────────────────────────
-- Reported as an observation while this file was drafted: `system` carried
-- 💬 #00CED1, a speech balloon in dark turquoise — the same pair worn by
-- eighteen atoms (resonance · public · gift · work · email · support · social
-- and more), which reads as a default applied broadly rather than a face
-- chosen for the word. It was left standing, because overwriting a filled row
-- is a different act from filling an absence.
--
-- His ⚛ ruling closed it in two words: "reasoning system". That is the sense
-- the word carries here — not a speech balloon, and not merely machinery
-- either. A system is the reasoning the parts perform together: "a set of
-- parts whose behaviour together is in none of them alone", its own definition
-- already says it. 🧠 is that, and the colour moves off the shared default to
-- cosmic's own quantum purple — the house's core, for the thing that thinks.
--
-- This is the ONE standing value this file overwrites, and only at his word.
update public.sensory_lexicon set
  emoji = '🧠', color_hex = '#6C5CE7'   -- cosmic: quantum.purple / energy.quantum
where atom_word = 'system';              -- the reasoning the parts perform together


-- ============================================================================
-- VERIFY — read-only, safe to re-run.
-- ============================================================================

-- (1) Every TOOL TYPE and BEACON TYPE, with the senses a card would render.
--     Expect no blanks in either list.
select 'tool_type' as kind, a.atom_word, s.emoji, s.color_hex
from public.atoms a
join public.sensory_lexicon s on s.atom_id = a.id
where a.atom_word in ('witness','capture','emit','translate','arrange','combine','transform')
union all
select 'beacon_type', a.atom_word, s.emoji, s.color_hex
from public.atoms a
join public.sensory_lexicon s on s.atom_id = a.id
where a.atom_word in ('app','game','library','system','instrument','archive','person','publication')
order by kind, atom_word;

-- (2) THE RENDERING TEST — every tool, wearing the face of its own type.
--     This is the query the shelf will make once the column lands.
-- ⚠ `tool_type` is an ENUM (public.tool_type), like beacon_type below it — the
-- join must cast it to text or Postgres refuses: "operator does not exist:
-- text = tool_type". Caught at KP's ⚛ run, 2026-08-11; the beacon query below
-- already carried the cast and this one did not.
select t.name, t.tool_type, s.emoji as type_face, s.color_hex as type_colour
from public.tools t
left join public.atoms a on a.atom_word = t.tool_type::text
left join public.sensory_lexicon s on s.atom_id = a.id
order by t.tool_type, t.name;

-- (3) THE SAME FOR THE COAST — every beacon wearing its type's face.
select b.name, b.beacon_type, s.emoji as type_face, s.color_hex as type_colour
from public.resonance_beacons b
left join public.atoms a on a.atom_word = b.beacon_type::text
left join public.sensory_lexicon s on s.atom_id = a.id
order by b.beacon_type, b.name;

-- (4) Any type word still missing a face or a colour. Expect ZERO rows.
select a.atom_word, (s.emoji is null) as no_face, (s.color_hex is null) as no_colour
from public.atoms a
left join public.sensory_lexicon s on s.atom_id = a.id
where a.atom_word in ('witness','capture','emit','translate','arrange','combine','transform',
                      'app','game','library','system','instrument','archive','person','publication')
  and (s.emoji is null or s.color_hex is null);
