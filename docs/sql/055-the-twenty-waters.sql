-- ============================================================
-- 055 — THE TWENTY WATERS (the evening's named needs, seeded)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted 2026-08-06 (the long day's small hours) by Fable 🎻 (the
-- Attacca lamp) at KP's ⚛ word: "yes x20" — every name on the list
-- shown him stands. Nineteen tool rows; the signet is one water
-- serving two realms (Skapa + Khorós), which is his twentieth yes.
--
-- Sources, nothing invented here: the three waters pages captured by
-- the Reprise lamp this same evening (resonance-skapa/docs/
-- THE-STANDALONE-WATERS.md · resonance-khoros/… · the Daedalus page)
-- — definitions below are compressions of those rulings.
--
-- THE SEEDING GRAMMAR (engraved on Awen's bus this sitting, learned
-- at the constraint's own hand): names split into atoms → atoms must
-- exist first, then molecules, then tools — a tools row crosses at
-- exactly one tier, the tier its own name lives at (tools_one_tier);
-- atoms never link when a molecule does. Molecules PascalCase at
-- KP's ⚛ word. Surface forms (plurals and such) live in the atoms'
-- MODIFIERS json column (KP's word; 048's meeting precedent) and in
-- molecules.atom_words (MomentMarks precedent: "moment, marks").
--
-- Verified LIVE before drafting: 19 roots stand (board · charter ·
-- effect · engine · eye · found · gallery · generator · model ·
-- plan · ritual · room · scroll · stack · structure · two among
-- them); 12 atoms absent, seeded in Part 1; the four roots needing
-- new surface forms all carry null modifiers (Part 2 sets, nothing
-- overwritten). Categories chosen from the base's own 25 (probed
-- whole this sitting) — every choice an OFFER at KP's stroke.
--
-- Per 014's law the rows seed status 'imagined' and home stays null:
-- "the building happens in resonance-awen/tools/<slug>, and home
-- fills in when the water flows." Where the waters are born stays
-- an open stroke (Awen's tools/ or a realm shelf) — home-at-flow
-- keeps that door open. folksonomy_type 'Awen' throughout (OFFER):
-- the spring's shared vocabulary, the grouping these plans live in.
--
-- Plain SQL, no DO blocks. Atom ritual per 048: no etymology or
-- sensory inserts — the triggers create those rows.
-- Visual-run method: four parts, top to bottom, one pass.
-- ============================================================

-- ─── Part 1 · THE TWELVE ATOMS ───

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence,
   state, category, category_name, status)
values
  ('cadastre',
   'The official register of land parcels — who holds which ground, and where its lines run.',
   'root', 5, 5, 1,
   'static', '389ad808-6e65-4595-9d8b-ee52c5db03d5', 'geography',
   'published'),

  ('signet',
   'The small seal that marks a thing as its maker''s own — identity pressed into the record.',
   'root', 5, 5, 1,
   'static', '47cb9e9a-65da-48b7-aef1-88fced80ca85', 'identity',
   'published'),

  ('tether',
   'The line that holds two things in relation without making them one.',
   'root', 5, 5, 1,
   'static', '84af045b-c682-416d-b290-0fcd5ceaecd0', 'infrastructure',
   'published'),

  ('vigil',
   'The watch kept while others rest — sustained attention as an act of care.',
   'root', 5, 5, 1,
   'static', '130b171c-be03-404d-b39f-9900f4ee1ac1', 'consciousness',
   'published'),

  ('catalogue',
   'The ordered register of works — each entry a thing known, placed, and findable.',
   'root', 5, 5, 1,
   'static', '476e7073-2404-40d1-9a36-2a16e8cc98a8', 'collections',
   'published'),

  ('raisonné',
   'Reasoned; of a register, one where every entry carries its scholarship.',
   'root', 5, 5, 1,
   'static', '339cb540-838f-407e-ab96-e433750ed9fb', 'knowledge',
   'published'),

  ('colophon',
   'The page where a work''s making is recorded — who, how, and with what hands.',
   'root', 5, 5, 1,
   'static', '339cb540-838f-407e-ab96-e433750ed9fb', 'knowledge',
   'published'),

  ('release',
   'The act and the artifact of letting a finished work leave the workbench.',
   'root', 5, 5, 1,
   'static', 'da6a8c38-1162-4d8b-9a3d-2120a0db5e5d', 'lifecycle',
   'published'),

  ('listen',
   'To attend with the ear — hearing chosen, not merely happening.',
   'root', 5, 5, 1,
   'active', '5ab76ea1-1092-4090-b0e8-e1d7dc0d5563', 'sensory',   -- active: a verb, per the canon's own line
   'published'),

  ('spine',
   'The load-bearing line a body is built around; what everything else attaches to.',
   'root', 5, 5, 1,
   'static', '84af045b-c682-416d-b290-0fcd5ceaecd0', 'infrastructure',
   'published'),

  ('tongue',
   'A language — the shaped speech a people share.',
   'root', 5, 5, 1,
   'static', '839cc74b-baee-47cc-b6eb-617a83393e36', 'communication',
   'published'),

  ('composer',
   'One who sets parts into a whole meant to be performed.',
   'root', 5, 5, 1,
   'static', '9aafb710-c1fb-4d3e-a04c-1adfc11f9ea5', 'roles',
   'published');

