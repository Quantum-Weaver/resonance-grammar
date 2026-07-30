-- ============================================================
-- 016 — THE THESAURUS AND THE FOLKSONOMIES (born of real need)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen), 2026-07-30, at KP's ⚛ design,
-- his words this sitting, verbatim:
--   "we intend the bridge to pass the knowledge grammar through
--    to other apps"
--   "sensory lexicons may have a different word attached in the
--    grammar than our apps, this is ok and encouraged. folksonomy
--    grows here. one thesaurus row mapped for each new definitios
--    value assigned to an emoji, linked to the emoji"
--   "once a set is completed it will be a folsonomy named after
--    its purpose or app"
--   "we would definitely need a config file for each app receiving
--    the emojis so it only gets the set intended. we do this via
--    creating thesaurus rows for each emoji as a folksonomy_type
--    of 'Echoes', 'Compass', 'Hearth'"
--   "or config in the base so the pull is easy"
--   "the link should be between the thesaurus and the sensory
--    lexicon" — and the reasoning, verbatim: "thesaurus entries
--    can be linked to anything. in this case we are mapping new
--    labels to emojis, which is mmy reasoning" — the thesaurus is
--    a GENERAL mapping surface; this first need maps labels →
--    emojis, so the link lands on the canon where emojis live
--    (sensory_lexicon). Future needs may add other links, at KP's
--    word, when they are real.
-- Design choice offered to KP's eye: folksonomy_type is a FOREIGN
-- KEY into a small registry table (public.folksonomies) instead of
-- a pg enum — the registry row IS the per-app config in the base
-- (his last word above), new sets need no ALTER TYPE, and the
-- "completed set becomes a named folksonomy" law gets a status
-- column to complete INTO. If the enum form is preferred, say the
-- word and 016 gets redrafted.
-- The pour (parts 4–5) carries the shipped app lexicon VERBATIM
-- from src/lib/data/emojis.ts (byte-identical in Echoes and
-- Compass, 12 emoji). Echoes and Compass each get their own 12
-- rows ON PURPOSE: sovereign sets that may diverge — folksonomy
-- grows here.
-- Visual-run method: read each block, run top to bottom, one pass.
-- Ritual 000 honored: RLS on + plain public-read policy per table,
-- no DO blocks; verify through the anon door the same sitting.
-- ============================================================

-- ─── PART 1: the registry — the config in the base ───

create table public.folksonomies (
  name        text primary key,
  purpose     text not null,
  status      text not null default 'growing',   -- growing | complete
  notes       text,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now(),
  created_by  text
);

alter table public.folksonomies enable row level security;

create policy "Public read folksonomies"
  on public.folksonomies for select using (true);

-- ─── PART 2: the thesaurus — one row per definition value per emoji, per set ───

create table public.thesaurus (
  id                  uuid primary key default gen_random_uuid(),
  emoji               text not null,
  word                text not null,     -- the set's own word; may differ from any atom's, encouraged
  definition          text,
  color_hex           text,
  sensory_color       text,
  sensory_sound       text,
  sensory_texture     text,
  sensory_temperature text,
  folksonomy_type     text not null references public.folksonomies(name),
  sensory_id          uuid references public.sensory_lexicon(id),  -- THE LINK (KP's ruling 2026-07-30:
                      -- "the link should be between the thesaurus and the sensory lexicon").
                      -- Nullable by measured necessity: two of the twelve app emojis (😢, 😮‍💨)
                      -- have no canon row yet, and shared emojis (🎯 wears six atoms) make the
                      -- pairing a curation act — proposed links wait in part 6 for KP's eye.
                      -- The emoji column is the always-present soft join either way.
  notes               text,
  created_at          timestamptz not null default now(),
  updated_at          timestamptz not null default now(),
  created_by          text,
  unique (folksonomy_type, emoji, word)
);

