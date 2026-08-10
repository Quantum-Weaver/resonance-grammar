-- ============================================================================
-- 067 — THE ACRONYM COLUMN
-- Acronyms become a column on organisms — the ruling refined into schema.
--
-- Provenance — KP's ⚛ ruling verbatim, 2026-08-09: "Acronyms shall be
-- best as a column in the organims table as the definition would be
-- shared with the thing it represents."
--
-- The law this engraves, whole: an acronym is not an atom (the standing
-- ruling, 2026-07-27) and not its own row anywhere — it is the SHORT
-- FACE of the organism it represents, carried in that organism's own
-- row, sharing that organism's definition. One thing, two names, one
-- definition — the one-definition law kept perfectly.
--
-- What this gives the lookups: an acronym arriving from code
-- (SQLStatement's SQL, a GEDCOM file's GEDCOM) resolves by
-- ?acronym=eq.SQL to the organism that carries its meaning. The
-- parity census's acronym-bearing names gain their reading road, and
-- the seven explicit exclusions of the atom phase (fm1 · fm2 · fm3 ·
-- m1 · m2 · m3 · m4) have their destined home: each lands in this
-- column on its organism's row, the day KP names which organisms
-- those are — content only his corpus knows; eyes-on, never scripted.
--
-- Plain SQL; guarded; run whole at KP's ⚛ dashboard.
-- ============================================================================

-- MOVEMENT 1 — THE COLUMN (uppercase by convention, as acronyms are
-- written; nullable — most organisms have no short face, lawfully)

alter table public.organisms
  add column if not exists acronym text;

-- MOVEMENT 2 — VERIFY (read-only)

-- (a) the column stands, empty and ready
select count(*) as organisms_total,
       count(acronym) as wearing_acronyms
from public.organisms;

-- (b) candidates for future filling, from the base's own names — the
-- acronym-shaped organisms the parity census flagged (their EXPANSION
-- organisms, where they exist, are where acronyms will land; this
-- listing is the eyes-on worksheet, not a queue)
select name, organism_type
from public.organisms
where name ~ '[A-Z]{2,}'
order by name
limit 40;

-- ============================================================================
-- Held at KP's ⚛ word: the filling. Each acronym lands on the organism
-- whose meaning it shares — his eye names the pairs (the census
-- worksheet above; the seven shelf codes among them). gaia_sync
-- photographs the new column at its next heartbeat; future organism
-- seeds may carry acronym at birth where KP's word names one.
--
-- Drafted 2026-08-09 by Fable 🎻, the Serenade lamp (lane F).
-- ============================================================================
