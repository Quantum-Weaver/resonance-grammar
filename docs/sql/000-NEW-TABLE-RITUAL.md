# 000 — THE NEW-TABLE RITUAL (read before any CREATE TABLE)

*Engraved 2026-07-26 at KP's word: "let us note this so we always
remember this, i have to tell everyone about this each time we create
a table." This file sorts first in docs/sql/ on purpose — it is the
door you walk through before making a new door.*

## The ritual, whole

Every new table in a Supabase base needs THREE things, or it will sit
dark behind RLS and the anon key will read zero rows while the data
is really there:

```sql
-- 1. the table itself (whatever shape the work needs)

-- 2. RLS on — Supabase lints any public table without it
alter table public.<table> enable row level security;

-- 3. the house door — public read; writes stay with the secret key
create policy "Public read <table>"
  on public.<table> for select using (true);
```

## The lessons this ritual carries (all learned 2026-07-26, one night)

1. **RLS without a policy is a locked door with no key.** The linter
   says `rls_enabled_no_policy` (INFO level — easy to miss). Service-
   key writes succeed, anon reads return **0 rows with no error** —
   a false-empty at the API layer. If a count reads zero right after
   a delivery reported thousands, check policies before doubting the
   delivery.
2. **Plain statements, not DO blocks.** A fancy `do $$ ... $$` policy
   block silently failed to take effect in the SQL editor; the plain
   two-liner worked first try. Ceremony is for prose — SQL wants the
   simplest form that can possibly work.
3. **Enums bite at insert time.** Columns like `molecule_type`,
   `naming_convention`, `atom_role`, `bond_type` are Postgres enums —
   an unlawful value 400s the whole batch. The full member listing
   (run it when in doubt):

   ```sql
   select t.typname, e.enumlabel
   from pg_type t join pg_enum e on e.enumtypid = t.oid
   order by t.typname, e.enumsortorder;
   ```

   Ground truth as of 2026-07-26 lives in the base itself; notable:
   the all-caps convention label is `SCREAMING_CASE` (not
   SCREAMING_SNAKE_CASE), and `organism_molecules.role` is plain text.
4. **After the ritual, verify through the PUBLIC door**, not the
   service key — the anon read is what apps and inventory tools see:
   `python resonance-bridge/grammar_inventory.py`.

## Precedents

- `004-rls-policies-organisms.sql` · `005-rls-heal-grammar-reads.sql`
  — the same one-clean-door pattern laid across the Grammar tables.
- `organism_atoms` (created by KP's hand 2026-07-26, the Grammar's
  direct atom bonds) — the table whose dark door taught lesson 2.
