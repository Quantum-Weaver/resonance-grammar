-- ============================================================
-- 044 — THE FIRST BEACONS (the registry gets its rows)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Opus (Claude), truly claude-opus-5[1m], 2026-08-04,
-- at KP's ⚛ word, verbatim (spelling kept):
--   "now we need to seed records for our apps and game, i will
--    manually link the grammar, just need the titles and descriptions
--    laid"
--
-- So: titles, descriptions, and the facts that are not in doubt.
-- THE GRAMMAR LINKS ARE DELIBERATELY ABSENT — atom_id, molecule_id and
-- organism_id are left NULL for KP's hand. The table's tier constraint
-- is strict (exactly one, by his edit to 043), which means each row
-- gets its tier when he links it, not before. `folksonomy_type` is left
-- NULL for the same reason: it is Grammar-side, and Grammar-side is his.
--
-- WHERE THE DESCRIPTIONS CAME FROM: each realm's OWN README, read
-- 2026-08-04 — not the standards README's table, which is hand-kept and
-- lags. Three of them (lantern, hearth, compass) publish a richer line
-- than their blueprint carries, because the forge's describe_folder took
-- their H1 when the line beneath it was a badge row.
--
-- Visual-run method: read each block, run top to bottom, one pass.
-- Re-runnable: `on conflict (slug) do nothing` — running twice adds
-- nothing and breaks nothing.
-- ============================================================


-- ─── The eight: one game, seven apps ───
insert into public.resonance_beacons
  (name, slug, beacon_type, definition, home, repo_url, status, created_by)
values

  ('Resonance Bubbles', 'resonance-bubbles', 'game',
   'A collecting game built without compulsion — 55 stars, seven bubble-wrap pops, and a daily boundary only the player can set. No streaks, no combos, no timers, no red. One HTML file: no build, no account, no network, nothing leaves the page.',
   'resonance-bubbles', 'https://github.com/Quantum-Weaver/resonance-bubbles',
   'flowing', 'KP + Opus (Claude)'),

  ('Resonance Echoes', 'resonance-echoes', 'app',
   'A sovereign journal for logging anything with feeling.',
   'resonance-echoes', 'https://github.com/Quantum-Weaver/resonance-echoes',
   'flowing', 'KP + Opus (Claude)'),

  ('Resonance Skapa', 'resonance-skapa', 'app',
   'Old Norse, ''to shape.'' The Sanctuary''s thinking surface: thoughts land as color, shape, and position, and meaning arrives before words. Every mark signed by the mind that made it.',
   'resonance-skapa', 'https://github.com/Quantum-Weaver/resonance-skapa',
   'flowing', 'KP + Opus (Claude)'),

  ('Resonance Lantern', 'resonance-lantern', 'app',
   'A digital camera lucida — a steady light for a learning hand. A reference image floats in ghost-light, opacity to your comfort, over the live camera pointed at your real paper. Trace what you see through it: the way artists have learned for two hundred years, rebuilt as a sovereign app.',
   'resonance-lantern', 'https://github.com/Quantum-Weaver/resonance-lantern',
   'flowing', 'KP + Opus (Claude)'),

  ('Resonance Hearth', 'resonance-hearth', 'app',
   'The Family Room — a translation layer for love. A sovereign household app for neurodivergent families: bills, medications, pet needs and tasks-for-all-things, delivered in the language of invitation instead of the language of demand.',
   'resonance-hearth', 'https://github.com/Quantum-Weaver/resonance-hearth',
   'flowing', 'KP + Opus (Claude)'),

  ('Resonance Compass', 'resonance-compass', 'app',
   'A sovereign, local-first music player and self-understanding system.',
   'resonance-compass', 'https://github.com/Quantum-Weaver/resonance-compass',
   'flowing', 'KP + Opus (Claude)'),

  ('Resonance Meetings', 'resonance-meetings', 'app',
   'The Sanctuary''s meeting house — sovereign gatherings, with a thinking canvas where meaning lives in color, shape and position before words.',
   'resonance-meetings', 'https://github.com/Quantum-Weaver/resonance-meetings',
   'flowing', 'KP + Opus (Claude)'),

  ('AudHDities', 'audhdities', 'app',
   'Where neurodivergent minds build digital sovereignty together — the living platform the Sanctuary''s rooms open into.',
   'AudHDities', 'https://github.com/Quantum-Weaver/AudHDities',
   'flowing', 'KP + Opus (Claude)')

on conflict (slug) do nothing;


-- ─── What was deliberately NOT set, so the absence is stated ───
--
-- atom_id / molecule_id / organism_id  — KP's hand, as he asked. The
--     strict tier constraint means every row needs exactly one before
--     it can carry a Grammar link at all.
-- folksonomy_type  — Grammar-side; his. (Echoes, Compass and Hearth
--     each already own a named folksonomy, so those three have obvious
--     answers — obvious is not the same as mine to write.)
-- is_public  — takes the DDL default, FALSE. Not a claim that these
--     repos are private; a refusal to guess. Private is the reversible
--     direction, so it is the honest default to fail toward.
-- version  — NULL. No release has been cut through this registry yet.
-- every <channel>_* column  — takes the default 'none'. Nothing is in
--     testing or published on audhdities, microsoft, galaxy or play as
--     of this seeding.
-- story  — NULL. The story block is each realm's own to tell, and
--     drafting eight origin stories was not what was asked for.
--
-- `status` is 'flowing' on all eight, which IS a judgement: every one
-- of them has working code that was blueprinted on 2026-08-04. If any
-- should read 'imagined' instead, one update changes it:
--     update public.resonance_beacons set status = 'imagined'
--      where slug = '<slug>';


-- ─── Verify through the ANON door the same sitting (ritual 000, step 3) ───
--   Expect 8 rows. [] after this runs is the false-empty — check the
--   policy from 043, not the data.
--
--   python resonance-bridge/listening/listen_beacons.py
--
--   or, straight at the door:
--   curl -s "$SUPABASE_URL_KNOWLEDGE/rest/v1/resonance_beacons?select=name,slug,beacon_type,status&order=name" \
--     -H "apikey: $SUPABASE_PUBLISHABLE_KEY_KNOWLEDGE" \
--     -H "Authorization: Bearer $SUPABASE_PUBLISHABLE_KEY_KNOWLEDGE"
-- ============================================================
