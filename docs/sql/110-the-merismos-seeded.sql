-- 110 — the-merismos seeded (renumbered from 108)
--
-- RENUMBERED 2026-09-02: this file was first drafted as 108, with its own
-- atom insert folded in ahead of this awen row. The house's order is atom
-- seed before awen row, as its OWN numbered file in
-- 077-the-promenade-atom.sql's shape — so the atom insert now stands alone
-- as 108-the-merismos-atom.sql, and this file (the awen row) was renumbered
-- up to 110 to run after both 107 and 108's atom seeds. No content below
-- was changed beyond that split: the atom_id value now references the
-- uuid 108 pins explicitly, rather than the `select … where atom_word =`
-- lookup the first draft used.
--
-- THE MERISMOS — the splits. The third authorship water, built 2026-09-02 beside
-- the-clavis and the-lok the same sitting, at KP's ⚛ word ("go … fleet away my
-- friend") and on his own framing of the gap: "Clavis and lok give unforgeable
-- authorship. They say nothing about who gets what."
--
-- KP'S VISION, VERBATIM, WHICH THE ROW SERVES:
--   "every musician in a band or an orchestra records their part sovereignly;
--    an engineer finishes the project; and all credentials combine so the
--    Sanctuary system can pay everyone involved no matter how small the role —
--    opt-in always: 'no force or deceptive theft.'"
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. μερισμός (merismós) is
-- this hand's reading of the need he named, not his word. It lives in exactly
-- two places in the build — the constant TOOL_NAME and the folder — so a
-- rename is one edit, one `git mv`, and one update to this row.
--
-- CATEGORY: **economics** (9898f84d-c15b-46f4-86ea-699dafbc8877) — see 108's
-- header for the live definition quoted and matched, and the governance
-- runner-up left there for KP to overrule in one word.
--
-- SHAPE TAKEN FROM THE-SPHRAGIS'S OWN ROW, read from the live shelf this
-- sitting rather than remembered: tool_type `emit` · folksonomy_type `Awen`
-- · status `imagined` at birth. `home` is filled here (the 105/106
-- precedent); the sphragis's own home is still null and is his to fill.
--
-- FACE: 🪙 — a coin, chosen at KP's word. It reads against 078's rules: one
-- glyph, no skin tone, no ZWJ, no flag, no red-alarm mark, and no other row
-- wears it (checked against 078's whole set, which is the last full census of
-- faces written down).
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("merismos") — the
-- row carries atom_id and no molecule. One tier exactly. (108's header
-- records why no molecule or organism row exists.)
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106
-- precedent).
--
-- THE TABLE IS public.awen. It was renamed from public.tools on 2026-08-15
-- (seed 096) and the shim view was dropped at KP's word on 097 — public.tools
-- answers PGRST205 today. The sending named public.tools; the ground is named
-- here rather than followed silently.
--
-- Local mirror pin (progenatrix): 7a909a99-7057-4a82-ba56-543f705995b4
--
-- Run at KP's ⚛ hand, after 107 and 108. Verify at the anon door after.

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values
  ('The Merismos', 'the-merismos', 'emit',
   'The splits — the third authorship water. The clavis and the lok give unforgeable authorship; they say nothing about who gets what, and this says that and only that. A Merismos is columns: parts, roles, basis points summing to exactly 10000, of the artist''s share alone. OPT-IN ALWAYS — a part without consent is NAMED in every report, with no parameter anywhere that suppresses the naming and no exported path that consents on anyone''s behalf; a stranger''s yes is a calm no and a second yes never overwrites the first moment. A DESCRIPTION OF SHARES, NEVER A PROMISE OF MONEY: the 90/10 stays schema not promise, combine() draws the whole picture as numbers to read, and the arithmetic that touches money is computed server-side where the money lives while collaborator shares reach it through the contributions ledger''s residual pool — schema elsewhere, not modelled here. shares() divides a declared amount by the largest-remainder method so the integer cents equal the amount exactly, with ties to the earlier part; even() hands its remainder whole to the first part the caller listed and says so. A split that does not close is told and left exactly as declared. The-sphragis now carries collaborators as columns of the terms the seal is taken over, and a licence carrying none is byte-identical to what it was before. Standalone by law: zero imports, no clock, nothing throws.',
   'resonance-awen/tools/the-merismos', 'imagined', '🪙', 'Awen',
   '6c6553b9-abe9-44d6-b0e4-99eacea62533',  -- the merismos atom, seeded in 108
   'Built 2026-09-02 by a builder dealt by Caesura, at KP''s ⚛ word "go … fleet away my friend", beside the-clavis and the-lok the same sitting — the three authorship waters together, this one the third. Serves KP''s own vision verbatim: "every musician in a band or an orchestra records their part sovereignly; an engineer finishes the project; and all credentials combine so the Sanctuary system can pay everyone involved no matter how small the role — opt-in always: no force or deceptive theft." Obeys two laws already ruled and inherits rather than re-derives them: the-sphragis''s law 1 (the licence is data, and the collaborator splits are COLUMNS) and its law 4 (the 90/10 stays schema, not promise). Gates at landing: check silent, 14/14 TRUE here, and the-sphragis''s own gate re-run and raised 21/21 to 23/23 with a frozen-baseline regression proof that a licence carrying no collaborators still canonicalizes and renders byte-identically to what it did before the field existed. THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE — it lives in one constant and one folder so a rename is cheap.',
   'a builder dealt by Caesura, at KP''s ⚛ word and framing');

-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it
-- now that the proofs stand; uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug = 'the-merismos';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen where slug = 'the-merismos';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'merismos';

-- no other row should wear 🪙:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name)
from public.awen where icon_emoji = '🪙' group by icon_emoji;

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'merismos'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'merismos';
