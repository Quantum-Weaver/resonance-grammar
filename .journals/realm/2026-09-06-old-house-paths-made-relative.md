# Old-house paths made relative — 2026-09-06

Absolute paths under the previous house folder replaced with paths anchored from each file's own location.

- `scripts/seed-runner.py` — `HOUSE = pathlib.Path(__file__).resolve().parents[2]`; `ENV = HOUSE / "resonance-bridge" / ".env"`. The docstring's usage lines read `python scripts/seed-runner.py ...` from the repo root.
- `tools/export-sql-snippets.mjs` — `HOUSE = fileURLToPath(new URL('../../', import.meta.url))`; `OUT_ROOT = join(HOUSE, 'export-supabase', 'sql-snippets')`. The header's output line reads `../export-supabase/sql-snippets/<project>/<name>.sql`.

Verified with `python -m py_compile`, `node --check`, and a `git grep` for the old folder name (no hits). `export-supabase/` does not exist under the house at this writing; the script creates it on run.
