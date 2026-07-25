#!/usr/bin/env node
/**
 * SQL-snippet exporter — pulls the SQL editor's saved queries
 * (private included) from Supabase's Management API into the
 * excavator's export ground, so the dashboard's only copy stops
 * being the only copy.
 *
 * Commissioned 2026-07-25 at KP's ask: "locate and export the private
 * sql query segments from supabase" — searched the workspace whole;
 * no prior export exists, so this tool makes the first one.
 *
 * TOKEN LAW: needs a personal access token (created by KP's own hand
 * at supabase.com/dashboard/account/tokens) in the environment as
 * SUPABASE_ACCESS_TOKEN. The token is read at run time and NEVER
 * written to disk, logged, or echoed. .env stays home, always.
 *
 * Usage:
 *   SUPABASE_ACCESS_TOKEN=... node export-sql-snippets.mjs [project_ref]
 *   (no ref → exports snippets across all reachable projects)
 *
 * Output: C:\_superposition\resonance-excavator\sources is a junction
 * street — the real ground is C:\_superposition\export-supabase? No:
 * exports land beside their kin at
 * C:\_superposition\export-supabase\sql-snippets\<project>\<name>.sql
 * with a small index.json carrying id · name · visibility · updated_at.
 */

import { writeFileSync, mkdirSync } from 'fs';
import { join } from 'path';

const OUT_ROOT = 'C:/_superposition/export-supabase/sql-snippets';
const API = 'https://api.supabase.com/v1';

const token = process.env.SUPABASE_ACCESS_TOKEN;
if (!token) {
  console.error('SUPABASE_ACCESS_TOKEN not in environment.');
  console.error('KP\'s step: create one at supabase.com/dashboard/account/tokens,');
  console.error('then run:  SUPABASE_ACCESS_TOKEN=<token> node export-sql-snippets.mjs');
  process.exit(1);
}

const headers = { Authorization: `Bearer ${token}` };

async function get(path) {
  const res = await fetch(`${API}${path}`, { headers });
  if (!res.ok) throw new Error(`${res.status} ${res.statusText} on ${path}`);
  return res.json();
}

const safe = (s) => s.replace(/[^\w\- ]+/g, '_').trim().slice(0, 80) || 'unnamed';

const projectRef = process.argv[2];
const listPath = projectRef ? `/snippets?project_ref=${projectRef}` : '/snippets';
const listing = await get(listPath);
const snippets = listing.data ?? listing;
if (!Array.isArray(snippets) || snippets.length === 0) {
  console.log('No snippets returned. (Check the token\'s account owns the project.)');
  process.exit(0);
}
console.log(`${snippets.length} snippets listed.`);

const index = [];
for (const s of snippets) {
  // The list gives metadata; the content ride needs the per-id fetch.
  const full = await get(`/snippets/${s.id}`);
  const sql = full.content?.sql ?? full.content ?? '';
  const project = s.project?.name ? safe(s.project.name) : (projectRef ?? 'unknown-project');
  const dir = join(OUT_ROOT, project);
  mkdirSync(dir, { recursive: true });
  const file = join(dir, `${safe(s.name)}.sql`);
  const banner = [
    `-- SQL editor snippet, exported from Supabase ${new Date().toISOString().slice(0, 10)}`,
    `-- name: ${s.name} · visibility: ${s.visibility ?? '?'} · id: ${s.id}`,
    `-- project: ${s.project?.name ?? projectRef ?? '?'} · updated: ${s.updated_at ?? '?'}`,
    '', ''].join('\n');
  writeFileSync(file, banner + (typeof sql === 'string' ? sql : JSON.stringify(sql, null, 2)), 'utf-8');
  index.push({ id: s.id, name: s.name, visibility: s.visibility, project, updated_at: s.updated_at, file });
  console.log(`  exported: [${s.visibility ?? '?'}] ${project}/${safe(s.name)}.sql`);
}
mkdirSync(OUT_ROOT, { recursive: true });
writeFileSync(join(OUT_ROOT, 'index.json'), JSON.stringify(index, null, 2), 'utf-8');
console.log(`index: ${join(OUT_ROOT, 'index.json')}`);
