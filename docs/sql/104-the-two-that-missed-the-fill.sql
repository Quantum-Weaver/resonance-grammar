-- ============================================================================
-- 104 — THE TWO THAT MISSED THE FILL: nectere and tarocchi
--
-- KP's word, 2026-08-18: "resonance tarocchi and resonance-nectere missed the
-- fill" · "that is 37 which is the right count."
--
-- RECONCILED AGAINST THE HOUSE BEFORE WRITING, so this is a fill and not a
-- guess: 38 directories carry a `.git` on disk, and `.claude` is a JUNCTION
-- onto `resonance-claude` — named, never counted twice. **37 repos.** The
-- register holds 35 beacon rows. The two absent are exactly the two he named.
--
--   `AudHDities` looked like a third and is not: its row stands as the slug
--   `audhdities`, a case difference on disk and nothing more.
--
-- Neither word had an atom, so neither could have a molecule, so neither could
-- have a row. All three levels are planted here in one pass: atom, molecule,
-- beacon — LINK AT THE MAX VALUE ONLY, so each beacon carries its molecule and
-- no atom_id.
--
-- Shapes copied from the live rows, as 100–103 were: 080's atom shape,
-- ResonanceKhoros' molecule shape, resonance-ardan's beacon shape. The atoms
-- table's triggers make the etymology and sensory companions on insert.
--
-- ON `tarocchi` AND THE PLURAL RULE: tarocchi is the Italian plural (singular
-- tarocco), but the ["s"] rule from 080 is an ENGLISH affix rule, and the
-- modifiers column models affixes — not another language's inflection. The
-- house keeps a borrowed word in the form it borrowed: `khoros`, `sistrum`,
-- `awen`, `nemeton`. So `tarocchi` stands whole, as its realm is named.
--
-- Idempotent throughout.
--
-- Drafted 2026-08-18 by Scarf (Opus) for KP's ⚛ hand.
-- ============================================================================


-- ─── (A) THE ATOMS ──────────────────────────────────────────────────────────

insert into public.atoms (
  atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, modifiers,
  screaming_case, snake_case, pascal_case
) values

  -- Its own README: "The house's outward WRITING organ — born empty of chains;
  -- the bridge sees, nectere speaks." The word is the binding itself, which is
  -- why `communication` and not `creation`: what it weaves is a line outward.
  ('nectere',
   'To bind, to tie, to weave together — the making of a connection, from which nexus and connect descend. Latin. Not the things joined and not the joining''s result: the act of running the thread between them.',
   'root', 5, 5, 1, 'static',
   '839cc74b-baee-47cc-b6eb-617a83393e36', 'communication', 'published', null,
   'NECTERE', 'nectere', 'Nectere'),

  -- Its own README: "A personal tarot deck and daily companion — the Quantum
  -- Weaver Tarot, 78 cards, local-first, no accounts, no cloud." `knowledge`
  -- for the reason `tarot` already stands there.
  ('tarocchi',
   'The cards of the tarot — a deck of seventy-eight, read as a set of pictures a person thinks with. Italian, plural of tarocco; the older Italian game-name, kept whole rather than translated. The meanings are the reader''s to make.',
   'root', 5, 5, 1, 'static',
   '339cb540-838f-407e-ab96-e433750ed9fb', 'knowledge', 'published', null,
   'TAROCCHI', 'tarocchi', 'Tarocchi')

on conflict (atom_word) do nothing;


-- ─── (B) THE MOLECULES ──────────────────────────────────────────────────────

insert into public.molecules (
  name, derived_name, definition, atom_words, bond_type, molecule_type,
  domain, naming_convention, status,
  pascal_case, camel_case, kebab_case, snake_case, screaming_case
) values

  ('ResonanceNectere', 'ResonanceNectere',
   'The name ''ResonanceNectere'' (PascalCase), composed of atoms: resonance, nectere. Latin nectere, to bind — the house''s outward writing organ.',
   'resonance, nectere', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceNectere', 'resonanceNectere', 'resonance-nectere', 'resonance_nectere', 'RESONANCE_NECTERE'),

  ('ResonanceTarocchi', 'ResonanceTarocchi',
   'The name ''ResonanceTarocchi'' (PascalCase), composed of atoms: resonance, tarocchi. Italian tarocchi, the tarot cards — the Quantum Weaver Tarot, seventy-eight, local-first.',
   'resonance, tarocchi', 'covalent', 'object_name', 'system', 'PascalCase', 'published',
   'ResonanceTarocchi', 'resonanceTarocchi', 'resonance-tarocchi', 'resonance_tarocchi', 'RESONANCE_TAROCCHI')

on conflict (name) do nothing;


-- ─── (C) THE BEACON ROWS ────────────────────────────────────────────────────
--
-- Both are `flowing`: read from the ground, not guessed.
--   nectere    src + package.json +  4 commits
--   tarocchi   src + package.json + 11 commits
--
-- beacon_type `system` for nectere, matching `resonance-bridge` — the pair of
-- outward lines take the same type, the bridge reading and nectere writing.
-- `app` for tarocchi: a person opens it and draws a card.
--
-- is_public false on both — private is the reversible direction, public is not.
-- The reckoner's standing draft is the place any is_public correction belongs.

insert into public.beacons (
  slug, name, definition, beacon_type, status, home, repo_url,
  is_public, folksonomy_type, molecule_id, created_by
) values

  ('resonance-nectere', 'Resonance Nectere',
   'The house''s outward writing organ — born empty of chains; the bridge sees, nectere speaks.',
   'system', 'flowing', 'resonance-nectere',
   'https://github.com/Quantum-Weaver/resonance-nectere',
   false, 'Nectere',
   (select id from public.molecules where name = 'ResonanceNectere'),
   'KP + Scarf (Opus)'),

  ('resonance-tarocchi', 'Resonance Tarocchi',
   'A personal tarot deck and daily companion — the Quantum Weaver Tarot, 78 cards, local-first, no accounts, no cloud. A morning card, a draw for when you are stuck, an evening witness, and the full spreads.',
   'app', 'flowing', 'resonance-tarocchi',
   'https://github.com/Quantum-Weaver/resonance-tarocchi',
   false, 'Tarocchi',
   (select id from public.molecules where name = 'ResonanceTarocchi'),
   'KP + Scarf (Opus)')

on conflict (slug) do nothing;


-- ─── VERIFY ─────────────────────────────────────────────────────────────────

-- The two stand at all three levels, each linking at the max value only.
select b.slug, b.status, b.beacon_type,
       m.name as molecule, m.atom_words,
       (b.atom_id is not null)     as links_atom,
       (b.organism_id is not null) as links_organism
from public.beacons b
left join public.molecules m on m.id = b.molecule_id
where b.slug in ('resonance-nectere', 'resonance-tarocchi')
order by b.slug;

-- THE REGISTER SHOULD NOW MATCH THE HOUSE: 37 repos, 37 beacon rows.
select count(*) as beacon_rows from public.beacons;

-- And nothing anywhere stands on nothing.
select 'beacons' as t, count(*) as no_lineage from public.beacons
 where atom_id is null and molecule_id is null and organism_id is null
union all
select 'awen', count(*) from public.awen
 where atom_id is null and molecule_id is null and organism_id is null;
