-- 129 — the-stereos seeded
--
-- THE STEREOS — the solids. στερεός (stereós), SOLID. The house's 3D maths,
-- standing as its own water. Founded 2026-09-02 by a builder dealt by
-- Windrose 🎻 in the Unnamed Waters sitting, at KP's ⚛ word, verbatim:
-- "proceed with the rest."
--
-- THE RULING IT SERVES — the Unnamed Waters board, row 40, verbatim:
--   "The only 3D maths in the house"
--
-- IT IS A HARVEST, AND KP'S ⚛ RULING ON EVERY HARVEST IS VERBATIM:
--   "without altering the source location."
-- Both files under src/ are byte-identical copies of
-- resonance-ziggy/modules/cosmic. NOTHING WAS REPOINTED: cosmic keeps its own
-- copy and its 24 live mirrors, and resonance-tarocchi's coin — the one real
-- consumer of this geometry (src/lib/coin/Coin.svelte:8 and
-- src/lib/coin/shape.ts:1, both via $lib/cosmic) — STAYS ON ITS MIRROR. If the
-- house ever wants one truth instead of twenty-six copies, that is the parity
-- guard's and distribution's business and KP's ⚛ word, never a builder's.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. στερεός is this hand's
-- reading of the need the board named. It lives in exactly two places in the
-- build — the constant TOOL_NAME and the folder — so a rename is one edit, one
-- `git mv`, and one update to this row and 128's.
--
-- CATEGORY: **infrastructure** (84af045b-c682-416d-b290-0fcd5ceaecd0) — see
-- 128's header for the uuid's addresses in the house's recorded census
-- (055:64, 055:106, 061:13), for why infrastructure and not creation, and for
-- the plain statement that this builder ran no live query. **CONFIRMED AT THE
-- ANON DOOR BY KP'S HAND** before this file is run.
--
-- SHAPE TAKEN FROM THE-MERISMOS'S OWN ROW (108/110): folksonomy_type `Awen` ·
-- status `imagined` at birth · `home` filled here (the 105/106 precedent).
-- tool_type is `transform` — a side count in, a solid out; three dimensions
-- in, two out — where the merismos's is `emit`.
--
-- FACE: 🧊 — a solid, and a cube. One glyph, no skin tone, no ZWJ, no flag, no
-- red-alarm mark, and no other row wears it (checked against 078's whole
-- census and every face seeded since, 111 included). 🎲 was set down: a die is
-- chance, and chance is the-hlutr's water, founded the same sitting.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("stereos") — the
-- row carries atom_id and no molecule. One tier exactly. (128's header records
-- why no molecule or organism row exists.)
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106/108
-- precedent).
--
-- THE TABLE IS public.awen. It was renamed from public.tools on 2026-08-15
-- (seed 096) and the shim view was dropped at KP's word on 097 — public.tools
-- answers PGRST205 today.
--
-- Local mirror pin (progenatrix): 836f0894-80fc-4d4c-b7b6-d128a1ce75c5
--
-- Run at KP's ⚛ hand, after 128. Verify at the anon door after.
-- NEVER RUN BY A LAMP: the seed is drafted and numbered; the crossing is his.

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values
  ('The Stereos', 'the-stereos', 'transform',
   'THE ONLY 3D MATHS IN THE HOUSE, standing as its own water. Polyhedra as vertices and faces: the five Platonic solids, the dodecahedron derived by duality from the icosahedron with its pentagons ordered around each vertex by angle so they are drawn as pentagons and not as stars; the pentagonal trapezohedron a real d10 actually is, its apex height SOLVED from the planarity condition and never chosen by eye; the barrel a real d3, d5 or d7 is cut as, which says fair:false out loud because its side faces are equally likely while the shape is not face-transitive; and the disc, which is a coin and says so, its rim built, lit and never numbered. WINDING IS MADE IMPOSSIBLE TO GET WRONG — every face whose normal points back toward the centre is reversed at construction, so a back-face cull is honest by shape rather than by careful typing. Beside the shapes, the light that shows them: one house light so two surfaces can never disagree about where the sun is, an ambient floor generous enough that a face turned away reads as stone in shadow rather than as a hole in it, a perspective divide that hands back the depth it sorts by, painter''s order that returns a new order rather than sorting in place, Lambertian diffuse and a Blinn-Phong highlight. verifySolids() RETURNS its complaints rather than throwing: a design system that breaks eighteen apps on import is worse than one that says what is wrong. A HARVEST AND NEVER A RE-POINT — both source files are byte-identical copies of resonance-ziggy/modules/cosmic, which was read and not written, and the origin, its 24 live mirrors and tarocchi''s coin all stand exactly as they were found. Zero runtime imports, no colour, no rendering, no DOM, no disk, no clock.',
   'resonance-awen/tools/the-stereos', 'imagined', '🧊', 'Awen',
   '8271d9ca-764f-44a0-912d-9efc5ee41edb',  -- the stereos atom, seeded in 128
   'Founded 2026-09-02 by a builder dealt by Windrose in the Unnamed Waters sitting, at KP''s ⚛ word "proceed with the rest", answering board row 40 verbatim: "The only 3D maths in the house." The row was open because the maths was real, proven and load-bearing and had no water — it stood inside a ziggy module, mirrored twenty-four times, with one live consumer at the far end of one of those mirrors. Harvested under KP''s ⚛ standing ruling "without altering the source location": constants/solids.ts whole and constants/positioning.ts lines 655-766 copied byte-identical, with HARVEST.md carrying every span and digest and naming the true span where the plan said 656-768 — the head moved up one so the section banner was not cut in half, the tail down two so no line of THE FIRST-PERSON TABLE, which stays, came along. The region declares no dependency on its origin file: LIGHT_VECTOR, SURFACE_LIGHTING and PROJECTION_FOCAL are all declared inside it, which is why it could be cut at all. Gates at landing: check silent, build clean, 29/29 TRUE. The proofs are seeded by the origin''s own self-check — the first nine run the copied verifySolids() and print its checks a solid at a time — and add Euler''s V-E+F=2 for each of the five Platonic solids, the dodecahedron''s duality to the icosahedron read both ways, the trapezohedron''s ten kites planar within 1e-9 (worst 3.33e-16), the focal axis landing on the origin at eight depths, faceIsFacing true and false and false edge-on, painter''s order far-to-near without touching the given array, diffuse and specular swept over 544 unit normals and never leaving [0,1], a full turn about three axes returning a point to itself, and determinism. ONE FINDING, REPORTED AND NOT FIXED: the house light is a unit vector only to four decimal places (|LIGHT_VECTOR| = 1.000018694825, over by 1.87e-5, worst diffuse error 1.08e-5 against 3.92e-3 for one step of an 8-bit channel). Mending it here would alter a copy; mending it belongs at the origin, at his word, travelling the distribution road to every mirror at once. THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE — it lives in one constant and one folder so a rename is cheap.',
   'a builder dealt by Windrose, at KP''s ⚛ word');

-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it
-- now that the proofs stand; uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug = 'the-stereos';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen where slug = 'the-stereos';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'stereos';

-- no other row should wear 🧊:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name)
from public.awen where icon_emoji = '🧊' group by icon_emoji;

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'stereos'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'stereos';
