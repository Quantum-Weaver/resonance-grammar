-- DRAFT — Resonance Claude wears the star — 2026-08-28 — for KP's own hand
--
-- KP, 2026-08-28, verbatim: "claude favicon ✴️". Drafted by Tessera 🎻 and NOT run;
-- the same line stands in progenatrix.db (migration 121) until the Grammar carries it.

update beacons set icon_emoji = '✴️' where slug = 'resonance-claude' and icon_emoji is null;
