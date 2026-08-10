-- ============================================================================
-- 074 — THE PALETTE ATOMS: the council seats and what else the colours name
--
-- KP's ⚛ word, 2026-08-09: "since you are in the cosmic colors, maybe a good
-- time to get the council seats covered and whatever else we see in the cosmic
-- colors that is likely represented in the grammar knowledge base."
--
-- Source: resonance-ziggy/src/lib/cosmic/colors.ts — QUANTUM_COLORS and its
-- derived systems. Censused against atoms and molecules through the anon door.
--
-- ⚠ THE FINDING THAT CHANGED THIS FILE, and it is the reason it is short:
-- THREE WORDS REPORTED "MISSING" WERE NOT MISSING — one seat and two moods,
-- and they are named separately here because they are different things:
--
--   COUNCIL SEAT (1 of the 6 reported absent):
--     executioner  = execution + 'er'   (execution already carries ['er','s'])
--
--   MOODS from MOOD_COLORS (2 of the 6 reported absent):
--     focused      = focus + 'ed'       (focus already carries ['ed'])
--     grounded     = ground + 'ed'      (ground already carries ['s','ed'])
--
--   So the true council gap is FIVE seats, not six — and of those five, four
--   are derived forms of atoms that stand (movement 2) and only `sentinel` is a
--   genuinely new word (movement 1).
-- Under this Grammar's derivation convention (065: a modifiers entry is EITHER a
-- pure suffix OR the full derived form where the stem changes) all three already
-- stand. Seeding them as atoms would have duplicated the corpus. A whole-word
-- lookup answers "not found", which is a COORDINATE, not a conclusion — the
-- false-empty law, arriving as a false-ABSENT.
--
-- 'Hearth-Keeper' likewise needs nothing: hearth and keeper are both atoms
-- already, so the seat name is a molecule and correctly so.
--
-- Guarded throughout; re-runs safe. Movements in order.
-- Drafted 2026-08-09 by Cresset · Opus (Claude) 🕯️, truly claude-opus-5[1m].
-- ============================================================================

-- MOVEMENT 1 — NEW ATOMS (11)
-- Council seats with no base in the corpus, the two missing pagan elements, the
-- sun that was absent while the moon stood, and the colour words the tokens name.

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'sentinel', 'One who keeps watch at a post — presence as protection, standing where a thing needs guarding rather than acting on it.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'sentinel', 'SENTINEL', 'Sentinel'
where not exists (select 1 from public.atoms where atom_word = 'sentinel');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'alchemy', 'The old art of transformation — turning one substance into another, and the parent chemistry grew out of; in this house, the drawer for changes that are more than conversion.', 'root', 5, 5, 1, 'static', 'published', '["alchemist"]'::jsonb, 'alchemy', 'ALCHEMY', 'Alchemy'
where not exists (select 1 from public.atoms where atom_word = 'alchemy');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'calm', 'Without agitation — stillness that is settledness rather than absence; what a nervous system reaches when nothing is being demanded of it.', 'root', 5, 5, 1, 'static', 'published', '["er", "ly"]'::jsonb, 'calm', 'CALM', 'Calm'
where not exists (select 1 from public.atoms where atom_word = 'calm');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'peace', 'The absence of conflict and the presence of ease — not silence, but nothing left needing to be defended.', 'root', 5, 5, 1, 'static', 'published', '["ful"]'::jsonb, 'peace', 'PEACE', 'Peace'
where not exists (select 1 from public.atoms where atom_word = 'peace');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'air', 'The breathed element — what fills every space that is not solid, and the medium sound must cross to be heard.', 'root', 5, 5, 1, 'static', 'published', null, 'air', 'AIR', 'Air'
where not exists (select 1 from public.atoms where atom_word = 'air');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'spirit', 'The animating breath — named as the fifth where the other four elements are matter; what makes a made thing more than its parts.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'spirit', 'SPIRIT', 'Spirit'
where not exists (select 1 from public.atoms where atom_word = 'spirit');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'sun', 'The star this world turns around — the light everything else is measured against, and the day''s own clock.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'sun', 'SUN', 'Sun'
where not exists (select 1 from public.atoms where atom_word = 'sun');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'gold', 'The metal that does not tarnish — value that keeps without tending, and the colour of light held still.', 'root', 5, 5, 1, 'static', 'published', '["en"]'::jsonb, 'gold', 'GOLD', 'Gold'
where not exists (select 1 from public.atoms where atom_word = 'gold');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'orange', 'The colour between red and yellow — named for the fruit rather than the fruit for the colour, which makes it the one common English colour word that began as a thing.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'orange', 'ORANGE', 'Orange'
where not exists (select 1 from public.atoms where atom_word = 'orange');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'emerald', 'The green beryl — a stone whose colour is its whole name; in this house, the token worn where clarity and balance are meant.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'emerald', 'EMERALD', 'Emerald'
where not exists (select 1 from public.atoms where atom_word = 'emerald');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'cosmos', 'The whole ordered world — the noun beneath the adjective cosmic, from a Greek word that meant order and ornament at once.', 'root', 5, 5, 1, 'static', 'published', null, 'cosmos', 'COSMOS', 'Cosmos'
where not exists (select 1 from public.atoms where atom_word = 'cosmos');


