-- ============================================================
-- 054 — THE FAMILY TRUING AND THE ZIGGY SHELF (corrected draft)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted 2026-08-05 by Fable 🎻 (the Attacca lamp) at KP's ⚛ words this
-- sitting: "Awen for family for light list" · "ziggy has more modules now
-- too" · "atoms must exist first, then molecules, then tools" · molecules
-- seeded in PascalCase at his word.
--
-- THE FIRST DRAFT FAILED HONESTLY at KP's hand: tools_one_tier (014's
-- check, read whole this sitting) requires EXACTLY ONE of atom_id /
-- molecule_id / organism_id — the single-tier law is a constraint, not
-- a convention. The law, his ruling from 053: a row crosses at the tier
-- its own name lives at — two-atom names ride their molecule, one-atom
-- names ride their atom, and atoms never link when a molecule does.
--
-- RELATIONS, verified live + from 014's DDL before this redraft:
--   tools.atom_id → atoms(id) · tools.molecule_id → molecules(id) ·
--   tools.organism_id → organisms(id), all restrict; one and only one set.
--   Atom probe: archivist · blueprint · forge · icon · link ·
--   quartermaster · tender STAND; assessor · shipwright · weft ABSENT.
--   Molecule probe: LightList · PlateForge stand; BlueprintForge ·
--   LinkTender · IconForge absent. No single-atom molecule exists in the
--   wild — one-atom tools ride their atom, per the law above.
--   Atom ritual per 048: NO etymology/sensory inserts — "triggers create
--   etymology and sensory lexicon rows" (KP's word); canon values
--   root · weight 5 · affinity 5 · valence 1 · static for nouns.
--   folksonomy_type is a SHARED-VOCABULARY grouping — a grouping of
--   thesaurus entries, often with shared emojis (KP's definition this
--   sitting) — not a "family" column; values here: 'Awen' · 'Ziggy'.
--
-- Plain SQL, no DO blocks (000 ritual). OFFER-marked values are KP's to
-- amend before running. Visual-run method: four parts, top to bottom,
-- one pass — the order IS the ruling (atoms → molecules → tools).
-- ============================================================

-- ─── Part 1 · THE TRUING (the Light List's folksonomy grouping) ───

update public.tools
   set folksonomy_type = 'Awen',
       updated_by      = 'KP + Fable (the Attacca lamp)',
       updated_at      = now()
 where slug = 'the-light-list';

-- ─── Part 2 · THE ATOMS (the three absent; triggers do the rest) ───
-- Categories read from the living base: roles = the tender's own
-- (assessor and shipwright are role-nouns beside it); creation = where
-- weave lives (the weft is its kin). All static: nouns and things.

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence,
   state, category, category_name, status)
values
  ('assessor',
   'One who reads a thing''s state and says where it stands. Judgement offered as reading, never as sentence.',
   'root', 5, 5, 1,
   'static', '9aafb710-c1fb-4d3e-a04c-1adfc11f9ea5', 'roles',
   'published'),

  ('shipwright',
   'The builder of vessels meant to leave the shore — the craft that makes a thing seaworthy before it ever meets water.',
   'root', 5, 5, 1,
   'static', '9aafb710-c1fb-4d3e-a04c-1adfc11f9ea5', 'roles',
   'published'),

  ('weft',
   'The thread carried across the warp; the crossing that turns strung lines into cloth.',
   'root', 5, 5, 1,
   'static', '8427a8ea-2bac-4152-a7d8-e174a77d2297', 'creation',   -- category OFFER: creation, beside its kin 'weave'
   'published');

-- ─── Part 3 · THE MOLECULES (PascalCase at KP's ⚛ word; 053's cut:
--              object_name · covalent · domain system) ───

insert into public.molecules
  (name, molecule_type, naming_convention, definition, bond_type, domain,
   atom_words, derived_name, status)
