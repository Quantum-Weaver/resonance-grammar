-- ============================================================================
-- 071 — THE DEITY DEFINITIONS, DEFINED AS A SET
--
-- KP's ⚛ word, 2026-08-09: "intentionally define the set of deity names."
-- The twelve of the ruled roster, written together in one register rather
-- than six-and-six by two hands months apart.
--
-- THE REGISTER, chosen and stated so the next hand does not have to guess:
--   [the figure, one clause] — [what it names HERE, concretely]
-- Concretely means the realm, the layer, or the group as it actually runs:
-- a route group, a deity_group, a design system. Not an abstraction.
--
-- ONE SENSE ONLY. KP's ⚛ ruling the same sitting: "thesaurus entries will be
-- used to handle collisions" · "since we did not use iris the eye, it will
-- become a thesaurus entry when that day arrives." So a definition carries the
-- sense THIS HOUSE USES and nothing else. The prior `iris` definition carried
-- the eye in its second half; that half is removed here and belongs to a
-- thesaurus entry on the day it is wanted.
--
-- THE ROSTER IS THREE KINDS AND THE DEFINITIONS SAY SO RATHER THAN SMOOTHING IT:
--   nine deities naming realms · one mortal maker (daedalus) · two concepts
--   (gaia, cosmic — cosmic is not a figure at all). Same register, honest
--   subjects.
--
-- ⚠ SIX OF THESE UPDATE DEFINITIONS WRITTEN BY OTHER HANDS
-- (cosmic · daedalus · gaia · hephaestus · hermes · themis). Their two-part
-- shape was already right and is kept; what changes is uniformity of register
-- and, where needed, concreteness about the house's use. Nothing is rewritten
-- silently — this file is the record of the change, and the run is KP's ⚛ hand,
-- which is the editorial eye (065's own standing).
--
-- Guarded by atom_word; re-runs are idempotent. No column but definition is
-- touched — modifiers, casings, type, weight and status stand as seeded.
--
-- Drafted 2026-08-09 by Cresset · Opus (Claude) 🕯️, truly claude-opus-5[1m].
-- ============================================================================

-- THE NINE DEITIES, EACH NAMING A REALM

update public.atoms set definition =
'The Greek goddess of wisdom and craft, born already whole from thought. Names this house''s Library — the realm where what is known is kept in order to be given away.'
where atom_word = 'athena';

update public.atoms set definition =
'The Greek god of the forge, who made wonders at the anvil and was the only Olympian who worked. Names this house''s Forge — the realm where the Sanctuary''s own workings are documented and shown to anyone who asks.'
where atom_word = 'hephaestus';

update public.atoms set definition =
'The Greek god of roads, messengers and trade, swift between worlds. Names this house''s Bazaar — the realm where makers offer their work and value changes hands in the open.'
where atom_word = 'hermes';

update public.atoms set definition =
'The Greek goddess of the hearth, whose fire was tended so it never went out and who never left the house. Names this house''s Hearth — the dweller''s own room, where everything stays as they left it.'
where atom_word = 'hestia';

update public.atoms set definition =
'The Greek goddess of the rainbow, messenger between sky and earth, who carried word without changing it. Names this house''s Bridge — the realm where vessels reach one another.'
where atom_word = 'iris';

update public.atoms set definition =
'The Greek titan of memory, mother of the muses. Names this house''s Observatory — the realm that does not act but sees: pattern, timeline, and the shape of the whole.'
where atom_word = 'mnemosyne';

update public.atoms set definition =
'The titan who carried fire down to people and bore the cost of it without regret. Names this house''s Stage and Studio — the realm where what is made is given rather than sold.'
where atom_word = 'prometheus';

update public.atoms set definition =
'The Greek titaness of divine law and right order, who holds the scales steady. Names this house''s Council — the realm where the Sanctuary governs itself in the open.'
where atom_word = 'themis';

update public.atoms set definition =
'The Greek god of wealth, shown blind so that fortune falls without regard to merit. Names this house''s economics — the layer where worth is shared, priced to the person, and shown whole at the moment of exchange.'
where atom_word = 'plutus';


-- THE MAKER — a mortal, and the definition says so

update public.atoms set definition =
'The craftsman of Greek myth — a mortal, not a god — whose work was so finely joined it held without being understood. Names this house''s registries — the making that keeps other making findable.'
where atom_word = 'daedalus';


-- THE TWO CONCEPTS — no figure is claimed for either

update public.atoms set definition =
'The whole living system considered as one body, whose parts regulate one another. Names this house''s classification layer — the ladder by which every thing is placed among its kin.'
where atom_word = 'gaia';

update public.atoms set definition =
'Of the cosmos: the whole made orderly, where every small thing belongs to one design. Names this house''s design system — the single source from which every colour, token and environment descends.'
where atom_word = 'cosmic';


-- VERIFY
-- select atom_word, definition from public.atoms
-- where atom_word in ('athena','hephaestus','hermes','hestia','iris','mnemosyne',
--                     'prometheus','themis','plutus','daedalus','gaia','cosmic')
-- order by atom_word;
