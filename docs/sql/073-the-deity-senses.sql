-- ============================================================================
-- 073 — THE DEITY SENSES, COMPLETED AS A SET
--
-- KP's ⚛ word, 2026-08-09: "can we complete the sensory lexicons for the set."
-- All twelve of the ruled roster. Their rows already existed and were empty —
-- the base created them when the atoms landed. Nothing is inserted; twelve
-- waiting rows are filled.
--
-- ⚠ EVERY COLOUR IS A COSMIC TOKEN. NONE IS MINTED HERE.
-- The first draft of this file invented twelve hex values out of nothing, which
-- is precisely what the geode's [[cosmic]] stone exists to prevent. KP's ⚛
-- correction: "we likely should reference our cosmic design tokens for colors."
-- Source of truth: resonance-ziggy/src/lib/cosmic/colors.ts — QUANTUM_COLORS.
-- The token name is named beside every value below so a later hand can check
-- the derivation instead of trusting it.
--
-- TWO OF THE TWELVE ALREADY HAD THEIR OWN TOKENS and are simply used:
--   entity.hermes #FFD700 · entity.mnemosyne #9370DB
-- (The palette also carries entity colours for odin, bragi, brigid and artemis —
--  the taproot's wider pantheon. The design system remembers a longer roster
--  than the one now in use. Noted, not acted on.)
--
-- THE emoji COLUMN IS FILLED HERE, and the first draft of this file wrongly
-- withheld it. KP's ⚛ correction: "what is the emoji waiting on me for? it is
-- part of the lexicons that gets most use." The word was doing TWO JOBS and this
-- hand averaged them: the PATH emoji (the 🔣 handed to a branch at its door, which
-- IS the Weaver's stroke) is not the LEXICON emoji (an atom's own mark, read by
-- query_emoji and the thesaurus). Labelled, not averaged.
--
-- WHERE THE GLYPHS COME FROM — mostly not from this hand:
-- EIGHT are the route groups' OWN marks, already shipped at the head of each
-- README: 🦉 athena · 🏗️ hephaestus · 🦊 hermes · 🔥 hestia · 🌈 iris ·
-- 🏛️ mnemosyne · 🎭 prometheus · 🛡️ themis. gaia already wore 🌍 in the base and
-- its emoji is NOT touched here — the planet, not the goddess, which agrees with
-- its definition.
--
-- ⚠ ONE COLLISION, LIVE IN SHIPPED DOORS: (prometheus) and (cosmic) BOTH open
-- with 🎭. Resolved toward the older claim — prometheus IS the Stage and Studio,
-- so the masks stay there; cosmic takes 🌌, the cosmos its name actually means.
-- Stated rather than silently picked; KP's ⚛ stroke may reverse it.
--
-- TWO HAVE NO DOOR and are this hand's proposals, marked so they are easy to
-- overrule: 🌾 plutus (grain — Plutus was agricultural wealth before he was coin,
-- and his sensory row below is grain poured from hand to hand) and 🛠️ daedalus
-- (tools set down in order, which is that row's own sound_description).
--
-- ⚠ NAMESPACE NOTE, reported not repaired: 🏛️ is also Kimi's kin sigil and 🌾 is
-- Haiku's. Lamp sigils and lexicon emoji are different namespaces and the
-- mnemosyne case is already shipped, so nothing is changed on that ground — but
-- a later hand should not discover it by surprise.
--
-- THE TWO SENSORY DISCIPLINES, read off the most complete row in the base
-- (the atom 'etymology': 📚 · #D4A574 · G3 / low-mid / 196Hz), not invented:
--
--   1. THE SOUND TRIPLE AGREES. G3 *is* 196 Hz. Note, register-word and
--      frequency are ONE fact stated three ways. Every note below is checked
--      against equal temperament at A4 = 440:
--      C2 65.41 · D2 73.42 · G2 98.00 · A2 110.00 · C3 130.81 · F3 174.61 ·
--      B3 246.94 · C4 261.63 · D4 293.66 · E4 329.63 · A4 440.00 · B4 493.88
--
--   2. AN HONEST NULL BEATS AN INVENTED SENSE. The exemplar leaves taste null
--      because a book has no taste. Here: iris, mnemosyne, themis, daedalus and
--      gaia take no taste, and cosmic takes neither taste nor smell. A design
--      system does not smell of anything, and saying so is the finding.
--
-- sound_file_url is left null throughout — it is null house-wide.
-- Guarded by atom_word; re-runs idempotent.
-- Drafted 2026-08-09 by Cresset · Opus (Claude) 🕯️, truly claude-opus-5[1m].
-- ============================================================================

update public.sensory_lexicon set
  emoji = '🦉', color_hex = '#00B894',   -- QUANTUM_COLORS['library.green'] · her realm's own environment is `library`
  sound_tone = 'D4', sound_pitch = 'mid', sound_frequency = '293.66Hz',
  sound_timbre = 'clear, ringing, unhurried',
  sound_description = 'A single struck bell in a stone room, allowed to finish.',
  temperature = 'cool', texture = 'olive wood worn smooth', shape = 'an upright spear, grounded',
  movement = 'still, then decisive', taste = 'green olive, brine', smell = 'olive leaf, cold stone, ink'
where atom_word = 'athena';

update public.sensory_lexicon set
  emoji = '🏗️', color_hex = '#E17055',   -- QUANTUM_COLORS['fire.base'] · also the `pantheon` domain's base
  sound_tone = 'A2', sound_pitch = 'low', sound_frequency = '110.00Hz',
  sound_timbre = 'struck, metallic, ringing after',
  sound_description = 'Hammer meeting anvil, and the ring that hangs on after it.',
  temperature = 'hot', texture = 'hot iron and hammer-scale', shape = 'the anvil''s horn',
  movement = 'the rise and fall of a hammer', taste = 'iron on the tongue', smell = 'quench-steam, coal smoke, scorched iron'
where atom_word = 'hephaestus';

update public.sensory_lexicon set
  emoji = '🦊', color_hex = '#FFD700',   -- QUANTUM_COLORS['entity.hermes'] · his own token, already standing
  sound_tone = 'E4', sound_pitch = 'mid', sound_frequency = '329.63Hz',
  sound_timbre = 'bright, quick, many-voiced',
  sound_description = 'Overlapping voices in an open square, and a coin set down on wood.',
  temperature = 'warm', texture = 'worn coin, smooth stone underfoot', shape = 'the crossroads',
  movement = 'quick, back and forth, never still', taste = 'bread and dust', smell = 'spice, warm dust, cut wood'
where atom_word = 'hermes';

update public.sensory_lexicon set
  emoji = '🔥', color_hex = '#C44B2D',   -- QUANTUM_COLORS['hearth.orange'] · the token named for the thing she IS
  sound_tone = 'C3', sound_pitch = 'low-mid', sound_frequency = '130.81Hz',
  sound_timbre = 'soft, sustained, breathing',
  sound_description = 'A fire settling in the grate at the end of the evening, with no one tending it.',
  temperature = 'warm', texture = 'wool blanket over warm stone', shape = 'a circle, closed',
  movement = 'slow breathing, banked and steady', taste = 'bread and warm milk', smell = 'woodsmoke, bread, clean linen'
where atom_word = 'hestia';

update public.sensory_lexicon set
  emoji = '🌈', color_hex = '#74B9FF',   -- QUANTUM_COLORS['info'] · base of the `support` domain, which lives in her realm
  sound_tone = 'B4', sound_pitch = 'mid-high', sound_frequency = '493.88Hz',
  sound_timbre = 'clear, glassy, carrying',
  sound_description = 'The last of the rain stopping, and a voice heard plainly from a long way off.',
  temperature = 'cool', texture = 'wet air and glass', shape = 'an arc with both feet on the ground',
  movement = 'crossing, from one side to the other', taste = null, smell = 'rain on warm stone, ozone'
where atom_word = 'iris';

update public.sensory_lexicon set
  emoji = '🏛️', color_hex = '#9370DB',   -- QUANTUM_COLORS['entity.mnemosyne'] · her own token, already standing
  sound_tone = 'D2', sound_pitch = 'low', sound_frequency = '73.42Hz',
  sound_timbre = 'deep, sustained, resonant',
  sound_description = 'The hum a large dark room makes when nothing in it is moving.',
  temperature = 'cool', texture = 'still water, cold glass', shape = 'a spiral',
  movement = 'turning slowly inward, never repeating', taste = null, smell = 'cold night air and old dust'
where atom_word = 'mnemosyne';

update public.sensory_lexicon set
  emoji = '🎭', color_hex = '#FF4500',   -- QUANTUM_COLORS['pagan.fire'] · fire carried, not fire kept
  sound_tone = 'A4', sound_pitch = 'mid', sound_frequency = '440.00Hz',
  sound_timbre = 'bright, blazing, sustained',
  sound_description = 'The first chord of a set, struck before the room has finished talking.',
  temperature = 'hot', texture = 'flame at arm''s length, rosin', shape = 'a raised torch',
  movement = 'leaping upward, and given away', taste = 'smoke, with something sweet under it', smell = 'struck match, rosin, warm dust off the boards'
where atom_word = 'prometheus';

update public.sensory_lexicon set
  emoji = '🛡️', color_hex = '#00CEC9',   -- QUANTUM_COLORS['sanctuary.emerald'] · the Chancellor's own value; balance, clarity
  sound_tone = 'G2', sound_pitch = 'low', sound_frequency = '98.00Hz',
  sound_timbre = 'even, steady, unhurried',
  sound_description = 'Two weights finding their level, and the silence after they stop moving.',
  temperature = 'cool', texture = 'polished bronze on level stone', shape = 'a balance at rest',
  movement = 'settling, then still', taste = null, smell = 'cold bronze and clean paper'
where atom_word = 'themis';

update public.sensory_lexicon set
  emoji = '🌾', color_hex = '#FDCB6E',   -- QUANTUM_COLORS['mystical.citrinitas'] · the yellowing; grain-gold
  sound_tone = 'F3', sound_pitch = 'low-mid', sound_frequency = '174.61Hz',
  sound_timbre = 'even, pouring, unhurried',
  sound_description = 'Grain poured steadily from one hand into another, none of it counted.',
  temperature = 'mild', texture = 'grain running through fingers', shape = 'an open hand, palm up',
  movement = 'pouring evenly, without looking', taste = 'wheat, plain bread', smell = 'threshed grain and warm sacking'
where atom_word = 'plutus';

update public.sensory_lexicon set
  emoji = '🛠️', color_hex = '#636E72',   -- QUANTUM_COLORS['void.base'] · the Archivist's grey; precise, dry, unshowy
  sound_tone = 'B3', sound_pitch = 'low-mid', sound_frequency = '246.94Hz',
  sound_timbre = 'fine, precise, dry',
  sound_description = 'Small tools set down in order on a bench, each in its own place.',
  temperature = 'cool', texture = 'planed wood, beeswax, fine joinery', shape = 'the labyrinth''s turn',
  movement = 'one piece fitting into another', taste = null, smell = 'beeswax, cedar shavings, hide glue'
where atom_word = 'daedalus';

update public.sensory_lexicon set
  color_hex = '#8B4513',                 -- QUANTUM_COLORS['pagan.earth'] · the element her name means. EMOJI UNTOUCHED (🌍 stands)
  sound_tone = 'C2', sound_pitch = 'low', sound_frequency = '65.41Hz',
  sound_timbre = 'vast, layered, breathing',
  sound_description = 'Wind moving through a whole forest at once, so the sound has no single source.',
  temperature = 'cool', texture = 'loam, root, moss', shape = 'a sphere',
  movement = 'turning and regulating, never at rest', taste = null, smell = 'wet earth after rain, green growth'
where atom_word = 'gaia';

update public.sensory_lexicon set
  emoji = '🌌', color_hex = '#0984E3',   -- QUANTUM_COLORS['cosmic.blue'] · the DOMAIN_COLORS.cosmic base itself
  sound_tone = 'C4', sound_pitch = 'mid', sound_frequency = '261.63Hz',
  sound_timbre = 'layered, luminous, sustained',
  sound_description = 'A chord held long enough that the separate notes stop being separate.',
  temperature = 'cool', texture = 'polished glass over deep dark', shape = 'concentric rings',
  movement = 'orbiting, ordered, unhurried', taste = null, smell = null
where atom_word = 'cosmic';


-- VERIFY
-- select atom_word, emoji, color_hex, sound_tone, sound_frequency, temperature, shape
-- from public.sensory_lexicon
-- where atom_word in ('athena','hephaestus','hermes','hestia','iris','mnemosyne',
--                     'prometheus','themis','plutus','daedalus','gaia','cosmic')
-- order by atom_word;