values
  ('BlueprintForge', 'object_name', 'PascalCase',
   'The name ''BlueprintForge'' (PascalCase), composed of atoms: blueprint, forge. The Sanctuary''s one forge — one script, every realm, no modifications folder to folder; a repo''s structure described honestly, sovereignty checks riding every run.',
   'covalent', 'system', 'blueprint, forge', 'BlueprintForge', 'published'),

  ('LinkTender', 'object_name', 'PascalCase',
   'The name ''LinkTender'' (PascalCase), composed of atoms: link, tender. The workspace''s pointer keeper — finds, resolves, and mends the house''s addresses; every mend ledgered, homes never entered, history never rewritten.',
   'covalent', 'system', 'link, tender', 'LinkTender', 'published'),

  ('IconForge', 'object_name', 'PascalCase',
   'The name ''IconForge'' (PascalCase), composed of atoms: icon, forge. The icon pipeline — app icons rendered to the sizes the platforms ask.',
   'covalent', 'system', 'icon, forge', 'IconForge', 'published');

-- ─── Part 4 · THE TOOLS (eight rows, each anchored at exactly one
--              tier — the tier its own name lives at) ───

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, molecule_id, story, created_by, folksonomy_type)
values

('The One Forge', 'the-blueprint-forge', 'witness',
 'One script, every realm, no modifications from folder to folder: reads a repo and describes its structure honestly — blueprints with sovereignty checks riding every run. Gitignored ground is named and counted, never opened.',
 'resonance-ziggy/modules/blueprint-forge', 'flowing',
 null, (select id from public.molecules where name = 'BlueprintForge'),
 'The Sanctuary''s one forge; the one-forge ruling supersedes the tailored forges. Its never-opened obedience was hardened by a near-miss in the meeting house''s vendored tree. Walked every realm reviewed 2026-08-05 (0 findings, sovereignty HELD, each realm). Registered 2026-08-05 at KP''s ⚛ word: "ziggy has more modules now too."',
 'KP + Fable (the Attacca lamp)', 'Ziggy'),

('The Link Tender', 'the-link-tender', 'transform',   -- tool_type OFFER: it mends (rewrites) addresses; witness in --dry
 'The workspace''s pointer keeper — one verb: tend. Finds every pointer, resolves it against the house''s three bases, mends moved addresses, and ledgers every mend. Homes are never entered; history is reported, never rewritten; gone is not a claim of nonexistence.',
 'resonance-ziggy/modules/link-tender', 'flowing',    -- dry-proven across realms 2026-08-05; the ledger''s first MEND stays KP''s hand
 null, (select id from public.molecules where name = 'LinkTender'),
 'Named 2026-07-22, built 2026-08-04 by Tallow at KP''s ⚛ word ("i would rather create an agent that maintains the links"). Its ignore-reading was born from a near-miss in the meeting house''s vendored tree. Dry-walked every realm reviewed 2026-08-05. Registered 2026-08-05 at KP''s ⚛ word.',
 'KP + Fable (the Attacca lamp)', 'Ziggy'),

('The Shipwright', 'the-shipwright', 'emit',
 'The release toolchain: repo to signed build on the family rail — keystore convention, versioning, the signing discipline in one set of hands.',
 'resonance-ziggy/modules/shipwright', 'flowing',
 (select id from public.atoms where atom_word = 'shipwright'), null,
 'Moved home 2026-07-27 from AudHDities-Resonance ("tools → ziggy"). Verified functional; carried Bubbles from repo to signed APK in one day, week of 2026-08-05. Registered 2026-08-05 at KP''s ⚛ word.',
 'KP + Fable (the Attacca lamp)', 'Ziggy'),

('The Archivist', 'the-archivist', 'capture',
 'The backup agent — the house''s copies kept.',
 'resonance-ziggy/modules/archivist', 'flowing',      -- status OFFER: standing role since the move; not run-verified this sitting
 (select id from public.atoms where atom_word = 'archivist'), null,
 'Moved home 2026-07-27 from AudHDities-Resonance ("tools → ziggy", the plan of 2026-07-26). Registered 2026-08-05 at KP''s ⚛ word.',
 'KP + Fable (the Attacca lamp)', 'Ziggy'),