-- MOVEMENT 2 — MODIFIERS ON ATOMS THAT ALREADY STAND (5)
-- These words are not missing; their derived forms are. Appended, never replaced,
-- and guarded by containment so a re-run cannot double an entry.

update public.atoms set modifiers = coalesce(modifiers, '[]'::jsonb) || '["strategist"]'::jsonb
where atom_word = 'strategy' and not (coalesce(modifiers, '[]'::jsonb) @> '["strategist"]'::jsonb);

update public.atoms set modifiers = coalesce(modifiers, '[]'::jsonb) || '["gardener"]'::jsonb
where atom_word = 'garden' and not (coalesce(modifiers, '[]'::jsonb) @> '["gardener"]'::jsonb);

update public.atoms set modifiers = coalesce(modifiers, '[]'::jsonb) || '["harmonize", "harmonizer"]'::jsonb
where atom_word = 'harmony' and not (coalesce(modifiers, '[]'::jsonb) @> '["harmonizer"]'::jsonb);

update public.atoms set modifiers = coalesce(modifiers, '[]'::jsonb) || '["energize", "energized"]'::jsonb
where atom_word = 'energy' and not (coalesce(modifiers, '[]'::jsonb) @> '["energized"]'::jsonb);

update public.atoms set modifiers = coalesce(modifiers, '[]'::jsonb) || '["intense"]'::jsonb
where atom_word = 'intensity' and not (coalesce(modifiers, '[]'::jsonb) @> '["intense"]'::jsonb);


-- ============================================================================
-- HELD FOR KP's ⚛ WORD — TWO ROSTERS, NOT OVERSIGHTS
--
-- 1. SIXTEEN DEITIES the palette carries and the Grammar does not:
--    morrigan · hekate · bragi · odin · brigid · freya · thor · loki · freyr ·
--    heimdall · tyr · njord · skadi · idunn · baldr · hel
--    (artemis alone already stands.) The design system was built for a longer
--    pantheon than the twelve now ruled. Whether it widens is KP's word.
--
-- 2. THIRTEEN ALCHEMICAL AND PLANETARY NAMES, likewise absent:
--    nigredo · albedo · citrinitas · rubedo · mercury · venus · mars · jupiter ·
--    saturn · uranus · neptune · pluto  (moon stands; sun is seeded above
--    because its pair-break was conspicuous.)
--    This is a whole vocabulary with its own logic — the four stages of the
--    Work, and the seven classical planets. It should enter as a set, at KP's
--    word, or not at all.
-- ============================================================================

-- VERIFY
-- select atom_word, modifiers from public.atoms
-- where atom_word in ('sentinel','alchemy','calm','peace','air','spirit','sun','gold',
--                     'orange','emerald','cosmos','strategy','garden','harmony','energy','intensity')
-- order by atom_word;