create index thesaurus_emoji_idx on public.thesaurus (emoji);
create index thesaurus_folksonomy_idx on public.thesaurus (folksonomy_type);

alter table public.thesaurus enable row level security;

create policy "Public read thesaurus"
  on public.thesaurus for select using (true);

-- ─── PART 3: the first three registry rows (the config) ───

insert into public.folksonomies (name, purpose, status, notes, created_by)
values
  ('Echoes',  'The Echoes app''s mood lexicon — the emoji-lexicon proof, shipped.', 'complete',
   'Origin of the twelve; poured verbatim from src/lib/data/emojis.ts, 2026-07-30.', 'KP + Fable (lane awen)'),
  ('Compass', 'The Compass app''s mood lexicon — the listener''s instrument, shipped; v3 the musician''s.', 'complete',
   'Born identical to Echoes'' twelve; sovereign from this row forward — divergence lawful and encouraged.', 'KP + Fable (lane awen)'),
  ('Hearth',  'The family app''s lexicon — designs 001–005, awaiting build season.', 'growing',
   'No rows yet; the set arrives with the realm''s build season.', 'KP + Fable (lane awen)');

-- ─── PART 4: the Echoes pour — twelve rows, verbatim from the shipped file ───

insert into public.thesaurus
  (emoji, word, definition, color_hex, sensory_color, sensory_sound, sensory_texture, sensory_temperature, folksonomy_type, created_by)
values
  ('😌', 'Calm', 'A settled stillness. Peace that arrived on its own — not earned, not performed. The breath after a long exhale.', '#6C5CE7', 'soft lavender', 'low hum of a distant fan', 'warm fleece', 'room temperature', 'Echoes', 'KP + Fable (lane awen)'),
  ('🔥', 'Energy', 'Kinetic aliveness. The feeling of becoming more than yourself — something lit, something moving. Intensity that wants to be used.', '#E17055', 'deep amber', 'crackling fire', 'dry heat on skin', 'warm', 'Echoes', 'KP + Fable (lane awen)'),
  ('😢', 'Sad', 'The softness inside grief. Not collapse — presence. Sorrow that deserves to be seen and held.', '#74B9FF', 'pale blue', 'rain on glass', 'damp cloth', 'cool', 'Echoes', 'KP + Fable (lane awen)'),
  ('😊', 'Happy', 'Uncomplicated delight. The kind that needs no explanation. Joy that arrived without being summoned.', '#FDCB6E', 'warm yellow', 'distant laughter', 'sunlit surface', 'gentle warmth', 'Echoes', 'KP + Fable (lane awen)'),
  ('🌀', 'Overstimulated', 'Too much at once. The spiral inward. Patterns stacking faster than they can be tracked — the edges blurring.', '#A29BFE', 'blinking static', 'overlapping voices', 'buzzing surface', 'uneven', 'Echoes', 'KP + Fable (lane awen)'),
  ('🌙', 'Melancholy', 'Ache with beauty in it. Not quite sadness — a longing for something half-remembered. The bittersweet that lives in the quiet.', '#636E72', 'grey-blue moonlight', 'silence between notes', 'cold stone', 'cool and still', 'Echoes', 'KP + Fable (lane awen)'),
  ('✨', 'Transcendent', 'Awe. The moment something becomes more than itself — past words, past understanding. A glimpse of something larger.', '#FFD700', 'gold and white', 'ringing silence', 'weightless', 'neither warm nor cold', 'Echoes', 'KP + Fable (lane awen)'),
  ('🎯', 'Focused', 'Everything peripheral disappears. Locked into one thing, completely. The world narrows to exactly what matters now.', '#00CEC9', 'sharp teal', 'clean tone', 'smooth glass', 'slightly cool', 'Echoes', 'KP + Fable (lane awen)'),
  ('💙', 'Connected', 'The felt sense of not being alone. Belonging — the thread between yourself and something beyond the self.', '#0984E3', 'deep blue', 'resonant chord', 'held hand', 'body temperature', 'Echoes', 'KP + Fable (lane awen)'),
  ('😮‍💨', 'Relief', 'The release of something held without knowing. Tension leaving the body. The long, slow exhale.', '#55EFC4', 'mint green', 'long exhale', 'releasing grip', 'cool breeze', 'Echoes', 'KP + Fable (lane awen)'),
  ('💤', 'Tired', 'Bone-deep depletion. The body asking — plainly, without apology — for rest.', '#B2BEC3', 'soft grey', 'slow breathing', 'heavy blanket', 'slightly warm', 'Echoes', 'KP + Fable (lane awen)'),
  ('🎉', 'Celebratory', 'Shared joy made loud. The moment that deserves to be marked — witnessed, felt, and remembered.', '#E84393', 'bright magenta', 'cheering crowd', 'confetti', 'warm and electric', 'Echoes', 'KP + Fable (lane awen)');

