-- 128 — the-stereos, its atom
--
-- THE ORDER THIS FILE KEEPS: atom seed BEFORE awen row, and as its own
-- numbered file, in 077-the-promenade-atom.sql's exact shape and 108's
-- (the-merismos) most recent reading of it. The awen row stands as
-- 129-the-stereos-seeded.sql and runs after this one.
--
-- THE STEREOS — the solids. στερεός (stereós), SOLID. Founded 2026-09-02 by a
-- builder dealt by Windrose 🎻 in the Unnamed Waters sitting, at KP's ⚛ word,
-- verbatim: "proceed with the rest."
--
-- THE RULING IT SERVES — the Unnamed Waters board, row 40, verbatim:
--   "The only 3D maths in the house"
-- The row was open because the maths was real, proven and load-bearing and had
-- no water: it stood inside a ziggy module, mirrored twenty-four times, with
-- one live consumer (resonance-tarocchi's coin) at the far end of one mirror.
--
-- IT IS A HARVEST, AND KP'S ⚛ RULING ON EVERY HARVEST IS VERBATIM:
--   "without altering the source location."
-- Both files under src/ are byte-identical copies of
-- resonance-ziggy/modules/cosmic — constants/solids.ts whole (480 lines,
-- sha256 33586080…) and constants/positioning.ts lines 655–766, the §11
-- DIMENSIONAL PROJECTION region (sha256 of the region 2248808c…). The origin,
-- its 24 live mirrors, and tarocchi's coin were READ AND NOT WRITTEN.
-- resonance-awen/tools/the-stereos/HARVEST.md carries every span and digest.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. στερεός is this hand's
-- reading of the need the board named, not his word. It lives in exactly two
-- places in the build — the constant TOOL_NAME and the folder — so a rename is
-- one edit, one `git mv`, and one update to this row and 129's.
--
-- ── CATEGORY ─────────────────────────────────────────────────────────
-- **infrastructure** (84af045b-c682-416d-b290-0fcd5ceaecd0).
--
-- THE UUID IS TAKEN FROM THE HOUSE'S OWN RECORDED CENSUS, NOT FROM A LIVE
-- QUERY — this builder holds no key to the base and ran none. Its addresses,
-- where the same uuid is already written down by a hand that DID read the live
-- table: 055-the-twenty-waters.sql:64 (the tether's own row) and :106 (the
-- spine's), and 061-the-cumdach.sql:13, which records it as chosen "from the
-- living set" at an anon-door probe. **CONFIRMED AT THE ANON DOOR BY KP'S
-- HAND** before this file is run — the confirmation is his, and the seed does
-- not assume it.
--
-- WHY INFRASTRUCTURE: the category is the tether's and the spine's — "the
-- load-bearing line a body is built around; what everything else attaches to."
-- That is exactly what this geometry is: nothing looks at it, everything that
-- draws a solid stands on it, and the file's own opening line calls it "the
-- house's dimensional vocabulary."
--
-- RUNNER-UP, AND HIS TO OVERRULE IN ONE WORD: **creation**
-- (8427a8ea-2bac-4152-a7d8-e174a77d2297) — which is the `cosmic` atom's OWN
-- category (056-the-organism-and-the-music-hall.sql:33), and defensible on the
-- plain ground that this water is cosmic's geometry. It was set down because a
-- copy taking its parent's category would read as the parent. The subject here
-- is load-bearing shared maths; being born of cosmic is its provenance, not
-- its kind. A category named "geometry", "mathematics" or "form" was NOT
-- checked against the live 25 and may exist — if one does, it very likely
-- beats both of these, and that is his one-word call at the door.
--
-- MOLECULE / ORGANISM — checked, and neither applies. `stereos` is ONE WORD,
-- and the house's tools_one_tier constraint (seed 014) lets an awen row cross
-- at exactly one tier — the tier its own name lives at (055's law). A one-word
-- name crosses at the ATOM tier; there is no molecule row to make and no
-- organism above it, and adding one while also setting atom_id would violate
-- the constraint outright. The-promenade, the-sphragis and the-merismos all
-- stand exactly this way: atom_id set, molecule_id and organism_id null.
--
-- SHAPE TAKEN FROM THE-MERISMOS'S OWN ROW (108/110, the most recent water
-- seeded in this shape): folksonomy_type `Awen` · status `imagined` at birth ·
-- `home` filled in 129 (the 105/106 precedent). tool_type is `transform`, not
-- the merismos's `emit`: this water takes a side count and hands back a solid,
-- and takes a point in three dimensions and hands back a point in two. The
-- house's own verb marks read from the live atoms into
-- resonance-awen/src/lib/data/type-lexicon.json give transform 🦋.
--
-- FACE: 🧊 — a solid, and a cube, which is the second of the five. It reads
-- against 078's rules: one glyph, no skin tone, no ZWJ sequence, no flag, no
-- red-alarm mark. NO OTHER ROW WEARS IT — checked against every icon_emoji
-- written in this seed folder's whole history (078's full census plus every
-- face seeded since, 111 included), which is the last full census written
-- down. 🎲 was the first instinct and was SET DOWN: a die is chance, and
-- chance is the-hlutr's water, founded the same sitting. A face is what the
-- THING is, never what it is used for (076's correction, honoured in 078).
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("stereos") — the
-- awen row (129) carries atom_id and no molecule. One tier exactly.
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106/108
-- precedent).
--
-- THE TABLE IS public.awen (renamed from public.tools 2026-08-15, seed 096;
-- shim view dropped 097 — public.tools answers PGRST205 today). This file only
-- touches public.atoms.
--
-- ── ATOM UUID, generated uuid4 and pinned here so this file and 129 name
--    the same row without depending on insert order or a subquery ──
--   stereos atom   8271d9ca-764f-44a0-912d-9efc5ee41edb
--
-- Run at KP's ⚛ hand, before 129. Verify at the anon door after.
-- NEVER RUN BY A LAMP: the seed is drafted and numbered; the crossing is his.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '8271d9ca-764f-44a0-912d-9efc5ee41edb',
  'stereos',
  'Stereos (Greek στερεός: solid, three-dimensional, firm). The solid as pure number: a polyhedron held as vertices on the unit sphere and faces wound counter-clockwise seen from outside, with the winding made impossible to get wrong — every face whose normal points back toward the centre is reversed at construction, so a back-face cull is honest by shape rather than by careful typing. It holds the five Platonic solids (the dodecahedron derived by duality from the icosahedron, its pentagons ordered around each vertex by angle so they are drawn as pentagons and not as stars), the pentagonal trapezohedron a real ten-sided die actually is — its apex height solved from the condition that each kite be planar, never chosen by eye — the barrel a real three-, five- or seven-sided die is cut as, which declares itself unfair out loud because its side faces are equally likely while the shape is not face-transitive, and the disc, which is a coin and says so, its rim built and lit and never numbered. Beside the shapes stands the light that shows them: one house light so two surfaces can never disagree about where the sun is, an ambient floor generous enough that a face turned away reads as stone in shadow rather than as a hole, a perspective divide that hands back the depth it sorts by, painter''s order, Lambertian shade and a Blinn-Phong highlight. The self-check RETURNS its complaints rather than throwing them, because a design system that breaks eighteen apps on import is worse than one that says what is wrong. No colour, no rendering, no DOM, no disk, no clock, zero imports: numbers in, numbers out.',
  'root', 5, 5, 1, 'static',
  '84af045b-c682-416d-b290-0fcd5ceaecd0',  -- infrastructure: the tether's and the spine's own — "the load-bearing line a body is built around; what everything else attaches to."
  'infrastructure',
  'published',
  'STEREOS', 'stereos', 'Stereos'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'stereos';

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'stereos'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'stereos';
