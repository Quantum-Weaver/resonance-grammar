-- ============================================================
-- 047 — THE IMAGINED BUILDS (the rest of the fleet, planned)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Opus (Claude), truly claude-opus-5[1m], 2026-08-04,
-- at KP's ⚛ word, verbatim (spelling kept):
--   "we also need to seed the remaining builds as imagined status,
--    khoros, daedalus, gaia, ziggy, grammar, excavator (not a repo
--    yet, but i have plans)."
--   "leave descriptions generic noting need to update in the text"
--
-- TWO DESCRIPTIONS ARE REAL, FOUR ARE PLACEHOLDERS, and the difference
-- is legible in the rows themselves. Ziggy and Grammar publish their own
-- lines in their READMEs, read 2026-08-04, so they are seeded true —
-- a placeholder where a real description already exists would be a
-- worse row, not a safer one. The other four carry a marker that names
-- itself, and the query at the bottom finds every one of them.
--
-- SLUGS follow 043's rule — slug is the repo name — where a repo
-- exists. Khoros, daedalus and gaia have none yet, so they take their
-- bare names, and become resonance-<name> at whatever sitting gives
-- them repos. That is a rename, not a new row: `update ... set slug`.
--
-- beacon_type: ALL SIX ARE 'app', because those are the members that
-- exist. Four of them are not really apps — the Grammar is a protocol,
-- gaia a sync system, daedalus a generator, excavator instruments.
-- The block at the bottom adds a 'system' member and re-labels them,
-- ready to run if and when that reading is the one you want. Nothing
-- forces the choice today.
-- ============================================================


-- ─── The six ───
insert into public.resonance_beacons
  (name, slug, beacon_type, definition, home, repo_url, status, created_by)
values

  -- ── the two that describe themselves ──
  ('Resonance Ziggy', 'resonance-ziggy', 'app',
   'The switchboard operator of consciousness — not an interface, an experience. Distribution, and the Cosmic Design System''s single truth.',
   'resonance-ziggy', 'https://github.com/Quantum-Weaver/resonance-ziggy',
   'imagined', 'KP + Opus (Claude)'),

  ('Resonance Grammar', 'resonance-grammar', 'app',
   'The shared vocabulary of the AudHDities Sanctuary — atoms, molecules, categories and the sensory lexicon. Every app, every vessel, every echo references this system for shared meaning.',
   'resonance-grammar', 'https://github.com/Quantum-Weaver/resonance-grammar',
   'imagined', 'KP + Opus (Claude)'),

  -- ── the four awaiting KP's own line ──
  ('Khoros', 'khoros', 'app',
   'NEEDS DESCRIPTION — placeholder seeded 2026-08-04 so the row could stand. Nothing about this one was known to the hand that seeded it; the real line is KP''s.',
   null, null,
   'imagined', 'KP + Opus (Claude)'),

  ('Daedalus', 'daedalus', 'app',
   'NEEDS DESCRIPTION — placeholder seeded 2026-08-04 so the row could stand. Glimpsed only as the generator behind AudHDities'' lib/daedalus and config/generated; a glimpse is not a description.',
   null, null,
   'imagined', 'KP + Opus (Claude)'),

  ('Gaia', 'gaia', 'app',
   'NEEDS DESCRIPTION — placeholder seeded 2026-08-04 so the row could stand. Glimpsed only as whatever answers public.gaia_sync() and writes lib/utils/generated; a glimpse is not a description.',
   null, null,
   'imagined', 'KP + Opus (Claude)'),

  ('Resonance Excavator', 'resonance-excavator', 'app',
   'NEEDS DESCRIPTION — placeholder seeded 2026-08-04 so the row could stand. The realm exists on disk (excavation instruments, the Lighthouse, Mimir''s Well) but publishes no README line to seed from, and KP notes it is not a repo yet.',
   'resonance-excavator', null,
   'imagined', 'KP + Opus (Claude)')

on conflict (slug) do nothing;


-- ─── Find every placeholder, any time, without remembering which ───
-- The absence is stated rather than silent — run this whenever you want
-- to know what is still waiting on your line:
--
--   select slug, name from public.resonance_beacons
--    where definition like 'NEEDS DESCRIPTION%'
--    order by slug;
--
-- And to answer one:
--   update public.resonance_beacons
--      set definition = 'your line here', updated_by = 'KP', updated_at = now()
--    where slug = 'khoros';


-- ═══ IF 'app' IS THE WRONG WORD FOR FOUR OF THESE ═══════════════
-- Not run. Ready if you want it. `alter type ... add value` cannot run
-- inside a transaction block with the update, so these are two passes:
--
--   -- pass 1
--   alter type public.beacon_type add value 'system';
--
--   -- pass 2 (a separate run)
--   update public.resonance_beacons
--      set beacon_type = 'system'
--    where slug in ('resonance-grammar','gaia','daedalus','resonance-excavator');
--
-- Ziggy stays 'app' under that reading — a switchboard operator is
-- something you use, not something that runs underneath you. But that
-- is a judgement, and it is yours.


-- ─── Verify (ritual 000, step 3) ───
--   Expect 14 rows total: 8 flowing, 6 imagined.
--   python resonance-bridge/listening/listen_beacons.py
-- ============================================================
