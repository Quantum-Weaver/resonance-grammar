-- DRAFT — Resonance Progenatrix wears the heart — 2026-08-28 — for KP's own hand
--
-- KP, 2026-08-28, verbatim: "🫀 progenatrix". Drafted by Tessera 🎻 and NOT run; the same
-- line stands in progenatrix.db (migration 122) until the Grammar carries it.

update beacons set icon_emoji = '🫀' where slug = 'resonance-progenatrix' and icon_emoji is null;
