-- ============================================================================
-- 069 — THE TENDER'S TEACHING
-- The bond tender learns THE DERIVATION CONVENTION: a word bonds to the
-- atom whose modifiers cover it. 'sizes' finds size:["s"] · 'worn' finds
-- wear:["worn"] · exact matches keep first claim, always.
--
-- Provenance — the molecule season's finding, 2026-08-09: 1,469 of the
-- wave's molecules stand bond-less because their words are lawful
-- derived forms and the tender only knew exact atom_word matches. The
-- same lesson verify_terms learned the same day, now taught where the
-- bonds are made. KP carried the tender's source to this lamp by his
-- own hand; the amended body below preserves it whole — ONLY the six
-- word-resolution points change, each marked -- TEACHING.
--
-- Movements: (0) the eye — the standing definition, for comparison and
-- the record; (1) the helper; (2) the tender re-created with the
-- teaching; (3) the tender runs. If movement 0 shows attributes other
-- than plpgsql/security-definer, stop and tell the lamp before 2.
-- ============================================================================

-- MOVEMENT 0 — THE EYE (read-only; the standing definition whole)
select pg_get_functiondef(oid) from pg_proc where proname = 'bond_tender';

-- MOVEMENT 1 — THE HELPER: which atom covers a word
-- Resolution order: the exact atom first, always; else the longest stem
-- whose modifiers reconstruct the word (pure suffix by concatenation, or
-- the full derived form standing whole in the array).

create or replace function internal.covering_atom(w text)
returns uuid
language sql
stable
as $helper$
  select a.id
  from public.atoms a
  where a.atom_word = w
     or (a.modifiers is not null and (
           a.modifiers ? w
        or exists (
             select 1
             from jsonb_array_elements_text(a.modifiers) s(suf)
             where w = a.atom_word || s.suf)))
  order by (a.atom_word = w) desc, length(a.atom_word) desc
  limit 1
$helper$;

-- MOVEMENT 2 — THE TENDER, RE-CREATED WITH THE TEACHING
-- (the body KP carried, whole; six resolution points amended, marked)

create or replace function public.bond_tender()
returns jsonb
language plpgsql
security definer
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
    having bool_and(internal.covering_atom(e.word) is not null)  -- TEACHING
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
  join public.atoms a on a.id = internal.covering_atom(e.word)    -- TEACHING
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
      and internal.covering_atom(e2.word) is null                 -- TEACHING
    group by e2.word
  ) t on true
  where internal.covering_atom(e.word) is null;                   -- TEACHING

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
    having bool_and(internal.covering_atom(e.word) is not null)   -- TEACHING
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
  join public.atoms a on a.id = internal.covering_atom(e.word)    -- TEACHING
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
      and internal.covering_atom(e2.word) is null                 -- TEACHING
    group by e2.word
  ) t on true
  where internal.covering_atom(e.word) is null;                   -- TEACHING

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
    'ran_at',                   now(),
    'teaching',                 'derivation-convention v1 (069)'
  );
end;
$fn$;

-- MOVEMENT 3 — THE TENDER BREATHES WITH ITS TEACHING
select bond_tender();