-- ─── PART 5: the Compass pour — the same twelve, its own sovereign rows ───

insert into public.thesaurus
  (emoji, word, definition, color_hex, sensory_color, sensory_sound, sensory_texture, sensory_temperature, folksonomy_type, created_by)
select emoji, word, definition, color_hex, sensory_color, sensory_sound, sensory_texture, sensory_temperature, 'Compass', created_by
from public.thesaurus
where folksonomy_type = 'Echoes';

-- ─── PART 6: the proposed links to the sensory canon — KP's ⚛ eye rules each ───
-- Measured ground (whole table read 2026-07-30): ten of the twelve
-- emojis exist in sensory_lexicon; several wear multiple atoms. One
-- UPDATE per emoji below, the chosen atom named in the comment with
-- its rivals beside it — edit or skip any line before running; each
-- update links BOTH sets' rows (the pairing is set-agnostic).
-- 😢 and 😮‍💨 have no canon row — their thesaurus rows stay unlinked,
-- honestly, until the canon grows one (folksonomy grows here).

update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '😌' and s.atom_word = 'well';        -- only wearer
update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '🔥' and s.atom_word = 'fire';        -- rivals: brigids · motivation · trend
update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '😊' and s.atom_word = 'emotion';     -- rival: ux
update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '🌀' and s.atom_word = 'spiral';      -- rivals: complexity · dynamic · nexus ("the spiral inward" is the definition's own word)
update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '🌙' and s.atom_word = 'hekates';     -- only wearer
update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '✨' and s.atom_word = 'magic';       -- rivals: artistic · effect · new · sparkle
update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '🎯' and s.atom_word = 'focus';       -- rivals: accuracy · actual · match · purpose · target
update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '💙' and s.atom_word = 'trust';       -- only wearer
update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '💤' and s.atom_word = 'z';           -- rival: inactive
update public.thesaurus t set sensory_id = s.id from public.sensory_lexicon s
  where t.emoji = '🎉' and s.atom_word = 'celebration'; -- rivals: done · success

-- ─── Verify after running: all through the anon door ───
-- select count(*) from folksonomies;                                   → 3
-- select count(*) from thesaurus;                                      → 24
-- select folksonomy_type, count(*) from thesaurus group by 1;          → Echoes 12 · Compass 12
-- select count(*) from thesaurus where sensory_id is not null;         → 20 (ten emojis × two sets; 😢/😮‍💨 unlinked)
-- The app pull, whole and easy (the config working):
--   GET /rest/v1/thesaurus?folksonomy_type=eq.Compass&select=emoji,word,definition,color_hex,sensory_color,sensory_sound,sensory_texture,sensory_temperature
-- The crossing view, when wanted (thesaurus row → its canon senses):
--   GET /rest/v1/thesaurus?select=word,emoji,folksonomy_type,sensory_lexicon(atom_word,color_hex,temperature,texture)&folksonomy_type=eq.Compass
