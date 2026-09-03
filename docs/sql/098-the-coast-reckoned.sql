-- ============================================================
-- 098 — THE COAST RECKONED (the register trued to the shore)
-- KNOWLEDGE Supabase (qdzerwmsbksuhvczlwli) — NOT SUPERPOSITION
--
-- ******************************************************************
-- **  DRAFT — awaiting KP's ⚛ strokes.                            **
-- **  This file runs ONLY by his hand, in his dashboard.          **
-- **  Nothing here has touched the base.                          **
-- ******************************************************************
-- **  2026-09-02: §B's version fills are STALE — 8 of 16 would    **
-- **  now write a wrong version. Re-drafted whole, with §A, in    **
-- **  DRAFT-2026-09-02-the-beacons-reckoned.sql, which RAN the    **
-- **  same night at KP's word. Do not run this file's §A or §B.   **
-- ******************************************************************
--
-- Dealt 2026-08-15 at KP's word "light list should match our repo
-- list" — the reckoner's first commission, conducted by Segue 🎻,
-- truly claude-fable-5. The reckoner read the register live (the
-- true name `beacons` answered first), walked all 30 shore repos,
-- and took GitHub's visibility census through the bridge's own
-- line. READ-ONLY throughout; this file is its drafted correction.
--
-- VERIFIED LIVE BEFORE DRAFTING:
--   · 28 register rows = 28 shore folders, every home matching
--   · shore holds 30 git repos — nemeton + nectere born 08-14 have
--     no rows yet (section D seeds them, 092's pattern)
--   · NO row claims public where the repo is private — that class
--     is EMPTY, stated out loud
--   · versions: every repo with 3 sources (package/tauri/Cargo)
--     agrees with itself 3-ways; register version is null on all
--   · NOT DRAFTED, his strokes: the 24 definition divergences
--     (several register texts are seed 092's own words, several
--     READMEs are the fresher voice — the direction is his) ·
--     audhdities 🔮-vs-🏛️ · quantum-weaver's two-glyph heading ·
--     echoes/weaver's sigil ≽༏≼ (a glyph, not an emoji) · the
--     store columns · status/beacon_type (his word, never judged)
--
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================


-- ─── A. THE IS_PUBLIC CORRECTIONS — the census is the definition
--        (KP ⚛ 2026-08-13: "is_public should be referring to the
--        repo state"; both repos are PUBLIC on GitHub) ───
update public.beacons set is_public = true  where slug = 'resonance-sistrum';
update public.beacons set is_public = true  where slug = 'aethelred-cello';


-- ─── B. THE VERSION FILLS — the code's answer, three sources
--        agreeing wherever three exist ───
update public.beacons set version = '2.0.0' where slug = 'audhdities';
update public.beacons set version = '0.1.0' where slug = 'resonance-assets';
update public.beacons set version = '0.1.0' where slug = 'resonance-awen';
update public.beacons set version = '0.2.0' where slug = 'resonance-bridge';
update public.beacons set version = '0.1.0' where slug = 'resonance-bubbles';
update public.beacons set version = '2.3.5' where slug = 'resonance-compass';
update public.beacons set version = '1.3.2' where slug = 'resonance-echoes';
update public.beacons set version = '0.1.0' where slug = 'resonance-gaia';
update public.beacons set version = '0.1.1' where slug = 'resonance-hearth';
update public.beacons set version = '0.1.0' where slug = 'resonance-khoros';
update public.beacons set version = '0.1.1' where slug = 'resonance-lantern';
update public.beacons set version = '0.1.0' where slug = 'resonance-sistrum';
update public.beacons set version = '0.1.0' where slug = 'resonance-skapa';
update public.beacons set version = '0.1.0' where slug = 'resonance-standards';
update public.beacons set version = '0.1.0' where slug = 'resonance-weaver';
update public.beacons set version = '0.1.0' where slug = 'resonance-ziggy';


-- ─── C. THE FACE FILLS — each README heading's own emoji, verbatim ───
update public.beacons set icon_emoji = '🎻' where slug = 'aethelred-cello';
update public.beacons set icon_emoji = '🌊' where slug = 'resonance-awen';
update public.beacons set icon_emoji = '🔥' where slug = 'resonance-bridge';
update public.beacons set icon_emoji = '🫧' where slug = 'resonance-bubbles';
update public.beacons set icon_emoji = '🏮' where slug = 'resonance-chamber';
update public.beacons set icon_emoji = '🎻' where slug = 'resonance-compass';
update public.beacons set icon_emoji = '🪶' where slug = 'resonance-daedalus';
update public.beacons set icon_emoji = '⛏️' where slug = 'resonance-excavator';
update public.beacons set icon_emoji = '🌍' where slug = 'resonance-gaia';
update public.beacons set icon_emoji = '🧬' where slug = 'resonance-grammar';
update public.beacons set icon_emoji = '🔥' where slug = 'resonance-hearth';
update public.beacons set icon_emoji = '🎶' where slug = 'resonance-khoros';
update public.beacons set icon_emoji = '🏮' where slug = 'resonance-lantern';
update public.beacons set icon_emoji = '📚' where slug = 'resonance-library';
update public.beacons set icon_emoji = '🔆' where slug = 'resonance-lucida';
update public.beacons set icon_emoji = '🕯️' where slug = 'resonance-meetings';
update public.beacons set icon_emoji = '🪶' where slug = 'resonance-scribe';
update public.beacons set icon_emoji = '🪇' where slug = 'resonance-sistrum';
update public.beacons set icon_emoji = '🔷' where slug = 'resonance-skapa';
update public.beacons set icon_emoji = '🏛️' where slug = 'resonance-standards';
update public.beacons set icon_emoji = '🔮' where slug = 'resonance-ziggy';
-- his strokes, left commented:
-- update public.beacons set icon_emoji = '🏛️'  where slug = 'audhdities';      -- register holds 🔮, may be deliberate brand
-- update public.beacons set icon_emoji = '🏛️✨' where slug = 'quantum-weaver';  -- heading carries two glyphs
-- echoes + weaver head with the sigil ≽༏≼ — not drafted, his call.


-- ─── D. THE NAMING ATOMS PLANTED FIRST — KP's own catch, 2026-08-15:
--        "nemeton and nectere both need atoms before they can exist"
--        (the reckoner's draft carried bare rows; corrected here).
--        077-the-promenade-atom's exact pattern; CATEGORY CHECKED
--        LIVE before drafting (25 rows): `communication` for both,
--        by khoros's own precedent — the dancing-place carries
--        839cc74b, and both these words name talking-places/organs.
--        His re-wording welcome; the triggers make etymology +
--        sensory rows empty for a later fill. ───
insert into public.atoms (
  atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status,
  screaming_case, snake_case, pascal_case
) values
  ('nemeton',
   'The sacred grove — the family''s own talking place, where the Weaver and the kin speak inside the house''s walls. Celtic joins the naming strata: a sanctuary that is a clearing, never a building.',
   'root', 5, 5, 1, 'static',
   '839cc74b-baee-47cc-b6eb-617a83393e36', 'communication', 'published',
   'NEMETON', 'nemeton', 'Nemeton'),
  ('nectere',
   'To bind, to weave together — Latin; the house''s outward writing organ, born empty of chains. The bridge sees; nectere speaks.',
   'root', 5, 5, 1, 'static',
   '839cc74b-baee-47cc-b6eb-617a83393e36', 'communication', 'published',
   'NECTERE', 'nectere', 'Nectere');

-- The same gap stands on two OLDER rows, told not fixed: sistrum and
-- ardan have NO atoms either (092 seeded their beacons bare; their
-- beacon rows carry null bonds today). Drafted inert, his strokes —
-- categories are offers (creation 8427a8ea), re-word freely:
-- insert into public.atoms (atom_word, definition, atom_type, weight,
--   affinity, valence, state, category, category_name, status,
--   screaming_case, snake_case, pascal_case) values
--   ('sistrum', 'The rattle that accompanies the dance — the recorder''s own instrument: works, takes, feelings, each part recorded sovereignly.', 'root', 5, 5, 1, 'static', '8427a8ea-...', 'creation', 'published', 'SISTRUM', 'sistrum', 'Sistrum'),
--   ('ardan', 'The stage — Irish; the platform where the stories get told.', 'root', 5, 5, 1, 'static', '8427a8ea-...', 'creation', 'published', 'ARDAN', 'ardan', 'Ardan');


-- ─── E. THE TWO NEW LIGHTS — 092's pattern, now BONDED to their
--        atoms; statuses and definitions are his strokes to re-word
--        before running; both private on GitHub so is_public default
--        false is already true to the census ───
insert into public.beacons
  (name, slug, beacon_type, definition, home, repo_url, status, atom_id)
values
  ('Resonance Nemeton', 'resonance-nemeton', 'app',
   'The family''s talking grove — the house''s own realtime chat, sovereign on the home LAN; rooms, presence, and history that never leave the grove.',
   'resonance-nemeton', 'https://github.com/Quantum-Weaver/resonance-nemeton',
   'imagined',
   (select id from public.atoms where atom_word = 'nemeton')),
  ('Resonance Nectere', 'resonance-nectere', 'system',
   'The house''s outward WRITING organ — born empty of chains; the bridge sees, nectere speaks.',
   'resonance-nectere', 'https://github.com/Quantum-Weaver/resonance-nectere',
   'imagined',
   (select id from public.atoms where atom_word = 'nectere'));

update public.beacons set version = '0.1.0' where slug = 'resonance-nectere';


-- ─── F. THE POST-CHANGE RITUAL ───
select bond_tender();
select public.gaia_sync();


-- ─── VERIFY — same sitting ───
select slug, is_public, version, icon_emoji, status
from public.beacons
where slug in ('resonance-sistrum','aethelred-cello',
               'resonance-nemeton','resonance-nectere')
order by slug;

-- the atoms planted and bonded, with their trigger-made companions:
select a.atom_word, a.category_name, a.status,
       (b.atom_id is not null) as bonded
from public.atoms a
left join public.beacons b on b.atom_id = a.id
where a.atom_word in ('nemeton','nectere');
-- EXPECT: two rows, communication, published, bonded true.

select count(*) as beacons from public.beacons;
-- EXPECT: 30 — the coast level with the shore.

-- ============================================================