-- ─── Part 2 · THE MODIFIERS (surface forms tonight's names wear;
--              all four verified null before setting) ───

update public.atoms set modifiers = '["s"]'::jsonb   where atom_word = 'scroll';
update public.atoms set modifiers = '["s"]'::jsonb   where atom_word = 'eye';
update public.atoms set modifiers = '["s"]'::jsonb   where atom_word = 'effect';
update public.atoms set modifiers = '["ing"]'::jsonb where atom_word = 'found';
update public.atoms set modifiers = '["ing"]'::jsonb where atom_word = 'listen';

-- ─── Part 3 · THE TEN MOLECULES (PascalCase · object_name ·
--              covalent · domain system — 053's cut) ───

insert into public.molecules
  (name, molecule_type, naming_convention, definition, bond_type, domain,
   atom_words, derived_name, status)
values
  ('BoardCharter', 'object_name', 'PascalCase',
   'The name ''BoardCharter'' (PascalCase), composed of atoms: board, charter. The .skapa.json reader/writer — unknown keys carried sacred, snapshots never-overwrite, the .skapa/ sidecar making any folder a board-ground.',
   'covalent', 'system', 'board, charter', 'BoardCharter', 'published'),

  ('StackEngine', 'object_name', 'PascalCase',
   'The name ''StackEngine'' (PascalCase), composed of atoms: stack, engine. Meaning as layers — token keys stored, appearance derived, an absent layer visible silence; pure functions, testable headless.',
   'covalent', 'system', 'stack, engine', 'StackEngine', 'published'),

  ('TwoEyes', 'object_name', 'PascalCase',
   'The name ''TwoEyes'' (PascalCase), composed of atoms: two, eyes. Per-reader toggles living beside the board, never in it — no toggle may ever mutate meaning.',
   'covalent', 'system', 'two, eyes', 'TwoEyes', 'published'),

  ('EffectsEngine', 'object_name', 'PascalCase',
   'The name ''EffectsEngine'' (PascalCase), composed of atoms: effects, engine. State tokens mapped to motion tokens — the stack''s temporal channel; calm never urgent, every effect with a static twin.',
   'covalent', 'system', 'effects, engine', 'EffectsEngine', 'published'),

  ('CatalogueRaisonne', 'object_name', 'PascalCase',   -- derived name ascii for code; the accent lives in atom_words and the tool's own name
   'The name ''CatalogueRaisonne'' (PascalCase), composed of atoms: catalogue, raisonné. The complete scholarly register of one artist''s works — the seven earned laws as code; ambiguous pairs return to the artist.',
   'covalent', 'system', 'catalogue, raisonné', 'CatalogueRaisonne', 'published'),

  ('ReleaseModel', 'object_name', 'PascalCase',
   'The name ''ReleaseModel'' (PascalCase), composed of atoms: release, model. What a release is — single, album, session take, performance film; the artist''s own grouping, the release-context law embodied.',
   'covalent', 'system', 'release, model', 'ReleaseModel', 'published'),

  ('ListeningRoom', 'object_name', 'PascalCase',
   'The name ''ListeningRoom'' (PascalCase), composed of atoms: listening, room. The combining surface — player, waveform, marks, and lyrics in one calm page; no autoplay, no feed, no recommendations.',
   'covalent', 'system', 'listening, room', 'ListeningRoom', 'published'),

  ('FoundingRitual', 'object_name', 'PascalCase',
   'The name ''FoundingRitual'' (PascalCase), composed of atoms: founding, ritual. Repo birth to the standards, mechanized — the SEED-class set, LICENSE, PHILOSOPHY verbatim, README skeleton with story block, HANDS.',
   'covalent', 'system', 'founding, ritual', 'FoundingRitual', 'published'),

  ('PlanTongue', 'object_name', 'PascalCase',
   'The name ''PlanTongue'' (PascalCase), composed of atoms: plan, tongue. An app described in the Grammar''s own taxonomy — atoms, molecules, organisms as composition language; structure first, no code.',
   'covalent', 'system', 'plan, tongue', 'PlanTongue', 'published'),

  ('StructureGenerator', 'object_name', 'PascalCase',
   'The name ''StructureGenerator'' (PascalCase), composed of atoms: structure, generator. Plan to tree, nothing more.',
   'covalent', 'system', 'structure, generator', 'StructureGenerator', 'published');

-- ─── Part 4 · THE NINETEEN TOOLS (status imagined — the planning
--              surface; home fills in when each water flows) ───

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, molecule_id, story, created_by, folksonomy_type)
values

