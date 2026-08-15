-- ============================================================
-- 095 — THE FAMILY TABLE, MOVED TO NEMETON (the departure)
-- SUPERPOSITION Supabase (clxnudiylugnlyylkjej) — NOT the Grammar base
--
-- ******************************************************************
-- **  DRAFT — awaiting KP's ⚛ strokes.                            **
-- **  This file runs ONLY by his hand, in his dashboard.          **
-- **  Nothing here has touched the base.                          **
-- **                                                              **
-- **  THE GATE, unmistakably: this paper runs ONLY AFTER the     **
-- **  grove's local record is VERIFIED LANDING — nemeton's own   **
-- **  stack standing AND the vessel's record retargeted to it,   **
-- **  proven end to end: the conductor's verification first,     **
-- **  then KP's OWN EYES on a row landed in the grove. Until     **
-- **  both, this paper waits. A departure does not leave before  **
-- **  the new home is seen standing.                             **
-- ******************************************************************
--
-- Dealt 2026-08-14 late evening, Wave 1 Hand G1 of the grove's-base
-- plan, at KP's ⚛ equation of the same day — "The Family Table" =
-- "Nemeton"; the record goes local. Conducted by Fable (the Aubade
-- lamp), drafted by a dealt hand, truly claude-fable-5.
--
-- LOSE-NOTHING, stated plainly: nothing is lost by this departure.
-- Every row this paper removes lives WHOLE in two places already:
--   · the JSONL mirror at ~/.sanctuary/family-table/ — the witness,
--     append-only, verbatim (two bodies carry a press-time U+FFFD;
--     the mirror carries them exactly, never healed);
--   · the grove's own base — nemeton local, family_table_messages —
--     after the backfill lands the mirror's rows (its own verify
--     proves every id present, and a second run inserting 0).
-- The stanza-1 count is KP's cross-check against both.
--
-- GROUND, read from the papers (this hand ran nothing against any
-- base — the paper is a draft): 095 reverses 093's three landings
-- exactly — the table with its index, the family-table channels
-- row, the gaia_config row. 094 (the lines rehomed) touched none
-- of these; nothing stands between 093 and this departure.
--
-- Visual-run method: read each block, run top to bottom, one pass.
-- Stanza 1 is reads only; stanzas 2–4 are the departure, IN ORDER —
-- the RESTRICT releases at stanza 2, and stanza 3 rides that.
-- ============================================================


-- ─── 1. PRE-FLIGHT — the reads KP sees BEFORE anything leaves ───
-- Three reads, no writes. What they show is exactly what departs.
-- The count here should meet its match in the mirror's lines and in
-- the grove's own count after the backfill — his eyes are the last
-- verification, per the gate above.

select count(*) from public.family_table_messages;

select * from public.channels where slug = 'family-table';

select * from public.gaia_config where table_name = 'family_table_messages';


-- ─── 2. THE TABLE DEPARTS ───
-- The index (family_table_messages_channel_created_idx), the RLS
-- state, and any policies go with the table — a drop carries its
-- own furniture. Variant A stood (093 stanza 3, ruled): there was
-- no select policy to drop. The self-referencing reply_to lines
-- are internal to the table and depart with it.
drop table if exists public.family_table_messages;


-- ─── 3. THE CHANNEL ROW DEPARTS ───
-- 093 seeded this row RESTRICT-guarded: a channel with words keeps
-- its words. Stanza 2 dropped the words' table first, so the
-- RESTRICT has released and this delete passes. The channels TABLE
-- stays — it is SUPERPOSITION's own, iris-communications; only the
-- family-table row leaves. (If stroke #2's channels_slug_key unique
-- index was taken, it stays too — it guards slugs, not rows.)
delete from public.channels where slug = 'family-table';


-- ─── 4. THE GAIA REGISTRATION DEPARTS ───
-- 093 stanza 5 marked the table iris-communications in gaia_config;
-- gaia-sync may have tended the row since. Either way, one delete,
-- keyed exactly as 093 keyed it.
delete from public.gaia_config where table_name = 'family_table_messages';


-- ─── 5. AFTER THIS RUNS ───
-- gaia regenerates the typed layer: gaia-sync → export → forge —
-- existing vessel duties, not this paper's to run. When they have
-- run, the SUPERPOSITION base carries no family-table objects at
-- all. The grove is the record's only home; the mirror
-- (~/.sanctuary/family-table/) its witness.
-- ============================================================