('The Assessor', 'the-assessor', 'witness',
 'The project assessment agents — a repo''s state read and reported.',
 'resonance-ziggy/modules/assessor', 'flowing',       -- status OFFER: standing role since the move; not run-verified this sitting
 (select id from public.atoms where atom_word = 'assessor'), null,
 'Moved home 2026-07-27 from AudHDities-Resonance ("tools → ziggy", the plan of 2026-07-26). Registered 2026-08-05 at KP''s ⚛ word.',
 'KP + Fable (the Attacca lamp)', 'Ziggy'),

('The Icon-Forge', 'the-icon-forge', 'emit',
 'The icon pipeline — app icons generated to the sizes the platforms ask.',  -- definition from the working record; module has no README yet
 'resonance-ziggy/modules/icon-forge', 'flowing',
 null, (select id from public.molecules where name = 'IconForge'),
 'Part of the standing family rail (repo → signed APK) that carried Bubbles, week of 2026-08-05. README owed — a small ziggy raising item. Registered 2026-08-05 at KP''s ⚛ word.',
 'KP + Fable (the Attacca lamp)', 'Ziggy'),

('The Quartermaster', 'the-quartermaster', 'witness',  -- tool_type OFFER
 'Dependency stores kept current, never silently — every update named.',     -- definition from the survey''s record; module has no README yet
 'resonance-ziggy/modules/quartermaster', 'flowing',   -- status OFFER
 (select id from public.atoms where atom_word = 'quartermaster'), null,
 'Inventoried in the spring survey as distribution prior art (its never-silent updates). README owed — a small ziggy raising item. Registered 2026-08-05 at KP''s ⚛ word.',
 'KP + Fable (the Attacca lamp)', 'Ziggy'),

('The Weft', 'the-weft', 'translate',
 'The canon converter — the cosmic canon rewoven into consumable forms.',
 'resonance-ziggy/modules/weft', 'flowing',            -- status OFFER: built at "Phase A is a go"; not run-verified this sitting
 (select id from public.atoms where atom_word = 'weft'), null,
 'Born 2026-07-30 at KP''s ⚛ word ("Phase A is a go"), the synapse-pair sitting. Registered 2026-08-05 at KP''s ⚛ word.',
 'KP + Fable (the Attacca lamp)', 'Ziggy');

-- NOT rowed, deliberately: cosmic — ziggy's own lamp has offered that
-- cosmic is an ORGAN, not a tool (lanes bus, ziggy's first sentinel,
-- note 3). Its Grammar place would be the organ tier; that ruling is KP's,
-- and tools.organism_id stands ready for it if he speaks it.

-- ─── THE RUN (appended after, kept for the record) ───
-- RAN 2026-08-05 (~23:55 local) through the bridge's own door at KP's ⚛
-- pointer ("the bridge has many tools for this / in its root"):
-- knowledge_sql.py, the whole file in one pass — after two lessons paid
-- forward: PYTHONIOENCODING=utf-8 (the cello in these comments) and the
-- User-Agent header the tool was owed (guide lesson 5; mended in the
-- tool's home this sitting). VERIFIED anon-door same sitting: three
-- atoms standing with trigger-made etymology AND sensory (all true) ·
-- three molecules published · the Light List reading Awen · the Almanac
-- reading 49 tools, flowing 44, imagined 5, TEN on the Ziggy shelf.
-- (An earlier dashboard run of the first draft failed whole on
-- tools_one_tier — the constraint that taught this file its order.)

-- ─── Verify through the anon door, same sitting (ritual 000, step 3) ───
-- select atom_word, category_name, etymology_id is not null as has_etymology,
--        sensory_id is not null as has_sensory
--   from public.atoms where atom_word in ('assessor','shipwright','weft');
--   → three rows; the last two columns are the triggers' work.
-- select name, atom_words from public.molecules
--   where name in ('BlueprintForge','LinkTender','IconForge');  → three rows
-- select name, status, folksonomy_type from public.tools
--   where folksonomy_type = 'Ziggy' order by name;              → ten rows
-- And the Almanac itself: python almanac.py --env resonance-bridge/.env
--   → 49 tools · the Light List reading Awen · ten on the Ziggy shelf.
-- ============================================================