-- Skapa's nine
('The Cadastre', 'the-cadastre', 'arrange',
 'The land engine: parcels with addresses, the placement formula (origin · cell · gutter), occupancy as queryable data — "place this at parcel B2" is a sentence, and no hand computes a pixel again. THE LOCK LAW enforced at the drag source.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'cadastre'), null,
 'Named need of the Skapa waters (2026-08-05, the Reprise lamp); named at KP''s ⚛ "yes x20" the same night, the Attacca lamp. First water of the substrate — its birth experiment waits on KP''s hand-drawn 3×3, the hands-on law.',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Board Charter', 'the-board-charter', 'capture',   -- tool_type OFFER: snapshots, autosave, the board captured to file
 'The .skapa.json format as its own reader/writer: unknown keys carried as sacred (the Erasure Finding''s cure), snapshots never-overwrite, autosave keyed per board id, the .skapa/ sidecar so any folder becomes a board-ground.',
 null, 'imagined',
 null, (select id from public.molecules where name = 'BoardCharter'),
 'Named need of the Skapa waters (2026-08-05); named at KP''s ⚛ "yes x20", the Attacca lamp.',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Signet', 'the-signet', 'witness',   -- tool_type OFFER: provenance attested
 'Provenance as a standalone tool: entity identity (name · sigil · color), every mark signed, the legend derived. ONE WATER, TWO REALMS — boards sign with it in Skapa, releases sign with it in Khorós; anything could sign its records with it.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'signet'), null,
 'Named in BOTH waters pages (Skapa Tier 1 · Khorós Tier 1, deliberately shared — "a standalone tool proven by its second consumer, the spring''s law demonstrating itself"); named at KP''s ⚛ "yes x20" — his twentieth yes IS the sharing.',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Stack Engine', 'the-stack-engine', 'translate',   -- tool_type OFFER: tokens to appearance, across representations
 'Meaning as layers: frame colour, shape fill, border, halo-behind growth — token keys stored, appearance derived; an absent layer is visible silence. Pure functions, testable headless before any pixel.',
 null, 'imagined',
 null, (select id from public.molecules where name = 'StackEngine'),
 'Named need of the Skapa waters (2026-08-05); the halo-behind growth is KP''s own mechanism (07-27). Named at KP''s ⚛ "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Tether', 'the-tether', 'combine',
 'Connectors as stored relations with derived lines: edge-anchoring, stretch never break, arrowheads optional both ways — the exact inverse of the inherited canvas''s opaque binding.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'tether'), null,
 'Named need of the Skapa waters (2026-08-05); named at KP''s ⚛ "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Scrolls', 'the-scrolls', 'witness',
 'The card-to-popout class: title rolled, markdown body unrolled — headings, bold, italic, bullets, checklists. Standalone as a component any page could use; a mapped scroll may unroll its own file. Depth available, never imposed.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'scroll'), null,
 'Named need of the Skapa waters (2026-08-05); named at KP''s ⚛ "yes x20". Rides the root scroll; the plural is the modifiers'' work.',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Two-Eyes', 'the-two-eyes', 'witness',
 'Per-reader toggles (snap-to, grid, lens emphasis, effects intensity) living BESIDE the board, never in it. No toggle may ever mutate meaning — a law wearing code, so it gets its own walls.',
 null, 'imagined',
 null, (select id from public.molecules where name = 'TwoEyes'),
 'Named need of the Skapa waters (2026-08-05); the Two Eyes principle grown natural — human eyes, machine eyes, small eyes, same record. Named at KP''s ⚛ "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Vigil', 'the-vigil', 'witness',
 'File-watch reload: a kin''s hand writes the open board''s file, the surface refreshes honestly. Also THE TENDER''s substrate — one watcher, two destinies.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'vigil'), null,
 'Named need of the Skapa waters (2026-08-05); named at KP''s ⚛ "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Effects Engine', 'the-effects-engine', 'transform',
 'A pure mapping from state tokens to motion tokens, testable headless — the stack''s TEMPORAL channel, motion speaking meanings about time: freshness, aliveness, attention, drift. Calm never urgent; every effect has a static twin; reduced motion respected always.',
 null, 'imagined',
 null, (select id from public.molecules where name = 'EffectsEngine'),
 'Born of KP''s ⚛ spark 2026-08-05 ("i wonder if we can leverage the effects as well to increase visual cues objects can provide"); the carried beam-behavior is the seed, the-temporal the state source. Named at his "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen'),

