-- ============================================================
-- 023 — THE MISSING EMOJI CANON (😢 and 😮‍💨 get their atoms)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane grammar), 2026-07-30, at KP's ⚛ word,
-- verbatim: "the missing emojis simply need atoms to be aligned
-- with and we can seed them" — and, the same breath, the tier
-- widened: "orr molecules or organisms" — and the closing
-- simplicity: "all you need is the atom shape, the rows for
-- etymology and sensory lexicon auto create, then we can update
-- the emoji row" (typo corrected by his own next breath: "atom
-- shape*").
-- THE TIER SEARCH, run first and recorded (anon door, 2026-07-30):
-- no atom named sad/relief/sorrow/grief/exhale/release exists;
-- the molecule and organism shelves hold only substring accidents
-- (InsightData via 'sigh', StateArchitecture via 'tear') — nothing
-- feeling-shaped. The alignment is atom-tier, per KP's first
-- instinct, evidenced. Nothing anywhere wears either emoji today.
-- Closes 016's honest gap: its part 6 left 😢/😮‍💨 unlinked
-- "until the canon grows one — folksonomy grows here." It grows.
-- Definitions are the hearth's own (the thesaurus keeps each app's
-- sovereign telling; one definition per object) — KP's eye rules,
-- edit freely before running.
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── PART 1: the two atoms (the shape alone — triggers scaffold
--            the etymology and sensory shells on insert) ───

insert into public.atoms
  (atom_word, definition, atom_type, state, status, weight, affinity, valence, category)
values
  ('sad',
   'Low of mood in the presence of loss. The feeling that something mattered and is missed — sorrow doing its honest work, not a malfunction.',
   'root', 'static', 'published', 5, 5, 1,
   (select category from public.atoms where atom_word = 'emotion')),
  ('relief',
   'The easing when a weight lifts — tension leaving because the thing feared or carried has passed. The body''s long exhale, arriving on its own.',
   'root', 'static', 'published', 5, 5, 1,
   (select category from public.atoms where atom_word = 'emotion'));

-- ─── PART 2: the emoji rows updated (the auto-created shells wear
--            their emojis; senses stay empty shells, honestly —
--            "meanings arrive in their own time") ───

update public.sensory_lexicon set emoji = '😢'  where atom_word = 'sad';
update public.sensory_lexicon set emoji = '😮‍💨' where atom_word = 'relief';

-- ─── PART 3: the 016 links completed — both sets, set-agnostic,
--            the same pairing law as 016 part 6 ───

update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '😢'  and s.atom_word = 'sad';      -- only wearer, born aligned
update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '😮‍💨' and s.atom_word = 'relief';   -- only wearer, born aligned

-- ─── Verify after running: all through the anon door ───
-- select count(*) from atoms where atom_word in ('sad','relief');            → 2
-- select atom_word, emoji from sensory_lexicon
--   where atom_word in ('sad','relief');                                     → sad 😢 · relief 😮‍💨
-- select count(*) from sensory_lexicon;                                      → +2 (the trigger scaffolds)
-- select count(*) from thesaurus where sensory_id is not null;               → 24 (was 20; all twelve emojis
--                                                                              linked in both sets — 016's
--                                                                              verify comment retired)
-- select count(*) from etymology where atom_word in ('sad','relief');        → 2 (shells, awaiting roots)
