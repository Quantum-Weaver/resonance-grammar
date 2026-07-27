#!/usr/bin/env python3
"""Dump knowledge.db to a dated, committable text SQL file.

The canonical backup story (THE HARVEST Tier 2, 2026-07-26): the live
knowledge.db is gitignored (*.db) and binary — git cannot diff it, and a
committed binary copy is how the .bak-2026-07-04 oddity happened. A TEXT
dump is diffable, reviewable, and safe to commit: the schema and every
row, readable in a pull request.

Usage:  python scripts/dump_db.py
Writes: backups/knowledge-YYYY-MM-DD.sql   (commit it)
Restore: sqlite3 knowledge.db < backups/knowledge-<date>.sql
         (or python -c "import sqlite3; sqlite3.connect('knowledge.db').executescript(open('backups/...').read())")
"""
import sqlite3
from datetime import date
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DB = ROOT / "knowledge.db"
OUT_DIR = ROOT / "backups"

def main() -> None:
    if not DB.exists():
        raise SystemExit(f"no database at {DB}")
    OUT_DIR.mkdir(exist_ok=True)
    out = OUT_DIR / f"knowledge-{date.today().isoformat()}.sql"
    con = sqlite3.connect(DB)
    with out.open("w", encoding="utf-8") as f:
        f.write(f"-- knowledge.db text dump · {date.today().isoformat()}\n")
        f.write("-- produced by scripts/dump_db.py; restore with: sqlite3 knowledge.db < thisfile\n\n")
        for line in con.iterdump():
            f.write(line + "\n")
    con.close()
    size = out.stat().st_size
    print(f"dumped {DB.name} -> {out.relative_to(ROOT)} ({size:,} bytes)")

if __name__ == "__main__":
    main()