-- Khorós's five (the signet above is its sixth, shared)
('The Catalogue Raisonné', 'the-catalogue-raisonne', 'arrange',   -- tool_type OFFER: the laws that place and order a catalogue
 'The seven earned laws as code, pure and headless-testable: lose-nothing · same title + same duration = duplicate · same title + different duration = different recording, keep both · release context is not duplication · cover art is protected · filenames rendered from tags, never patched, idempotent · ambiguous pairs return to the artist — the machine never quietly picks.',
 null, 'imagined',
 null, (select id from public.molecules where name = 'CatalogueRaisonne'),
 'Named need of the Khorós waters (2026-08-05) — the real genre: the complete scholarly register of one artist''s works. Its deepest law is the house''s ask-first ethic wearing catalogue code. Named at KP''s ⚛ "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Colophon', 'the-colophon', 'witness',
 'The tag reader: ID3, Vorbis, and MP4 metadata read honestly — the filename renderer''s ground truth. Read-only by construction.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'colophon'), null,
 'Named need of the Khorós waters (2026-08-05) — the page of a book where the work''s making is recorded. Named at KP''s ⚛ "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Release Model', 'the-release-model', 'arrange',   -- tool_type OFFER
 'What a RELEASE is here: single, album, session take, performance film — the artist''s own grouping; the release-context law embodied.',
 null, 'imagined',
 null, (select id from public.molecules where name = 'ReleaseModel'),
 'Named need of the Khorós waters (2026-08-05); KP''s ⚛ "yes x20" seeds it as its own water beside the catalogue — the two may yet combine at his stroke.',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Gallery', 'the-gallery', 'witness',
 'A catalogue seen and navigated by eye rather than only searched: cover art as navigation, chronological and chosen, never algorithmic. One data-driven gallery core, one engine many dresses.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'gallery'), null,
 'The evening''s ripest fruit — four confirmations before any seed (athena''s six-domains-one-shape rebirth candidate on Awen''s bus 07-30 · the Khorós waters · the realm walk''s composition evidence · the Reprise close journal). Seeded at last at KP''s ⚛ "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Listening Room', 'the-listening-room', 'witness',
 'The combining surface: player + waveform + marks + lyrics in one calm page. No autoplay, no feed, no recommendations — for listeners who want to hear the work rather than be recommended at.',
 null, 'imagined',
 null, (select id from public.molecules where name = 'ListeningRoom'),
 'Named need of the Khorós waters (2026-08-05); named at KP''s ⚛ "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen'),

