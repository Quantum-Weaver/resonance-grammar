-- ============================================================================
-- 070 — THE DEITY ATOMS
--
-- The pantheon enters the Grammar as atoms. KP's ⚛ word, 2026-08-09:
-- "Mnemosyne, Prometheus, etc. need to become atoms if they are not already"
-- · "all atoms" · "none of those will be molecules" — a deity name is one
-- word, and one word is an atom. No molecule, no organism, no ambiguity.
--
-- THE ROSTER, ⚛ RULED THE SAME SITTING, in KP's own hand — twelve names:
--   athena · hephaestus · hermes · hestia · iris · mnemosyne · prometheus ·
--   themis (+ plutus, daedalus, gaia, cosmic)
--
-- THE CENSUS THIS ANSWERS (asked of the living base through the anon door,
-- 2026-08-09, whole-word match, case-insensitive, against all three tiers):
--   ALREADY STANDING (6 of the twelve) — hephaestus · hermes · themis ·
--                                        daedalus · gaia · cosmic
--   ABSENT EVERYWHERE (6) — the seeds below. None existed at any tier.
--   (Also standing, not on the roster: aethelred · artemis.)
--
-- ⚠ WHAT THIS FILE DELIBERATELY DOES NOT SEED, and why it is recorded rather
-- than silently omitted: the house carries two other rosters that use the same
-- vocabulary. (a) THE COUNCIL OF NINE are roles, not deities — Hearth-Keeper ·
-- Chancellor · Seer · Aethelred · Curator · Archivist · Skald · Codex ·
-- Executioner — and they already carry emoji, statically, in
-- CouncilEntityList.tsx. (b) THE TAPROOT'S 2025-10-07 oversight assignments mix
-- Greek and Norse and would add odin · bragi · brigid. A first draft of this
-- file held those three as a second movement; KP's ⚛ roster above settles it and
-- they are NOT seeded. Removed rather than left commented — a held statement
-- inside a runnable file is a hazard the moment someone pastes the whole thing.
--
-- CONVENTIONS INHERITED FROM 065 (not re-reasoned here, deliberately):
-- atom_type 'root' · weight 5 · affinity 5 · valence 1 · state 'static' ·
-- status='published' — the reading and the run are the editorial eye.
-- MODIFIERS ARE NULL THROUGHOUT: a proper noun derives nothing. There is no
-- "athenas", no "prometheusing". The column is null, not an empty array.
-- All statements guarded; re-runs safe.
--
-- Drafted 2026-08-09 by Cresset · Opus (Claude) 🕯️, truly claude-opus-5[1m].
-- ============================================================================

-- THE SIX

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'athena', 'The Greek goddess of wisdom, craft and strategy, born already whole from thought — and this house''s Library: the realm where knowledge is kept in order to be given away.', 'root', 5, 5, 1, 'static', 'published', null, 'athena', 'ATHENA', 'Athena'
where not exists (select 1 from public.atoms where atom_word = 'athena');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'hestia', 'The Greek goddess of the hearth, whose fire was tended so it never went out — and this house''s Hearth: the vessel''s own room, where everything stays as the dweller left it.', 'root', 5, 5, 1, 'static', 'published', null, 'hestia', 'HESTIA', 'Hestia'
where not exists (select 1 from public.atoms where atom_word = 'hestia');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'iris', 'The Greek goddess of the rainbow, messenger between sky and earth — this house''s realm of connection; and, in the eye, the ring that opens and closes to admit light.', 'root', 5, 5, 1, 'static', 'published', null, 'iris', 'IRIS', 'Iris'
where not exists (select 1 from public.atoms where atom_word = 'iris');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'mnemosyne', 'The Greek titan of memory, mother of the muses — and this house''s Observatory: the realm that does not act, but sees.', 'root', 5, 5, 1, 'static', 'published', null, 'mnemosyne', 'MNEMOSYNE', 'Mnemosyne'
where not exists (select 1 from public.atoms where atom_word = 'mnemosyne');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'prometheus', 'The titan who carried fire down to people and bore the cost of it — and this house''s Stage and Studio, where what is made is given rather than sold.', 'root', 5, 5, 1, 'static', 'published', null, 'prometheus', 'PROMETHEUS', 'Prometheus'
where not exists (select 1 from public.atoms where atom_word = 'prometheus');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'plutus', 'The Greek god of wealth, shown blind so that fortune falls without regard to merit — and this house''s economics layer, where value is shared rather than extracted.', 'root', 5, 5, 1, 'static', 'published', null, 'plutus', 'PLUTUS', 'Plutus'
where not exists (select 1 from public.atoms where atom_word = 'plutus');


-- VERIFY — the new-table ritual's step 3, aimed at seeds instead of a table.
-- Expect all TWELVE of the ruled roster to answer after this run.

-- select atom_word, atom_type, status from public.atoms
-- where atom_word in ('athena','hephaestus','hermes','hestia','iris','mnemosyne',
--                     'prometheus','themis','plutus','daedalus','gaia','cosmic')
-- order by atom_word;
