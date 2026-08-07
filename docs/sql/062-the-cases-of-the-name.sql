-- ============================================================================
-- 062 — THE CASES OF THE NAME
-- Every atom, molecule, and organism wears its name in every lawful case.
--
-- Provenance — KP's ⚛ words verbatim, 2026-08-06 evening, the Serenade
-- lamp's sitting:
--   "the schema change i want to include is columns in molecules and
--    organisms for all the different cases SCREAMING_CASE, snake_case,
--    kebab-case, camelCase, PascalCase and with atoms we just need
--    SCREAMING_CASE, snake_case, and PascalCase"
--   "then let us do it, be certain we document the change in seeding
--    atoms, molecules and organisms and please check for existing
--    triggers and functions that may be affected."
--
-- Why atoms take three: an atom is a single word by law, and one word
-- renders identically in snake, kebab, and camel — three cases cover it
-- whole. Why these columns exist at all: the Grammar's first law (defined
-- once, referenced everywhere) — every consumer today re-derives casings
-- in its own code; after this paper the base itself answers "does the
-- Grammar hold mood_event?" in any convention, one indexed lookup.
--
-- Ground truth probed LIVE 2026-08-06 ~19:40–20:00 CDT (lesson 8 of the
-- BASE-ACCESS-GUIDE; nothing below asserted from photographs):
--   · atoms 1,998 · molecules 4,199 (atom_words filled 4,199/4,199) ·
--     organisms 2,541 (2,531 with ordered bonds · 10 bond-less, reported
--     below, eyes-on)
--   · both junctions carry position — word ORDER is preserved ground
--   · naming_convention enum labels, from the base's own registry:
--     snake_case · PascalCase · SCREAMING_CASE · camelCase · kebab-case
--     (exactly the five; the vocabulary was waiting for its columns)
--   · organisms hold mixed-convention names (MultiStreamBeing beside
--     LABEL_DISABLED_OPACITY) — so renderings derive from the ordered
--     bonds, NEVER by re-splitting the name.
--
-- AFFECTED MACHINERY — the census KP asked for, taken live:
--   · atoms wear FOUR triggers: trg_atom_category_sync (BEFORE INS/UPD) ·
--     trg_atom_insert (AFTER INS) · trg_atom_word_update (AFTER UPD) ·
--     trg_atoms_updated_at (BEFORE UPD). The atom backfill below fires
--     the UPDATE three on all 1,998 rows — hence MOVEMENT 0's pre-flight:
--     the bodies are not readable through the anon door; your eye clears
--     them before the batch.
--   · molecules: only trg_molecules_updated_at. organisms: NO triggers.
--   · RPCs: bond_tender (fills atom_words/derived_name — named the
--     tending hand for these columns going forward, see THE SEEDING LAW)
--     · gaia_sync (the columns registry photographs the new columns at
--     its next heartbeat; last_seen reads 08:00 daily).
--   · the bridge (grammar.ts): all seven tools select explicit columns —
--     additive columns break nothing; a later enhancement may ADD the
--     case columns to query_molecule/query_organism at KP's word.
--   · listening/ scripts: select=* or narrow lists, read-only — safe.
--
-- Run order: each movement alone, in order, at KP's ⚛ dashboard.
-- Plain SQL throughout — no DO blocks (000's lesson 2).
-- No new tables → no RLS ritual owed; existing policies cover new columns.
-- ============================================================================


-- MOVEMENT 0 — PRE-FLIGHT (read-only, for KP's eye before any batch)
-- The three atom trigger bodies the anon door cannot show. Clear them,
-- then proceed: the backfill in MOVEMENT 2 fires them on every atom row.

select proname, prosrc
from pg_proc
where proname in ('on_atom_category_sync', 'on_atom_insert',
                  'on_atom_word_update', 'update_updated_at_column');

-- Also for the eye: any atom violating the single-word law (expected 0;
-- a non-empty result wants a ruling before its renderings are trusted).

select id, atom_word
from public.atoms
where atom_word ~ '[^a-z0-9]';


-- MOVEMENT 1 — THE COLUMNS (plain text; renderings are facts, kept
-- overridable for the acronym ruling's eyes-on rows — deliberately NOT
-- generated columns)

alter table public.atoms
  add column if not exists screaming_case text,
  add column if not exists snake_case     text,
  add column if not exists pascal_case    text;

alter table public.molecules
  add column if not exists screaming_case text,
  add column if not exists snake_case     text,
  add column if not exists kebab_case     text,
  add column if not exists camel_case     text,
  add column if not exists pascal_case    text;

alter table public.organisms
  add column if not exists screaming_case text,
  add column if not exists snake_case     text,
  add column if not exists kebab_case     text,
  add column if not exists camel_case     text,
  add column if not exists pascal_case    text;


-- MOVEMENT 2 — ATOMS BACKFILL (single words: three pure renderings)
-- Fires trg_atom_word_update + trg_atom_category_sync on every row —
-- MOVEMENT 0's clearance first. updated_at restamps; that is true history.

update public.atoms
set snake_case     = lower(atom_word),
    screaming_case = upper(atom_word),
    pascal_case    = initcap(atom_word)
where snake_case is null;


-- MOVEMENT 3 — MOLECULES BACKFILL
-- From atom_words, the tender's own stored ground ('ask, user') — the
-- words are already separated; no name-splitting, no acronym hazard.

update public.molecules m
set snake_case     = w.snake,
    kebab_case     = replace(w.snake, '_', '-'),
    screaming_case = upper(w.snake),
    pascal_case    = w.pascal,
    camel_case     = lower(left(w.pascal, 1)) || substr(w.pascal, 2)
from (
  select m2.id,
         string_agg(lower(t.word),   '_' order by t.ord) as snake,
         string_agg(initcap(t.word), ''  order by t.ord) as pascal
  from public.molecules m2,
       lateral unnest(regexp_split_to_array(m2.atom_words, '\s*,\s*'))
         with ordinality as t(word, ord)
  group by m2.id
) w
where w.id = m.id
  and m.snake_case is null;


-- MOVEMENT 4 — ORGANISMS BACKFILL
-- From the ordered bonds (organism_atoms.position joined to atom_word) —
-- convention-independent: MultiStreamBeing and LABEL_DISABLED_OPACITY
-- both render truly from their words. The 10 bond-less organisms stay
-- NULL here, honestly, and are reported by name in MOVEMENT 5.

update public.organisms o
set snake_case     = w.snake,
    kebab_case     = replace(w.snake, '_', '-'),
    screaming_case = upper(w.snake),
    pascal_case    = w.pascal,
    camel_case     = lower(left(w.pascal, 1)) || substr(w.pascal, 2)
from (
  select oa.organism_id as id,
         string_agg(lower(a.atom_word),   '_' order by oa.position) as snake,
         string_agg(initcap(a.atom_word), ''  order by oa.position) as pascal
  from public.organism_atoms oa
  join public.atoms a on a.id = oa.atom_id
  group by oa.organism_id
) w
where w.id = o.id
  and o.snake_case is null;


-- MOVEMENT 5 — THE HONEST REPORTS (read-only; results belong in the
-- session record beside this file's run)

-- (a) coverage, all three tiers
select 'atoms' as tier,
       count(*) filter (where snake_case is null) as unfilled,
       count(*) as total
from public.atoms
union all
select 'molecules',
       count(*) filter (where snake_case is null),
       count(*)
from public.molecules
union all
select 'organisms',
       count(*) filter (where snake_case is null),
       count(*)
from public.organisms;

-- (b) the bond-less organisms, by name, for eyes (census said ten)
select name, organism_type, status
from public.organisms
where snake_case is null
order by name;

-- (c) THE PARITY CENSUS — rows whose written name matches NONE of their
-- five renderings: acronym extensions (KP's ruling: acronyms are
-- extensions of organisms, eyes-on never scripted), spacing oddities, or
-- word/bond drift (the bond tender's census caught 2 such organisms at
-- its first run). Reported for KP's eye; never auto-mended.

select 'molecule' as tier, m.name, m.naming_convention::text as convention,
       m.snake_case, m.pascal_case
from public.molecules m
where m.snake_case is not null
  and m.name not in (m.snake_case, m.kebab_case, m.camel_case,
                     m.pascal_case, m.screaming_case)
union all
select 'organism', o.name, null,
       o.snake_case, o.pascal_case
from public.organisms o
where o.snake_case is not null
  and o.name not in (o.snake_case, o.kebab_case, o.camel_case,
                     o.pascal_case, o.screaming_case)
order by tier, name;


-- MOVEMENT 6 — INDEX OFFERS (commented; KP's ⚛ stroke uncomments when a
-- lookup road wants them — the columns are useful without, the indexes
-- make them O(log n) doors)

-- create index if not exists idx_atoms_snake      on public.atoms (snake_case);
-- create index if not exists idx_molecules_snake  on public.molecules (snake_case);
-- create index if not exists idx_molecules_pascal on public.molecules (pascal_case);
-- create index if not exists idx_organisms_snake  on public.organisms (snake_case);
-- create index if not exists idx_organisms_pascal on public.organisms (pascal_case);


-- ============================================================================
-- THE SEEDING LAW (documented here at KP's ⚛ word; mirrored on the
-- REALM-BUS, the CHECKLIST, and the lattice seeding plan):
--
--   From 062 forward, every seed that births an ATOM fills its three
--   case columns (screaming_case · snake_case · pascal_case — three
--   renderings of the one word), and every seed that births a MOLECULE
--   or ORGANISM fills all five (+ kebab_case · camel_case).
--
--   Renderings derive from the constituent words IN BOND ORDER —
--   molecules from atom_words, organisms from organism_atoms.position —
--   never by re-splitting the written name.
--
--   The acronym ruling stands whole: where a name carries an acronym,
--   the word-derived rendering stands in the columns and the row shows
--   in the parity census for KP's eye. Eyes-on, never scripted.
--
--   The bond tender is the named tending hand: its next forging learns
--   to fill absent case columns as facts, signed bond_tender, exactly
--   as it fills atom_words and derived_name today.
--
--   gaia_sync photographs the new columns at its next heartbeat; the
--   types gaia pours at the gate ("finished" is KP's word) carry them.
--
-- POST-RUN VERIFY (the ritual's spirit — through the PUBLIC door):
--   curl "$URL/rest/v1/molecules?select=name,snake_case,kebab_case&limit=3"
--   with the anon key: the columns visible, the renderings true.
--
-- Drafted 2026-08-06 by Fable 🎻, the Serenade lamp (lane F), from the
-- living base; run at KP's ⚛ dashboard, at his word alone.
-- ============================================================================
