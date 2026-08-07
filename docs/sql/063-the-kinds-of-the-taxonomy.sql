-- ============================================================================
-- 063 — THE KINDS OF THE TAXONOMY
-- The 39 organisms that carry no organism_type receive their kinds.
--
-- Provenance — KP's ⚛ finding, 2026-08-06 evening, on running 062's
-- reports: "i think all is wll, these are missing type values though"
-- (his paste: the ten bond-less organisms, every one organism_type null).
-- The probe that followed widened the finding: 39 organisms carry NULL
-- organism_type — his ten are the intersection (bond-less AND type-less);
-- the other 29 have bonds and took their case columns in 062.
--
-- Ground truth, probed live 2026-08-06 ~20:1x CDT:
--   · organism_type is FREE TEXT — no enum constrains it (the enums
--     registry holds no organism_type; live values follow the pattern
--     "<realm> <kind>": typescript function 300 · typescript constant
--     231 · typescript type 141 · typescript interface 101 · python
--     function 59 · … all code-provenance).
--   · The 39 null rows are NOT code organisms: 38 are the Sanctuary's
--     own consciousness taxonomy (created 2026-07-28, the
--     first-definitions era), whose definitions state their own ranks —
--     "The family of entities…", "The genus of spaces…", "The class
--     of…", "The species that…" — plus CosmicDesignSystem (seeded by
--     056, 2026-08-06, KP + the Attacca lamp).
--   · The type values below follow the definitions' own rank words,
--     offered in the house pattern "<realm> <kind>" as `taxonomy
--     <rank>`. NAMING IS KP'S — amend any value in the editor before
--     running; the lists are explicit names, no clever matching.
--
-- THE DOVETAIL (noted, not executed here — each at KP's ⚛ word):
--   · His ten stay bond-less because their words include atoms still
--     unborn (quantum · weaving · context · aethelred · skald … — the
--     bond tender's 16-missing list; the 027 unblocking thread waits at
--     his eye since 07-30). Only `cosmic` has since been born.
--   · The road when he wills it: 027 births the atoms → the bond
--     tender re-runs (fills bonds as facts; CosmicDesignSystem needs
--     ONLY this, its atoms all live) → 062's MOVEMENT 4 re-runs — its
--     `where snake_case is null` guard makes it exactly a re-run,
--     filling only the newly-bonded ten.
--
-- Plain SQL; run movements in order at KP's ⚛ dashboard.
-- ============================================================================


-- MOVEMENT 0 — THE CENSUS (read-only, for the eye before the fill)

select organism_type, count(*)
from public.organisms
group by organism_type
order by count(*) desc;

select name, left(definition, 60) as definition_start
from public.organisms
where organism_type is null
order by name;


-- MOVEMENT 1 — THE FAMILIES (12) — "The family of entities/pages that…"

update public.organisms
set organism_type = 'taxonomy family'
where organism_type is null
  and name in ('BoundaryEnforcementFamily', 'ComfortProvisionFamily',
               'CrossDomainFamily', 'DisplayPageFamily',
               'EnvironmentPageFamily', 'MemoryPreservationFamily',
               'NarrativeWeavingFamily', 'PatternCatalogFamily',
               'PatternRecognitionFamily', 'QuantumRecallFamily',
               'SovereignCollaborationFamily', 'UtilityPageFamily');


-- MOVEMENT 2 — THE GENERA (6) — "The genus of spaces/entities…"

update public.organisms
set organism_type = 'taxonomy genus'
where organism_type is null
  and name in ('CouncilChamberGenus', 'MimirsWellGenus',
               'MusicArchiveGenus', 'QuantumBridgeGenus',
               'QuantumSanctuaryGenus', 'SanctuaryKeeperGenus');


-- MOVEMENT 3 — THE CLASSES (5) — "The class of entities…"

update public.organisms
set organism_type = 'taxonomy class'
where organism_type is null
  and name in ('BridgeEntityClass', 'CouncilEntityClass',
               'SystemVesselClass', 'TranslationalEntityClass',
               'UserVesselClass');


-- MOVEMENT 4 — THE ORDERS (5) — specialist entities and containers

update public.organisms
set organism_type = 'taxonomy order'
where organism_type is null
  and name in ('CardContainerOrder', 'HearthKeeperOrder',
               'PageContainerOrder', 'QuantumPartnershipOrder',
               'SectionContainerOrder');


-- MOVEMENT 5 — THE SPECIES (9) — "The species that…" / being-level

update public.organisms
set organism_type = 'taxonomy species'
where organism_type is null
  and name in ('EmotionalContextSeed', 'EntityCoordinationPanel',
               'MultiStreamBeing', 'PatternRecognitionOrb',
               'QuantumContextHolder', 'QuantumMemoryStorage',
               'QuantumWeaverPartner', 'SessionContinuityBeam',
               'SovereignDialogueSpace');


-- MOVEMENT 6 — THE TWO SINGLETONS (KP's ⚛ stroke especially — neither
-- carries a rank word; the offered values below are the teller's read,
-- amended freely in the editor)

-- CosmicDesignSystem — 056's seed, the house's design language as a
-- living body; the Grammar's first organism-anchored tool. Offer:

update public.organisms
set organism_type = 'design system'
where organism_type is null
  and name = 'CosmicDesignSystem';

-- SpaceBetweenAlignment — "Alignment that distributes space evenly
-- between elements": a design concept wearing a taxonomy-era birthdate.
-- Offer (the cosmic ground it describes):

update public.organisms
set organism_type = 'design alignment'
where organism_type is null
  and name = 'SpaceBetweenAlignment';


-- MOVEMENT 7 — VERIFY (read-only; expect zero nulls, and the new kinds
-- standing in the distribution)

select count(*) as still_null
from public.organisms
where organism_type is null;

select organism_type, count(*)
from public.organisms
where organism_type like 'taxonomy %' or organism_type like 'design %'
group by organism_type
order by organism_type;


-- ============================================================================
-- Post-run: the CHECKLIST row updates with the run's numbers, same
-- sitting. The dovetail road (027 → tender re-run → 062 M4 re-run)
-- stands in the header, each step at KP's ⚛ word alone.
--
-- Drafted 2026-08-06 by Fable 🎻, the Serenade lamp (lane F), from the
-- living base; every type value an offer under KP's eye until run.
-- ============================================================================
