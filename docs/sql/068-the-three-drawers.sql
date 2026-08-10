-- ============================================================================
-- 068 — THE THREE DRAWERS
-- molecule_type gains constant_name · component_name · class_name, at
-- KP's ⚛ stroke (2026-08-09: "1- yes" to the season's mapping — the
-- library's constants, components, and classes deserve true drawers
-- rather than ill-fitting ones).
--
-- Run BEFORE the molecule seeder fires — the wave's rows wear these
-- labels. Plain SQL; each guarded; run whole at the dashboard.
-- ============================================================================

alter type public.molecule_type add value if not exists 'constant_name';
alter type public.molecule_type add value if not exists 'component_name';
alter type public.molecule_type add value if not exists 'class_name';

-- VERIFY (read-only): the enum's full membership after
select e.enumlabel
from pg_type t join pg_enum e on e.enumtypid = t.oid
where t.typname = 'molecule_type'
order by e.enumsortorder;
