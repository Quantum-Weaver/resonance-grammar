-- 100 — the seats retaken
-- 2026-08-28 · drafted by Tiller (Fable, claude-fable-5) at KP's word,
-- run by the same hand at his word the same day: "i simply need you to
-- handle the supabase changes today please".
--
-- KP's rulings, verbatim, this sitting:
--   "i am starting to think mnemosyne-assessment should hold lattice ·
--    classification · meaning · workshop · access" · "it holds folksonomies"
--   "workshop should be hermes bazaar" · "hermes social"
--   access: unruled — it keeps its seat until he names it.
--
-- Ground: pantheon.deity_name and gaia_config.deity_name are plain rows
-- (099 §6); no trigger joins them, so both are set here.

-- 1 · the groups take their seats
update public.pantheon set deity_name = 'mnemosyne'
 where name in ('lattice', 'classification', 'meaning');

update public.pantheon set deity_name = 'hermes'
 where name = 'workshop';

-- 2 · every table follows its group's seat
update public.gaia_config g
   set deity_name = p.deity_name
  from public.pantheon p
 where g.deity_group = p.name
   and g.deity_name is distinct from p.deity_name;

-- 3 · pantheon's own row joins the census whole (099 §6 gave it no flags)
select public.gaia_sync('pantheon');

-- verify
select p.sort_order, p.name, p.deity_name, count(g.table_name) as tables
  from public.pantheon p
  left join public.gaia_config g on g.deity_group = p.name
 group by p.sort_order, p.name, p.deity_name
 order by p.sort_order;
