-- ============================================================
-- 030 — THE HEARTH WATERS (three tools homed via copy, seeded)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen, second lamp), 2026-07-31, at KP's
-- ⚛ word, verbatim: "we have some new stand alone tools to home,
-- via copy. the resonance-hearth made progress today and within in
-- are the sky tools and an emoji collection tool. maybe more."
-- The three waters, all homed via copy the same sitting, origins
-- untouched, each verified live from its new home:
--   · THE SKY (hearth src/lib/sky → awen/tools/the-sky) — moon
--     phases, the wheel of the year, planet signs and meetings,
--     offline forever; the origin's own header carried the ruling
--     ("awen homes these organs via copy, maintained and updates
--     distributed from the spring"). Verified: epoch new moon
--     exact · 2026 March equinox → 03-20 · the homing night's
--     reading true (Lughnasadh by the sky's own UTC clock).
--   · THE TEMPORAL (hearth src/lib/temporal → awen/tools/
--     the-temporal) — one primitive for everything measured by
--     time; state derived, never stored. Homed riding KP's "maybe
--     more" (the origin README's own clause awaited his word; the
--     interpretation is said openly, his eye may strike it).
--     Verified: fresh/approaching/passed + freshTake reset.
--   · THE EMOJI-COLLECTOR (hearth scripts/generate-emojis.mjs →
--     awen/tools/the-emoji-collector) — the WHOLE Unicode
--     vocabulary, no curation (KP's ruling: "we want to load the
--     hearth with a full set of options otherwise we limit its
--     vessel to what we chose"); names for search, never meaning.
--     One homing adjustment declared in the open (output beside
--     the tool + --out). Verified live: 3,944 emoji · 9 groups ·
--     1,281 set aside — the origin's own numbers.
-- THE GRAMMAR GROUND (verified anon-door): 'temporal' and
-- 'collect' already live; 'sky' and 'emoji' are born below.
-- 'collect' wears its FIRST MODIFIER [or] per KP's modifier law —
-- the modifier rides the root atom; the molecule displays the
-- modified form (the mark[s] pattern, third pour).
-- CATEGORY OFFERED TO KP'S EYE: sky → geography (a place of the
-- world; rivals: sensory · timeframe) · emoji → communication (a
-- made sign carrying feeling; kin to mark and language).
-- STATUS GATES: molecule submitted; tools imagined; publish and
-- crossings at the foot, KP's eye and word.
-- Visual-run method: run parts top to bottom, one pass; gates
-- separate.
-- ============================================================

-- ── Part 1 · two atoms born ───────────────────────────────────

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence, state,
   category, category_name, status)
values
  ('sky',
   'The open field above every head — where the moon keeps her phases, the wanderers walk, and the year turns its wheel. The sky is the one calendar every hearth shares.',
   'root', 5, 5, 1, 'static',
   (select id from public.categories where name = 'geography'),
   'geography', 'published'),
  ('emoji',
   'A small picture that carries feeling across every tongue — a made sign whose name is a search key and whose meaning is the vessel''s own.',
   'root', 5, 5, 1, 'static',
   (select id from public.categories where name = 'communication'),
   'communication', 'published');

-- ── Part 2 · collect wears its first modifier ─────────────────

update public.atoms set modifiers = '["or"]'::jsonb
  where atom_word = 'collect';

-- ── Part 3 · the molecule (submitted; junction by hand) ───────

insert into public.molecules
  (name, molecule_type, naming_convention, definition, bond_type,
   atom_words, derived_name, domain, status)
values
  ('EmojiCollector', 'concept', 'PascalCase',
   'The gatherer of the whole emoji vocabulary — every fully-qualified sign from Unicode''s own canon, grouped and named for search, meaning left to the vessel. Generated, never hand-edited, healed by regeneration.',
   'covalent', 'emoji, collector', 'EmojiCollector', 'ui', 'submitted');

insert into public.molecule_atoms (molecule_id, atom_id, position, role, status)
values
  ((select id from public.molecules where name = 'EmojiCollector'),
   (select id from public.atoms where atom_word = 'emoji'), 1, 'modifier', 'submitted'),
  ((select id from public.molecules where name = 'EmojiCollector'),
   (select id from public.atoms where atom_word = 'collect'), 2, 'core_type', 'submitted');

-- ── Part 4 · three tool rows (imagined · family Awen · homes in the spring) ──

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, molecule_id, folksonomy_type, story, created_by)
values
  ('The Sky', 'the-sky', 'witness',
   'The sky computed offline, forever — moon phase with illumination and age, the wheel of the year''s eight spokes, planet signs and their meetings. Facts and traditional names only; no meanings shipped. Framework-free, zero imports, retroactive to any timestamp.',
   'resonance-awen/tools/the-sky', 'imagined',
   (select id from public.atoms where atom_word = 'sky'), null, 'Awen',
   'Ported from lane B''s working sky.py, built in the Hearth''s 2026-07-31 build season, homed to the spring via copy per the ruling engraved in its own header — updates distribute from here.',
   'KP + Fable (lane awen, hearth-born)'),
  ('The Temporal', 'the-temporal', 'translate',
   'One primitive for everything measured by time: a start moment plus a validity window, state derived from the clock and never stored (fresh, approaching, passed), reset by a fresh take. No color named — the consumer''s grammar decides what a state looks like.',
   'resonance-awen/tools/the-temporal', 'imagined',
   (select id from public.atoms where atom_word = 'temporal'), null, 'Awen',
   'KP named the category 2026-07-23: temporal — food, finance, medicine, one shape. Born in the Hearth''s build season; homed via copy riding his "maybe more," the interpretation held openly to his eye.',
   'KP + Fable (lane awen, hearth-born)'),
  ('The Emoji-Collector', 'the-emoji-collector', 'capture',
   'Gathers the whole Unicode emoji vocabulary at dev time — every fully-qualified emoji with its name (for search, never meaning) and group; components and duplicates set aside; a sanity floor refuses a shifted source. Emits a typed module; heals by regeneration.',
   'resonance-awen/tools/the-emoji-collector', 'imagined',
   null, (select id from public.molecules where name = 'EmojiCollector'), 'Awen',
   'Born in the Hearth''s build season under KP''s no-curation ruling ("otherwise we limit its vessel to what we chose"); homed via copy with one declared adjustment: a standalone tool presumes no one''s tree.',
   'KP + Fable (lane awen, hearth-born)');

-- ─── The publish, at KP's ⚛ eye (editorial law) ───
-- update molecules set status = 'published' where name = 'EmojiCollector';
-- update molecule_atoms set status = 'published'
--   where molecule_id = (select id from molecules where name = 'EmojiCollector');

-- ─── The crossing, at KP's word alone (all three verified live from their new homes) ───
-- update tools set status = 'flowing' where slug in ('the-sky','the-temporal','the-emoji-collector');

-- ─── Verify after running, anon door ───
-- select atom_word, category_name, status from atoms where atom_word in ('sky','emoji');
-- select atom_word, modifiers from atoms where atom_word = 'collect';               → ["or"]
-- select name, status from tools where slug in ('the-sky','the-temporal','the-emoji-collector');
