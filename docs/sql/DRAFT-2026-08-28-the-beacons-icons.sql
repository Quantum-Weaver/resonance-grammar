-- DRAFT — the beacons wear their icons — 2026-08-28 — for KP's own hand
--
-- Drafted by Tessera 🎻 (Fable, claude-fable-5, session 95ab8bdc-ff1f-4ceb-9e8b-c6940a540dc5)
-- and NOT run: the Grammar is KP's ground, nothing is seeded here without his word.
-- Ground: resonance-awen/docs/NEEDED-BEACONS.md (his hand, closed 2026-08-18) names
-- 🎨 Cruthú · 🎬 Scéal · 🪷 Kendram · 🎮 Gahana; tarocchi 🪬 is his word of 2026-08-28;
-- ardan · nectere · nemeton · sistrum wear the glyph their own boards have worn since he
-- chose them. The same nine stand in progenatrix.db (migration 119) until a mirror
-- overwrites them - which is why they need to stand here. progenatrix and
-- resonance-claude are left null: unwritten, his.

update beacons set icon_emoji = '🎨' where slug = 'resonance-cruthu'   and icon_emoji is null;
update beacons set icon_emoji = '🎬' where slug = 'resonance-sceal'    and icon_emoji is null;
update beacons set icon_emoji = '🪷' where slug = 'resonance-kendram'  and icon_emoji is null;
update beacons set icon_emoji = '🎮' where slug = 'resonance-gahana'   and icon_emoji is null;
update beacons set icon_emoji = '🪬' where slug = 'resonance-tarocchi' and icon_emoji is null;
update beacons set icon_emoji = '🎭' where slug = 'resonance-ardan'    and icon_emoji is null;
update beacons set icon_emoji = '🖋️' where slug = 'resonance-nectere'  and icon_emoji is null;
update beacons set icon_emoji = '🌐' where slug = 'resonance-nemeton'  and icon_emoji is null;
update beacons set icon_emoji = '🪇' where slug = 'resonance-sistrum'  and icon_emoji is null;