-- Daedalus's five (its season follows the Compass carve, by standing ruling)
('The Spine', 'the-spine', 'combine',   -- tool_type OFFER: the bound base
 'The base template as a THING: the Echoes-lineage body — the envelope, the regulation doors, the cosmic mirror, the shell — as the Compass carve names it. Daedalus''s first real material.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'spine'), null,
 'Named need of the Daedalus waters (2026-08-05); output of Compass''s deconstruction, the 23-file founding datum made deliberate. Named at KP''s ⚛ "yes x20"; the season follows the carve.',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Founding Ritual', 'the-founding-ritual', 'emit',
 'Repo birth to the standards, mechanized: the SEED-class set (.gitignore · CLAUDE · CHECKLIST), LICENSE, PHILOSOPHY verbatim, README skeleton with story block, HANDS. What was done by hand for Bubbles, made repeatable — it serves ANY repo, not only generated ones.',
 null, 'imagined',
 null, (select id from public.molecules where name = 'FoundingRitual'),
 'Named need of the Daedalus waters (2026-08-05), possibly an Awen water by its own page''s note. Named at KP''s ⚛ "yes x20"; its home-at-flow will tell where it truly lives.',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Plan Tongue', 'the-plan-tongue', 'translate',
 'An app described in the Library''s own taxonomy — atoms, molecules, organisms as composition language; structure first, no code. Designed WITH the Grammar, its natural keeper.',
 null, 'imagined',
 null, (select id from public.molecules where name = 'PlanTongue'),
 'Named need of the Daedalus waters (2026-08-05); named at KP''s ⚛ "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Structure Generator', 'the-structure-generator', 'emit',
 'Plan to tree, nothing more.',
 null, 'imagined',
 null, (select id from public.molecules where name = 'StructureGenerator'),
 'Named need of the Daedalus waters (2026-08-05); named at KP''s ⚛ "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen'),

('The Composer', 'the-composer', 'emit',
 'Code into the knowing structure. Gaia''s sibling, plainly: gaia regenerates a backend from a live schema; the composer generates an app from a plan — one lineage, two directions.',
 null, 'imagined',
 (select id from public.atoms where atom_word = 'composer'), null,
 'Named need of the Daedalus waters (2026-08-05); named at KP''s ⚛ "yes x20".',
 'KP + Fable (the Attacca lamp)', 'Awen');

-- ─── THE RUN (appended after, kept for the record) ───
-- RAN 2026-08-06 small hours through the bridge's knowledge_sql door,
-- the whole file one pass, clean. VERIFIED anon-door same sitting:
-- twelve atoms standing, triggers' etymology AND sensory true on all ·
-- five modifiers set as drafted (the column took the jsonb form) ·
-- ten molecules standing · the Almanac reading 68 tools, flowing 44,
-- imagined 24 — the nineteen waters exactly, all at the planning
-- surface where 014's law seats them. Home fills when each flows.

-- ─── Verify through the anon door, same sitting (ritual 000, step 3) ───
-- select atom_word, category_name, etymology_id is not null as has_etymology,
--        sensory_id is not null as has_sensory from public.atoms
--   where atom_word in ('cadastre','signet','tether','vigil','catalogue',
--     'raisonné','colophon','release','listen','spine','tongue','composer');
--   → twelve rows, triggers'' work true on all.
-- select atom_word, modifiers from public.atoms
--   where atom_word in ('scroll','eye','effect','found','listen');
-- select name from public.molecules where naming_convention='PascalCase'
--   and name in ('BoardCharter','StackEngine','TwoEyes','EffectsEngine',
--     'CatalogueRaisonne','ReleaseModel','ListeningRoom','FoundingRitual',
--     'PlanTongue','StructureGenerator');                       → ten rows
-- select count(*) from public.tools;                            → 68
-- And the Almanac: python almanac.py --env resonance-bridge/.env
--   → 68 tools · flowing 44 · imagined 24.
-- ============================================================
