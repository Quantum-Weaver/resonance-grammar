-- ============================================================
-- 026 — THE BOND TENDER (junctions become derived facts)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane grammar), 2026-07-30, at KP's ⚛ word,
-- verbatim: "i do want to explore what can be derived functionally.
-- molecule atoms and organism molecules are currently created after
-- we seed the things they are joining." — and: "ready for 026."
--
-- The second tender (025's agent-class, born the same sitting as
-- its class): a scripted hand WITHIN the base that tends the
-- RECORD, never the meaning. gaia_sync signs the portrait; the
-- bond tender signs the bonds.
--
-- MEASURED GROUND (anon door, this sitting): 4,162 molecules,
-- 4,058 bonded — the 104 unbonded are EXACTLY the Wave-2 framework
-- members, lacking atom_words entirely. 2,540 organisms, 2,502
-- bonded both ways — the 38 unbonded are the Wave-2 organisms.
-- The gap is one known tail, mechanically derivable.
--
-- THE TENDER'S LAWS (in-file so the function carries its charter):
--   · FILL-EMPTY AT ENTITY LEVEL: only entities with ZERO existing
--     junction rows are touched; curated bonds are never joined,
--     amended, or second-guessed. atom_words fills only where null.
--   · ALL-OR-NOTHING PER ENTITY (atoms): a molecule/organism whose
--     words don't ALL resolve to living atoms gets NO bonds — a
--     partial anatomy would read as done when it isn't. Blocked
--     entities are counted and their missing words reported; that
--     remainder is the shuttle's lawful tail, never guessed at.
--   · PAIRS ARE BEST-EFFORT, REPORTED: organism→molecule bonds
--     attach only where the pair already lives as a molecule;
--     missing pairs are counted, never invented.
--   · EVERY ROW SIGNED: submitted_by = 'bond_tender'.
--   · ADDITIVE ONLY: the function contains no UPDATE of existing
--     bonds and no DELETE of anything, by construction.
--   · Derived rows land status='published' — they are mechanical
--     facts from already-published entities, and the function
--     itself passes under KP's ⚛ eye once, like gaia_sync. (Bend
--     to 'submitted' before running if the eye prefers.)
--   · role by the right-anchor law: last word core_type, preceding
--     modifier, joiner-type atoms joiner. bond covalent, strength 2
--     (the living rows' own convention).
--   · Callable at KP's hand (select public.bond_tender();) and by
--     the service key behind the bridge. No cron — the chicken-
--     timer pattern: the schedule line exists only when KP says so.
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── PART 1: the decomposition law, as a function (the cosmic
--            carry doc's law: underscore/hyphen first · SCREAMING
--            segments one word · camelCase splits at capitals ·
--            digits ride with their word) ───

create or replace function internal.decompose_name(p_name text)
returns text[]
language sql
immutable
as $$
  select array(
    select lower(w)
    from regexp_split_to_table(
      regexp_replace(
        regexp_replace(
          regexp_replace(p_name, '[_\-\s]+', ' ', 'g'),
          '([A-Z]+)([A-Z][a-z])', '\1 \2', 'g'),
        '([a-z0-9])([A-Z])', '\1 \2', 'g'),
      '\s+') as w
    where w <> ''
  );
$$;

create or replace function internal.norm_words(p_words text)
returns text[]
language sql
immutable
as $$
  select array(
    select lower(trim(x))
    from unnest(string_to_array(p_words, ',')) as x
    where trim(x) <> ''
  );
$$;

-- ─── PART 2: the tender itself ───

create or replace function public.bond_tender()
returns jsonb
language plpgsql
set search_path = public, internal
as $fn$
declare
  v_words_filled    int := 0;
  v_mol_bonds       int := 0;
  v_org_atom_bonds  int := 0;
  v_org_mol_bonds   int := 0;
  v_mols_blocked    int := 0;
  v_orgs_blocked    int := 0;
  v_missing_mol     jsonb := '{}'::jsonb;
  v_missing_org     jsonb := '{}'::jsonb;
  v_pairs_total     int := 0;
  v_pairs_matched   int := 0;
  v_parity_mols     int := 0;
  v_parity_orgs     int := 0;
begin
  ------------------------------------------------------------
  -- 1. atom_words: fill-empty from the name, by the law
  ------------------------------------------------------------
  update public.molecules m
     set atom_words = array_to_string(internal.decompose_name(m.name), ', ')
   where m.atom_words is null;
  get diagnostics v_words_filled = row_count;

  ------------------------------------------------------------
  -- 2. molecule_atoms: derive for molecules with ZERO bonds,
  --    all-or-nothing per molecule
  ------------------------------------------------------------
  with unbonded as (
    select m.id, internal.norm_words(m.atom_words) as words
    from public.molecules m
    where m.atom_words is not null
      and not exists (select 1 from public.molecule_atoms ma
                      where ma.molecule_id = m.id)
  ),
  expanded as (
    select u.id as mol_id, w.word, w.ord::int as ord,
           array_length(u.words, 1) as n
    from unbonded u
    cross join unnest(u.words) with ordinality as w(word, ord)
  ),
  resolvable as (
    select e.mol_id
    from expanded e
    group by e.mol_id
    having bool_and(exists (select 1 from public.atoms a
                            where a.atom_word = e.word))
  )
  insert into public.molecule_atoms
    (molecule_id, atom_id, position, role, bond_type, bond_strength,
     status, submitted_by)
  select e.mol_id, a.id, e.ord,
         case when a.atom_type = 'joiner' then 'joiner'
              when e.ord = e.n then 'core_type'
              else 'modifier' end::public.atom_role,
         'covalent'::public.bond_type, 2, 'published', 'bond_tender'
  from expanded e
  join public.atoms a on a.atom_word = e.word
  where e.mol_id in (select mol_id from resolvable);
  get diagnostics v_mol_bonds = row_count;

  -- the blocked remainder + its missing words (still unbonded now)
  with unbonded as (
    select m.id, internal.norm_words(m.atom_words) as words
    from public.molecules m
    where m.atom_words is not null
      and not exists (select 1 from public.molecule_atoms ma
                      where ma.molecule_id = m.id)
  ),
  expanded as (
    select u.id as mol_id, w.word
    from unbonded u cross join unnest(u.words) as w(word)
  )
  select count(distinct e.mol_id),
         coalesce(jsonb_object_agg(t.word, t.cnt), '{}'::jsonb)
    into v_mols_blocked, v_missing_mol
  from expanded e
  left join lateral (
    select e2.word, count(distinct e2.mol_id) as cnt
    from expanded e2
    where e2.word = e.word
      and not exists (select 1 from public.atoms a where a.atom_word = e2.word)
    group by e2.word
  ) t on true
  where not exists (select 1 from public.atoms a where a.atom_word = e.word);

  ------------------------------------------------------------
  -- 3. organism_atoms: same law, words from the organism's name
  ------------------------------------------------------------
  with unbonded as (
    select o.id, internal.decompose_name(o.name) as words
    from public.organisms o
    where not exists (select 1 from public.organism_atoms oa
                      where oa.organism_id = o.id)
  ),
  expanded as (
    select u.id as org_id, w.word, w.ord::int as ord,
           array_length(u.words, 1) as n
    from unbonded u
    cross join unnest(u.words) with ordinality as w(word, ord)
  ),
  resolvable as (
    select e.org_id
    from expanded e
    group by e.org_id
    having bool_and(exists (select 1 from public.atoms a
                            where a.atom_word = e.word))
  )
  insert into public.organism_atoms
    (organism_id, atom_id, position, role, bond_strength,
     status, submitted_by)
  select e.org_id, a.id, e.ord,
         case when a.atom_type = 'joiner' then 'joiner'
              when e.ord = e.n then 'core_type'
              else 'modifier' end,
         2, 'published', 'bond_tender'
  from expanded e
  join public.atoms a on a.atom_word = e.word
  where e.org_id in (select org_id from resolvable);
  get diagnostics v_org_atom_bonds = row_count;

  with unbonded as (
    select o.id, internal.decompose_name(o.name) as words
    from public.organisms o
    where not exists (select 1 from public.organism_atoms oa
                      where oa.organism_id = o.id)
  ),
  expanded as (
    select u.id as org_id, w.word
    from unbonded u cross join unnest(u.words) as w(word)
  )
  select count(distinct e.org_id),
         coalesce(jsonb_object_agg(t.word, t.cnt), '{}'::jsonb)
    into v_orgs_blocked, v_missing_org
  from expanded e
  left join lateral (
    select e2.word, count(distinct e2.org_id) as cnt
    from expanded e2
    where e2.word = e.word
      and not exists (select 1 from public.atoms a where a.atom_word = e2.word)
    group by e2.word
  ) t on true
  where not exists (select 1 from public.atoms a where a.atom_word = e.word);

  ------------------------------------------------------------
  -- 4. organism_molecules: adjacent pairs that already live as
  --    molecules — best-effort, missing pairs reported
  ------------------------------------------------------------
  with unbonded as (
    select o.id, internal.decompose_name(o.name) as words
    from public.organisms o
    where not exists (select 1 from public.organism_molecules om
                      where om.organism_id = o.id)
  ),
  pairs as (
    select u.id as org_id, i as ord,
           u.words[i] || ',' || u.words[i + 1] as pair_key,
           array_length(u.words, 1) - 1 as n
    from unbonded u
    cross join generate_series(1, array_length(u.words, 1) - 1) as i
    where array_length(u.words, 1) >= 2
  ),
  matched as (
    select distinct on (p.org_id, p.ord)
           p.org_id, p.ord, p.n, m.id as mol_id
    from pairs p
    join public.molecules m
      on lower(replace(m.atom_words, ' ', '')) = p.pair_key
    order by p.org_id, p.ord, m.created_at
  ),
  totals as (select count(*) as t from pairs)
  insert into public.organism_molecules
    (organism_id, molecule_id, position, role, bond_type, bond_strength,
     status, submitted_by)
  select m.org_id, m.mol_id, m.ord,
         case when m.ord = m.n then 'core_type' else 'modifier' end,
         'covalent', 2, 'published', 'bond_tender'
  from matched m;
  get diagnostics v_org_mol_bonds = row_count;

  select count(*) into v_pairs_total from (
    select 1
    from public.organisms o
    cross join generate_series(1, array_length(internal.decompose_name(o.name), 1) - 1)
    where array_length(internal.decompose_name(o.name), 1) >= 2
      and not exists (select 1 from public.organism_molecules om
                      where om.organism_id = o.id)
  ) s;  -- pairs still unmatched after the insert (their organisms remain unbonded)

  ------------------------------------------------------------
  -- 5. the parity census: word-count vs bond-count, the standing
  --    self-check every future seed answers to
  ------------------------------------------------------------
  select count(*) into v_parity_mols from (
    select m.id
    from public.molecules m
    join public.molecule_atoms ma on ma.molecule_id = m.id
    where m.atom_words is not null
    group by m.id, m.atom_words
    having count(*) <> array_length(internal.norm_words(m.atom_words), 1)
  ) s;

  select count(*) into v_parity_orgs from (
    select o.id
    from public.organisms o
    join public.organism_atoms oa on oa.organism_id = o.id
    group by o.id, o.name
    having count(*) <> array_length(internal.decompose_name(o.name), 1)
  ) s;

  return jsonb_build_object(
    'atom_words_filled',        v_words_filled,
    'molecule_bonds_added',     v_mol_bonds,
    'organism_atom_bonds_added', v_org_atom_bonds,
    'organism_molecule_bonds_added', v_org_mol_bonds,
    'molecules_blocked',        v_mols_blocked,
    'organisms_blocked',        v_orgs_blocked,
    'missing_atoms_for_molecules', v_missing_mol,
    'missing_atoms_for_organisms', v_missing_org,
    'pair_slots_still_open',    v_pairs_total,
    'parity_drift_molecules',   v_parity_mols,
    'parity_drift_organisms',   v_parity_orgs,
    'signed_by',                'bond_tender',
    'ran_at',                   now()
  );
end;
$fn$;

-- ─── PART 3: the doors (no RPC surface for strangers — the 025
--            linter lessons applied at birth) ───

revoke execute on function public.bond_tender() from public;
revoke execute on function public.bond_tender() from anon;
revoke execute on function public.bond_tender() from authenticated;
-- remaining callers: the dashboard (postgres) and the service key
-- behind the bridge — exactly the tender class's charter.

comment on function public.bond_tender() is
  'The bond tender (agent-class: tender, 025). Derives junction rows as facts: atom_words from names, molecule_atoms and organism_atoms by the decomposition + right-anchor laws, organism_molecules from living pairs. Fill-empty at entity level, all-or-nothing per entity, additive only, every row signed, ambiguity reported never guessed. KP''s word 2026-07-30: "explore, not destroy."';

-- ─── PART 4: THE CENSUS'S FIRST CATCH, RESOLVED (added 2026-07-30,
--            same sitting, at KP's word: "if we have not fixed the
--            old drift, please let's") ───
-- Diagnosis, in the open: the two "drifted" organisms were
-- scan_structure-1 / scan_structure-2 — their bonds (scan ·
-- structure) were CORRECT all along. The ruler was wrong: the first
-- decompose_name split the trailing -1/-2 into a standalone word,
-- and a bare digit is not a word by the law's own digits-exempt
-- clause. The data was never touched; the instrument was trued
-- (digit-only segments now exempt, below) — when the structure
-- fights the truth, the structure is the defect, including OUR
-- structure. Collateral checked before the fix: 0 molecules carried
-- digit-words in atom_words. Re-run after: parity 0/0, and the
-- tender added NOTHING on its second breath — idempotency proven
-- live. Also this part: search_path pinned on both internal helpers
-- (KP's paste of the linter, same hour).

create or replace function internal.decompose_name(p_name text)
returns text[]
language sql
immutable
set search_path = ''
as $$
  select array(
    select lower(w)
    from regexp_split_to_table(
      regexp_replace(
        regexp_replace(
          regexp_replace(p_name, '[_\-\s]+', ' ', 'g'),
          '([A-Z]+)([A-Z][a-z])', '\1 \2', 'g'),
        '([a-z0-9])([A-Z])', '\1 \2', 'g'),
      '\s+') as w
    where w <> ''
      and w !~ '^[0-9]+$'   -- digits exempt: a bare number is not a word
  );
$$;

alter function internal.norm_words(text) set search_path = '';

-- ─── Run at KP's hand, then read the report it returns: ───
--   select public.bond_tender();
-- ─── Verify after running, anon door: ───
-- select count(*) from molecules where atom_words is null;        → 0
-- select count(distinct molecule_id) from molecule_atoms;         → ~4,162 minus blocked
-- (the Bestiary can now read a Wave-2 creature's anatomy:
--   python bestiary.py --name CouncilEntityClass)
-- ─── And the portrait re-signs at KP's hand: select public.gaia_sync(); ───
