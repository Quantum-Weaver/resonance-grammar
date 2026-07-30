-- ============================================================
-- 019 — THE TOOL FAMILIES (the organization system starts)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen), 2026-07-30, at KP's ⚛ word:
--   "these tools would be grammar tools we will have many, so we
--    should start organization system for them, between Ziggy,
--    AudHDities, resonance-grammar, there are going to be lots of
--    opportunities for single function scripts"
-- The system, in one sentence: every hand gets a row in the tools
-- registry, and the SET it belongs to is a folksonomy named after
-- its purpose or app — KP's own law from this morning (016),
-- generalized from emoji sets to tool sets. Nothing new is
-- invented; the folksonomies table is already the config in the
-- base, and the pull stays easy:
--   GET /rest/v1/tools?folksonomy_type=eq.Grammar
-- TWO DISTINCTIONS THE SYSTEM RESTS ON:
--   family = the purpose a tool SERVES (a folksonomy name);
--   home   = where it LIVES (the existing column). The Almanac is
--   family Grammar, homed in the spring — both true at once.
--   And registration is never relocation: organs stay in their
--   rooms, scripts stay where they work (never-cut); the registry
--   just knows about them.
-- CROSS-MEMBERSHIP CARD: one column = one family per tool. If a
-- tool someday truly belongs to many sets, the answer already
-- exists — "thesaurus entries can be linked to anything" (KP,
-- 2026-07-30); thesaurus rows can map a tool into further sets
-- when that need is real. Not built today.
-- Visual-run method: read each block, run top to bottom; part 3b
-- is suggestions — edit or skip line by line, the taxonomy is KP's.
-- RUN RECORD: parts 1, 2, and 3a run 2026-07-30 by Fable (lane
-- awen) at KP's ⚛ word ("please run the update my friend, my focus
-- is not on terminals right now"), via the management door, secret
-- never echoed; verified anon-door same sitting (folksonomies 7 ·
-- the Almanac family Grammar, status flowing). Part 3b stands
-- unrun, awaiting KP's taxonomy word.
-- THE SYSTEM'S PURPOSE, KP's ⚛ word the same sitting, verbatim:
--   "every single function script we create is potentially
--    something ziggy can provide access to the constellation and
--    sanctuary workspace through"
-- — the registry is Ziggy's future menu: registered hands become
-- capabilities the switchboard operator can offer, under his
-- charter's own Law of Manual First (every capability manually
-- invocable, permanently; automation only ever opt-in atop it).
-- Flagged for lane ziggy's next fetch: the registry's family pull
-- (?folksonomy_type=eq.Ziggy) is the menu's discovery surface,
-- prior art already specified in the v2 blueprint's Part IV
-- module-manifest shape.
-- ============================================================

-- ─── PART 1: the column — the set a tool belongs to ───

alter table public.tools
  add column folksonomy_type text references public.folksonomies(name);

comment on column public.tools.folksonomy_type is
  'The family this tool serves — a folksonomy named after its purpose or app (KP''s law, 2026-07-30). Home says where it lives; this says who it''s for.';

-- ─── PART 2: the first tool families (registry rows; all growing) ───

insert into public.folksonomies (name, purpose, status, notes, created_by)
values
  ('Awen',       'The spring''s own — standalone tools given away whole, serving any hand anywhere.', 'growing',
   'The realm''s law is the family''s law: standalone always, combined freely.', 'KP + Fable (lane awen)'),
  ('Grammar',    'Hands of the knowledge system — readers, seeders, verifiers, dumpers of the resonance-knowledge base.', 'growing',
   'First member: the-almanac. Candidates living elsewhere already: dump_db.py, export-sql-snippets.mjs, grammar_inventory.py, verify_terms.py (homes stay true; registration is not relocation).', 'KP + Fable (lane awen)'),
  ('Ziggy',      'The workshop''s hands — the house''s own machinery (shipwright, archivist, assessor, quartermaster, plate-forge kin).', 'growing',
   'Modules live at resonance-ziggy/modules/; rows arrive at KP''s pacing.', 'KP + Fable (lane awen)'),
  ('AudHDities', 'The Sanctuary app''s hands — its scripts, maintainers, and single-function helpers.', 'growing',
   'The app''s organs stay organs; the registry just knows them.', 'KP + Fable (lane awen)');

-- ─── PART 3a: the two rulings already clear ───

update public.tools set folksonomy_type = 'Grammar' where slug = 'the-almanac';
update public.tools set folksonomy_type = 'Awen'    where slug = 'the-blueprint';
-- (the-blueprint has no registry row yet — this update is a no-op
--  until its row lands; kept here so the intent is on the record)

-- ─── PART 3b: RESOLVED by KP's ⚛ default law, 2026-07-30, verbatim:
-- "Awen by default for anything until we determine it has a home
-- that is unique." Run by Fable (lane awen) the same minute:
--   update public.tools set folksonomy_type = 'Awen'
--     where folksonomy_type is null;
-- (18 rows; the Almanac keeps Grammar, its unique home already
-- determined.) The deity-vs-app question stands answered by the
-- default: families migrate one at a time, at KP's word, when a
-- unique home names itself. And the default is not a placeholder —
-- KP's ⚛ word, same minute, verbatim: "if a unque home never
-- arrives, Awen will be home." The spring is a true home, not a
-- waiting room. The suggestions below are RETIRED, kept as the
-- record of the question: ───
-- The eleven adventure seeds + four audio seeds serve Compass v3;
-- 'Compass' already stands in folksonomies (the emoji set) — one
-- name, one app, its whole set across every surface. Edit or skip:
-- update public.tools set folksonomy_type = 'Compass'
--   where slug in ('the-recorder','the-tuner','the-metronome','the-chord-anchor',
--                  'the-encoder','the-waveform','the-player','the-moment-marks',
--                  'the-art-finder','the-lyric-finder','the-equalizer');
-- The family-wide re-homings serve more than one app — family open:
-- update public.tools set folksonomy_type = '?' where slug in ('the-lexicon','the-envelope','the-timer','the-breath');
-- The two studio seeds and the publisher — family open:
-- update public.tools set folksonomy_type = '?' where slug in ('the-conductor','the-scene-loader','the-binder');

-- ─── Verify after running, anon door ───
-- select count(*) from folksonomies;                              → 7 (3 emoji sets + 4 tool families)
-- select folksonomy_type, count(*) from tools group by 1;         → Grammar 1 · (rest per 3b's edits)
-- The family pull (the config working):
--   GET /rest/v1/tools?folksonomy_type=eq.Grammar&select=name,tool_type,status,home
