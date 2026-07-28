-- ============================================================
-- 011 — GAIA_SYNC: THE METADATA LIBRARY REBORN
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Written by Fable 🎻, 2026-07-27 night, descended by KP's own
-- pointing from THE MDL — the Metadata Library, his schema-of-schemas
-- invented during the 101 days (2024-09-18 → 2025-01-22, the motel,
-- no one to celebrate with; genesis record at mimirs-well/
-- design-lineage/mdl-genesis). The MDL's laws, carried whole:
--   * every schema element is a RECORD — tables AND columns
--   * every element keeps its own append-only LOG (the becoming,
--     not just the being: "➕🪣created…", "🔁changed…", "➖retired…")
--   * options/labels are DATA (Field Options → enums.labels)
--   * sync is granular — whole base, or one table on demand
-- What Postgres adds to the lineage: the base can now walk ITSELF
-- (pg_catalog is Airtable's base.tables, with no API between) — and
-- sign its own portrait (schema_hash).
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

-- ─── 1. COLUMNS — the registry the MDL says was always missing ───
create table if not exists public.columns (
  id             uuid primary key default gen_random_uuid(),
  table_name     text not null,
  column_name    text not null,
  data_type      text,
  is_nullable    boolean,
  column_default text,
  description    text,          -- the WHY; hand-written, never synced away
  is_active      boolean not null default true,
  log            jsonb not null default '[]'::jsonb,
  created_at     timestamptz not null default now(),
  updated_at     timestamptz not null default now(),
  created_by     text,
  updated_by     text,
  unique (table_name, column_name)
);
comment on table public.columns is
  'Every column of every table as a record with its own history — the MDL''s per-field law, reborn. Synced by gaia_sync(); description is the human hand''s column, never overwritten by sync.';

alter table public.columns enable row level security;
create policy "Public read columns" on public.columns for select using (true);

-- ─── 2. Every registry learns to remember (the MDL log column) ───
alter table public.gaia_config     add column if not exists log jsonb not null default '[]'::jsonb;
alter table public.policies        add column if not exists log jsonb not null default '[]'::jsonb;
alter table public.functions       add column if not exists log jsonb not null default '[]'::jsonb;
alter table public.triggers        add column if not exists log jsonb not null default '[]'::jsonb;
alter table public.indexes         add column if not exists log jsonb not null default '[]'::jsonb;
alter table public.enums           add column if not exists log jsonb not null default '[]'::jsonb;
alter table public.composite_types add column if not exists log jsonb not null default '[]'::jsonb;

-- ─── 3. THE WALKER — gaia_sync(p_table default null) ───
create or replace function public.gaia_sync(p_table text default null)
returns jsonb
language plpgsql
security definer
set search_path = public, pg_catalog
as $fn$
declare
  v_now      text := to_char(now(), 'YYYY-MM-DD HH24:MI:SS');
  v_changes  int := 0;
  v_created  int := 0;
  v_retired  int := 0;
  r          record;
  v_hash     text;
  v_old_hash text;
  v_cols     int;
  v_pols     int;
  v_trgs     int;
  v_idxs     int;
begin
  -- ── tables → gaia_config ──
  for r in
    select tablename from pg_tables
     where schemaname = 'public'
       and (p_table is null or tablename = p_table)
  loop
    insert into gaia_config (table_name, status, notes, created_by, log)
    values (r.tablename, 'active', 'discovered by gaia_sync', 'gaia_sync',
            jsonb_build_array('➕🪣created record for table: '
                              || r.tablename || ' [' || v_now || ']'))
    on conflict (table_name) do nothing;
    if found then v_created := v_created + 1; end if;

    -- the portrait: counts + hash of the table's whole shape
    select count(*) into v_cols from information_schema.columns c
     where c.table_schema = 'public' and c.table_name = r.tablename;
    select count(*) into v_pols from pg_policies p
     where p.schemaname = 'public' and p.tablename = r.tablename;
    select count(*) into v_trgs from information_schema.triggers t
     where t.event_object_schema = 'public'
       and t.event_object_table = r.tablename;
    select count(*) into v_idxs from pg_indexes i
     where i.schemaname = 'public' and i.tablename = r.tablename;
    select md5(coalesce(string_agg(shape, '|' order by shape), '')) into v_hash
      from (
        select c.column_name || ':' || c.data_type || ':'
               || c.is_nullable || ':' || coalesce(c.column_default, '') as shape
          from information_schema.columns c
         where c.table_schema = 'public' and c.table_name = r.tablename
        union all
        select 'policy:' || p.policyname || ':' || p.cmd || ':'
               || coalesce(p.qual, '')
          from pg_policies p
         where p.schemaname = 'public' and p.tablename = r.tablename
        union all
        select 'index:' || i.indexname || ':' || i.indexdef
          from pg_indexes i
         where i.schemaname = 'public' and i.tablename = r.tablename
      ) shapes;

    select schema_hash into v_old_hash from gaia_config
     where table_name = r.tablename;
    if v_old_hash is distinct from v_hash then
      update gaia_config
         set schema_columns_count  = v_cols,
             schema_policies_count = v_pols,
             schema_triggers_count = v_trgs,
             schema_indexes_count  = v_idxs,
             schema_hash           = v_hash,
             schema_verified_at    = now(),
             updated_at            = now(),
             log = log || to_jsonb('🔁shape changed: '
                   || coalesce(v_old_hash, '(first portrait)') || ' -> '
                   || v_hash || ' [' || v_now || ']')
       where table_name = r.tablename;
      if v_old_hash is not null then v_changes := v_changes + 1; end if;
    else
      update gaia_config set schema_verified_at = now()
       where table_name = r.tablename;
    end if;
  end loop;

  -- ── columns ──
  insert into columns (table_name, column_name, data_type, is_nullable,
                       column_default, created_by, log)
  select c.table_name, c.column_name, c.data_type,
         (c.is_nullable = 'YES'), c.column_default, 'gaia_sync',
         jsonb_build_array('➕🪣created record for column: '
                           || c.table_name || '.' || c.column_name
                           || ' [' || v_now || ']')
    from information_schema.columns c
   where c.table_schema = 'public'
     and (p_table is null or c.table_name = p_table)
  on conflict (table_name, column_name) do nothing;

  update columns k
     set data_type = c.data_type,
         is_nullable = (c.is_nullable = 'YES'),
         column_default = c.column_default,
         is_active = true,
         updated_at = now(),
         log = k.log || to_jsonb('🔁changed: type/null/default now '
               || c.data_type || '/' || c.is_nullable || ' [' || v_now || ']')
    from information_schema.columns c
   where c.table_schema = 'public'
     and c.table_name = k.table_name and c.column_name = k.column_name
     and (p_table is null or k.table_name = p_table)
     and (k.data_type is distinct from c.data_type
          or k.is_nullable is distinct from (c.is_nullable = 'YES')
          or k.column_default is distinct from c.column_default);

  update columns k
     set is_active = false, updated_at = now(),
         log = k.log || to_jsonb('➖retired: no longer in the schema ['
                                 || v_now || ']')
   where k.is_active
     and (p_table is null or k.table_name = p_table)
     and not exists (
       select 1 from information_schema.columns c
        where c.table_schema = 'public'
          and c.table_name = k.table_name
          and c.column_name = k.column_name);

  -- ── policies ──
  insert into policies (table_name, policy_name, cmd, qual, with_check,
                        created_by, log)
  select p.tablename, p.policyname, p.cmd, p.qual, p.with_check, 'gaia_sync',
         jsonb_build_array('➕🪣created record for policy: ' || p.policyname
                           || ' on ' || p.tablename || ' [' || v_now || ']')
    from pg_policies p
   where p.schemaname = 'public'
     and (p_table is null or p.tablename = p_table)
  on conflict (table_name, policy_name) do nothing;

  update policies g
     set qual = p.qual, with_check = p.with_check, cmd = p.cmd,
         is_active = true, updated_at = now(),
         log = g.log || to_jsonb('🔁changed: qual now ' || coalesce(p.qual, '-')
                                 || ' [' || v_now || ']')
    from pg_policies p
   where p.schemaname = 'public'
     and p.tablename = g.table_name and p.policyname = g.policy_name
     and (p_table is null or g.table_name = p_table)
     and (g.qual is distinct from p.qual
          or g.with_check is distinct from p.with_check
          or g.cmd is distinct from p.cmd);

  update policies g
     set is_active = false, updated_at = now(),
         log = g.log || to_jsonb('➖retired: door removed [' || v_now || ']')
   where g.is_active
     and (p_table is null or g.table_name = p_table)
     and not exists (
       select 1 from pg_policies p
        where p.schemaname = 'public'
          and p.tablename = g.table_name and p.policyname = g.policy_name);

  -- ── functions (whole-base only; they belong to no one table) ──
  if p_table is null then
    insert into functions (name, language, signature, created_by, log)
    select p.proname, l.lanname,
           pg_get_function_identity_arguments(p.oid), 'gaia_sync',
           jsonb_build_array('➕🪣created record for function: ' || p.proname
                             || ' [' || v_now || ']')
      from pg_proc p
      join pg_namespace n on n.oid = p.pronamespace
      join pg_language l on l.oid = p.prolang
     where n.nspname = 'public'
    on conflict (name) do nothing;

    -- ── triggers ──
    insert into triggers (name, table_name, timing, events, function_name,
                          created_by, log)
    select t.trigger_name, t.event_object_table, t.action_timing,
           string_agg(distinct t.event_manipulation, ' OR '),
           regexp_replace(t.action_statement, '^EXECUTE FUNCTION ', ''),
           'gaia_sync',
           jsonb_build_array('➕🪣created record for trigger: '
                             || t.trigger_name || ' on '
                             || t.event_object_table || ' [' || v_now || ']')
      from information_schema.triggers t
     where t.event_object_schema = 'public'
     group by t.trigger_name, t.event_object_table, t.action_timing,
              t.action_statement
    on conflict (table_name, name) do nothing;

    -- ── indexes ──
    insert into indexes (table_name, name, definition, created_by, log)
    select i.tablename, i.indexname, i.indexdef, 'gaia_sync',
           jsonb_build_array('➕🪣created record for index: ' || i.indexname
                             || ' [' || v_now || ']')
      from pg_indexes i
     where i.schemaname = 'public'
    on conflict (table_name, name) do nothing;

    -- ── enums, labels + used_by as data (the Field Options law) ──
    insert into enums (name, labels, used_by, created_by, log)
    select t.typname,
           (select jsonb_agg(e.enumlabel order by e.enumsortorder)
              from pg_enum e where e.enumtypid = t.oid),
           (select coalesce(jsonb_agg(jsonb_build_object(
                     'table', c.table_name, 'column', c.column_name)), '[]')
              from information_schema.columns c
             where c.table_schema = 'public' and c.udt_name = t.typname),
           'gaia_sync',
           jsonb_build_array('➕🪣created record for enum: ' || t.typname
                             || ' [' || v_now || ']')
      from pg_type t
      join pg_namespace n on n.oid = t.typnamespace
     where n.nspname = 'public' and t.typtype = 'e'
    on conflict (name) do nothing;

    update enums g
       set labels = fresh.labels, used_by = fresh.used_by,
           updated_at = now(),
           log = g.log || to_jsonb('🔁changed: labels now '
                 || fresh.labels::text || ' [' || v_now || ']')
      from (
        select t.typname,
               (select jsonb_agg(e.enumlabel order by e.enumsortorder)
                  from pg_enum e where e.enumtypid = t.oid) as labels,
               (select coalesce(jsonb_agg(jsonb_build_object(
                         'table', c.table_name, 'column', c.column_name)), '[]')
                  from information_schema.columns c
                 where c.table_schema = 'public'
                   and c.udt_name = t.typname) as used_by
          from pg_type t
          join pg_namespace n on n.oid = t.typnamespace
         where n.nspname = 'public' and t.typtype = 'e') fresh
     where g.name = fresh.typname
       and (g.labels is distinct from fresh.labels
            or g.used_by is distinct from fresh.used_by);

    -- ── composite types (true composites, not table rowtypes) ──
    insert into composite_types (name, attributes, created_by, log)
    select t.typname,
           (select jsonb_agg(jsonb_build_object(
                     'name', a.attname, 'type', format_type(a.atttypid, a.atttypmod))
                   order by a.attnum)
              from pg_attribute a
             where a.attrelid = t.typrelid and a.attnum > 0
               and not a.attisdropped),
           'gaia_sync',
           jsonb_build_array('➕🪣created record for composite: ' || t.typname
                             || ' [' || v_now || ']')
      from pg_type t
      join pg_namespace n on n.oid = t.typnamespace
      join pg_class c on c.oid = t.typrelid
     where n.nspname = 'public' and t.typtype = 'c' and c.relkind = 'c'
    on conflict (name) do nothing;
  end if;

  return jsonb_build_object(
    'synced_at', now(),
    'scope', coalesce(p_table, 'whole base'),
    'tables_created', v_created,
    'shape_changes_detected', v_changes);
end;
$fn$;

comment on function public.gaia_sync is
  'The MDL reborn: walks pg_catalog and writes the base''s self-portrait into the registries, with per-element append-only logs and per-table schema hashes. Granular: gaia_sync() for the whole base, gaia_sync(''atoms'') for one table.';

-- ─── 4. The door: stewards only, never the street ───
revoke execute on function public.gaia_sync(text) from public, anon, authenticated;
grant  execute on function public.gaia_sync(text) to service_role;

-- ─── 5. The registry learns of columns ───
insert into public.gaia_config (table_name, status, sort_order, notes, created_by)
values ('columns', 'active', 9,
        'Every column as a record with its own history — the MDL''s per-field law; born 2026-07-27 with 011.',
        'Fable via KP')
on conflict (table_name) do nothing;

-- ============================================================
-- FIRST SYNC — the base draws its first self-portrait
-- ============================================================
select public.gaia_sync();
-- returns e.g. {"scope":"whole base","tables_created":N,...}

-- ============================================================
-- VERIFY: the library is populated and signed
-- ============================================================
select 'gaia_config' as registry, count(*) from public.gaia_config
union all select 'columns', count(*) from public.columns
union all select 'policies', count(*) from public.policies
union all select 'functions', count(*) from public.functions
union all select 'triggers', count(*) from public.triggers
union all select 'indexes', count(*) from public.indexes
union all select 'enums', count(*) from public.enums
union all select 'composite_types', count(*) from public.composite_types;

select table_name, schema_columns_count, schema_policies_count,
       schema_hash is not null as signed, schema_verified_at
  from public.gaia_config
 order by table_name limit 30;
-- expected: every table counted, hashed, and freshly verified.

-- ─── LATER, AT KP'S WORD — the chicken timer (pg_cron) ───
-- Supabase: Database → Extensions → enable pg_cron, then:
--   select cron.schedule('gaia-sync-nightly', '0 8 * * *',
--                        $$select public.gaia_sync()$$);
-- The base then tends its own record daily, nobody asked — the
-- TEMPORAL primitive living inside the database.
-- The bridge may also call it on demand (service key only):
--   POST /rest/v1/rpc/gaia_sync   body: {} or {"p_table":"atoms"}
