# TAXONOMY REVIEW — FOR THE INDEXER
### Findability, Trails, and Discoverability
*Prepared from pipeline/atoms/ and pipeline/molecules/ — 2026-06-30*

---

> **Your domain:** How does someone find each term? Where does it live? What points to it?
> What can't be found? What is found by the wrong people for the wrong reasons?
> This document maps the discoverability of every term in the taxonomy.

---

## PART I — LANGUAGE COVERAGE MATRIX

*Can a developer working in each language encounter and use this concept?*

`✓` = present · `✗` = absent · `~` = partial / indirect only · `D` = design-only (pipeline only)

| Atom | Python | TypeScript | SQL | CSS | Markdown | Rust | JavaScript | Config |
|------|--------|------------|-----|-----|----------|------|------------|--------|
| acid | ~ | ✓ | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ |
| atom | ✓ | ✓ | ✗ | ✗ | ✗ | ✓ | ✗ | ✓ |
| bigot | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| category | ✓ | ✓ | ✓ | ✗ | ✓ | ✗ | ✓ | ✓ |
| council | ✓ | ✓ | ✓ | ✓ | ✓ | ✗ | ✗ | ✓ |
| emoji | ✓ | ✓ | ✓ | ✗ | ✓ | ✓ | ✗ | ✗ |
| entry | ✓ | ✓ | ✗ | ✓ | ✗ | ✗ | ✗ | ✗ |
| event | ✓ | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| folksonomy | ✗ | ✓ | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ |
| grammar | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| hierarchy | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| lexicon | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| mnemosyne | ✗ | ✗ | ✗ | ✓ | ✓ | ✗ | ✗ | ✗ |
| molecule | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| mood | ✓ | ✓ | ✗ | ✓ | ✗ | ✗ | ✗ | ✗ |
| node | ✓ | ✓ | ✗ | ✗ | ✓ | ✗ | ✗ | ✓ |
| ontology | ✓ | ✓ | ✓ | ✗ | ✓ | ✗ | ✗ | ✓ |
| predicate | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| protocol | ✓ | ✓ | ✗ | ✗ | ✓ | ✗ | ✗ | ✗ |
| question | ✓ | ✓ | ✗ | ✓ | ✓ | ✗ | ✗ | ✗ |
| relation | ✓ | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| resonance | ✓ | ✓ | ✗ | ✓ | ✓ | ✗ | ✗ | ✓ |
| score | ✓ | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| seat | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| sensory | ✓ | ✓ | ✗ | ✗ | ✓ | ✗ | ✗ | ✗ |
| sovereignty | ✓ | ✓ | ✗ | ✗ | ✓ | ✗ | ✗ | ✗ |
| tag | ✓ | ✓ | ✗ | ✓ | ✗ | ✗ | ✗ | ✗ |
| tax | ✗ | ✓ | ✗ | ✗ | ✓ | ✗ | ✗ | ✗ |
| taxonomy | ✓ | ✓ | ✓ | ✗ | ✓ | ✗ | ✓ | ✗ |
| test | ✓ | ✗ | ✗ | ✗ | ✓ | ✗ | ✗ | ✓ |

**SQL coverage: 6 of 30 atoms** — `acid`, `category`, `council`, `emoji`, `folksonomy`, `ontology`, `taxonomy`
**TypeScript coverage: 20 of 30 atoms**
**Python coverage: 20 of 30 atoms**
**Design-only (no language): 4 atoms** — `bigot`, `grammar`, `lexicon`, `molecule`

---

## PART II — TERM FREQUENCY (LIBRARY PRESENCE)

How many times each term appears across the 30,249 library definitions:

| Rank | Atom | Count | Signal quality |
|------|------|-------|---------------|
| 1 | test | 6,943 | ⚠ POLLUTED — mostly numpy/scipy test frameworks |
| 2 | council | 183 | ✓ Strong QPF signal |
| 3 | category | 120 | ~ Mixed signal — generic use |
| 4 | protocol | 139 | ~ Mixed — some QPF, some generic |
| 5 | taxonomy | 79 | ✓ Strong QPF signal |
| 6 | resonance | 77 | ✓ Strong QPF signal |
| 7 | node | 68 | ~ Mixed — ReactNode, AST |
| 8 | event | 67 | ~ Mixed — calendar, window, mood |
| 9 | entry | 53 | ~ Mixed — index entries, log entries |
| 10 | emoji | 50 | ✓ Good QPF signal |
| 11 | tag | 49 | ~ Mixed — HTML, CSS, QPF |
| 12 | ontology | 49 | ✓ Strong QPF signal |
| 13 | predicate | 45 | ⚠ Mixed — mostly Vega-Lite |
| 14 | folksonomy | 33 | ✓ Strong QPF signal |
| 15 | AcidTest | 34 | ✓ Strong QPF signal |
| 16 | sensory | 21 | ✓ Good QPF signal |
| 17 | mood | 19 | ✓ Good QPF signal |
| 18 | mnemosyne | 10 | ~ Design artifacts only |
| 19 | hierarchy | 8 | ~ Python builders only |
| 20 | sovereignty | 8 | ✓ Good QPF signal |
| 21 | atom | 5 | ⚠ POLLUTED — editor themes |
| 22 | score | 12 | ~ Multiple scoring contexts |
| 23 | relation | 5 | ⚠ POLLUTED — DuckDB relation |
| 24 | tax | 5 | ✓ Small but clean signal |
| 25 | question | 6 | ✓ Small but clean signal |
| 26 | acid | 13 | ✓ Small but clean signal |
| 27 | seat | 1 | ⚠ Critically underrepresented |
| 28 | bigot | 0 | ✗ Not found in library |
| 29 | grammar | 2 | ✗ Near-absent |
| 30 | lexicon | 0 | ✗ Not found in library |
| 31 | molecule | 0 | ✗ Not found in library |

---

## PART III — HUBS (MOST CROSS-REFERENCED)

These atoms are referenced by the most other atoms and molecules. They are the highest-traffic nodes in the taxonomy.

### taxonomy `atom-029` — Hub Degree: 7
Referenced by: `category`, `folksonomy`, `hierarchy`, `ontology` (as children) + `category` + `hierarchy` + `ontology` (as related)
Composed into: `TaxonomyNode` (mol-017)
**Role:** Root of the classification tree. Everything classifiable is downstream of this atom.
**Indexer recommendation:** `taxonomy` should be the first entry in any glossary, index, or search result for classification-related queries.

### atom `atom-002` — Hub Degree: 5
Referenced by: `molecule`, `category`, `taxonomy` (as related) + `emoji` (as child) + `EmojiAtom`, `SensoryAtom` (as component)
Composed into: `EmojiAtom` (mol-005), `SensoryAtom` (mol-014)
**Role:** The meta-concept that defines the vocabulary system itself.
**Indexer recommendation:** `atom` is the entry point for anyone learning the taxonomy from scratch. It must be the #1 result for searches like "what is a term," "vocabulary unit," "irreducible concept."

### ontology `atom-017` — Hub Degree: 5
Referenced by: `relation` (as parent), `predicate` (as parent), `taxonomy` (as related), `category`, `hierarchy`
Composed into: `OntologyRelation` (mol-011)
**Role:** The formal knowledge graph layer above taxonomy.
**Indexer recommendation:** Crosslink `ontology` to `taxonomy` (its parent domain), `relation` and `predicate` (its children), and `OntologyRelation` (its primary molecule).

### resonance `atom-022` — Hub Degree: 4
Referenced by: `grammar`, `protocol` (as related), `event` (as related)
Composed into: `ResonanceGrammar` (mol-012), `ResonanceProtocol` (mol-013)
**Role:** The project's governing metaphor — resonance is how all communication is framed.
**Indexer recommendation:** `resonance` should surface for searches on "communication," "protocol," "conversation patterns," and "how to talk to the system."

### council `atom-005` — Hub Degree: 4
Referenced by: `seat` (as child), `sovereignty` (as related)
Composed into: `CouncilSeat` (mol-004)
**Role:** Governance structure — the council makes decisions and holds seats.
**Indexer recommendation:** `council` should surface for governance, decision-making, roles, and permissions queries.

---

## PART IV — ORPHANS (NO CROSS-REFERENCES)

These atoms are referenced by neither other atoms nor molecules. They have no trails pointing to them.

| Atom | ID | Frequency | Orphan type |
|------|-----|-----------|-------------|
| `grammar` | atom-010 | 2 | **Critical** — foundational to ResonanceGrammar but nothing points here |
| `molecule` | atom-014 | 0 | **Intentional** — the meta-atom doesn't need incoming links |
| `lexicon` | atom-012 | 0 | **Structural** — exists only inside SensoryLexicon |
| `bigot` | atom-003 | 0 | **Structural** — exists only inside BigotTax; no standalone trail |
| `tax` | atom-028 | 5 | **Near-orphan** — only appears as component of BigotTax |
| `acid` | atom-001 | 13 | **Near-orphan** — only meaningful inside AcidTest context |
| `question` | atom-020 | 6 | **Near-orphan** — only fully meaningful inside AcidTestQuestion |

**Indexer recommendation for orphans:**
- `grammar` needs incoming links from `resonance`, `protocol`, and a future ResonanceGrammar spec
- `molecule` should have a "what is this?" reference page — it's the meta-atom
- `bigot` and `tax` may remain orphaned by design (satellite atoms); mark them as such

---

## PART V — FINDABILITY TRAILS BY MOLECULE

How someone working with each molecule can discover its constituent atoms:

| Molecule | Source trail | Discovery problem |
|----------|-------------|-------------------|
| **AcidTest** | `AcidTestFormProps`, `AcidTestAnswersRowSchema` → follow to `acid`, `test` | Strong — form and schema both named |
| **AcidTestQuestion** | No code presence | Not discoverable from code. Only via pipeline |
| **BigotTax** | `BigotTaxCard` (TypeScript) | Single UI component — no schema discoverable |
| **CouncilSeat** | `create_eternal_seat` (Python) | One Python function; no TypeScript trail |
| **EmojiAtom** | No code presence | Not discoverable from code |
| **EmojiMolecule** | No code presence | Not discoverable from code |
| **FolksonomyTag** | `FolksonomyRow`, `FolksonomyTargetType`, `idx_folksonomy_tag` | Well-discoverable via SQL schema |
| **HierarchyNode** | `_build_concept_hierarchy`, `_calculate_hierarchy_depth` | Python builders; no data type |
| **MnemosyneEntry** | `MNEMOSYNE` constant, `.text-entity-mnemosyne` CSS | Design artifacts; no data trail |
| **MoodEvent** | `MoodEvent` (TypeScript) | One TS type; limited trail |
| **OntologyRelation** | `OntologyRow`, `OntologyPredicate`, `idx_ontology_subject` | Well-discoverable via SQL schema |
| **ResonanceGrammar** | `GRAMMAR` constant only | Near-invisible |
| **ResonanceProtocol** | `PROTOCOL`, `ProtocolType`, `activate_whiteboard_protocol` | Moderate — protocol type exists |
| **SensoryAtom** | `SensoryPreferences`, `SensoryMode`, `DEFAULT_SENSORY_PREFERENCES` | Moderate — preference types exist |
| **SensoryLexicon** | `SensoryPreferences` → color/sound/texture/temperature fields | Weak — indirect via preferences |
| **SovereigntyScore** | `getSovereigntyScore`, `calculateSovereigntyScore`, `SOVEREIGNTY_THRESHOLDS` | Good — functions named for it |
| **TaxonomyNode** | `TaxonomyNodeType`, `isValidTaxonomyNodeType`, `TaxonomyRow` | Good — typed in TypeScript and SQL |

---

## PART VI — MISSING METADATA

### Terms without language tags (design-only — no code anchor)

These terms cannot be found by a developer browsing the codebase. They exist only in the pipeline.

| Term | Type | Missing in |
|------|------|-----------|
| `bigot` | atom | ALL languages |
| `grammar` | atom | ALL languages |
| `lexicon` | atom | ALL languages |
| `molecule` | atom | ALL languages |
| `AcidTestQuestion` | molecule | ALL languages |
| `CouncilSeat` | molecule | ALL languages |
| `EmojiAtom` | molecule | ALL languages |
| `EmojiMolecule` | molecule | ALL languages |
| `FolksonomyTag` | molecule | code only (SQL schema exists but no live table) |
| `HierarchyNode` | molecule | ALL languages |
| `MnemosyneEntry` | molecule | ALL languages |
| `OntologyRelation` | molecule | ALL languages |
| `ResonanceGrammar` | molecule | ALL languages |
| `ResonanceProtocol` | molecule | ALL languages |
| `SensoryAtom` | molecule | ALL languages |
| `SensoryLexicon` | molecule | ALL languages |

### Terms without descriptions in any searchable system

The pipeline has definitions, but no external system (Supabase, documentation, README) contains them. The entire taxonomy is currently only discoverable via:
1. `pipeline/taxonomic-analysis.md`
2. `pipeline/atoms/*.json`
3. `pipeline/molecules/*.json`

**None of these are indexed by any search system.** A developer navigating the codebase for the first time cannot find "what is a TaxonomyNode?" without knowing to look in the pipeline.

---

## PART VII — SEARCHABILITY GAPS

### Gap 1: No unified glossary
There is no single file in the project root that says "these are our terms." The pipeline output is the closest thing, but it is a build artifact — not a developer-facing document.
**Recommendation:** Create `GLOSSARY.md` at project root, linking from each concept to its pipeline file.

### Gap 2: No backlinks from library files to atoms
Library files define individual functions, classes, and types — but they do not reference the atom they belong to. A developer reading `TaxonomyRow` in the library cannot see "this is part of the `taxonomy` atom."
**Recommendation:** Add an `atom` field to library definition files.

### Gap 3: Polluted search terms block discovery
Searching for `test` in the library returns 6,943 results, almost all numpy/scipy. Searching for `atom` returns 5 results, all editor themes. Searching for `relation` returns DuckDB library code.
**Recommendation:** Add a `scope` tag to each library definition distinguishing QPF usage from library/framework usage.

### Gap 4: 12 of 17 molecules have no code anchor
A developer cannot discover them except through the pipeline. They exist as aspirational types only.
**Recommendation:** At minimum, add a TypeScript `// @QPF-molecule: {name}` comment to the nearest related type in the live codebase so text search can find them.

### Gap 5: SQL is the most invisible layer
Only 6 atoms have SQL presence. A DBA building a new table has no way to know which atoms they are implementing or how their schema should relate to the taxonomy.
**Recommendation:** The `import.sql` files in `pipeline/atoms/` and `pipeline/molecules/` should be promoted to the live database schema. They are complete and ready.

### Gap 6: The sensory lexicon has no search surface
Every atom has a color, sound, texture, and temperature — but this data exists only in JSON files. There is no way to search "what atoms have a temperature above 0.7?" or "which atoms use purple?"
**Recommendation:** Consider a small query tool or static index over the sensory data.

---

## PART VIII — RECOMMENDED TRAIL MAP

For each entry point, where should a searcher be led?

| If searching for... | Start here | Trail to follow |
|--------------------|-----------|----------------|
| "vocabulary" | `atom` (atom-002) | → `molecule` → `taxonomy` → specific molecules |
| "tagging" | `folksonomy` (atom-009) | → `tag` → `FolksonomyTag` → SQL table |
| "membership" | `AcidTest` (mol-001) | → `acid` → `test` → `question` → `SovereigntyScore` |
| "governance" | `council` (atom-005) | → `seat` → `CouncilSeat` → `sovereignty` |
| "memory" | `mnemosyne` (atom-013) | → `entry` → `MnemosyneEntry` → session continuity |
| "classification" | `taxonomy` (atom-029) | → `category` → `hierarchy` → `ontology` |
| "mood" | `mood` (atom-015) | → `sensory` → `MoodEvent` → `SensoryLexicon` |
| "communication" | `resonance` (atom-022) | → `protocol` → `grammar` → `ResonanceProtocol` |
| "relationship" | `ontology` (atom-017) | → `relation` → `predicate` → `OntologyRelation` |
| "emoji" | `emoji` (atom-006) | → `atom` → `EmojiAtom` → sensory lexicon |

---

*End of Indexer's Report*
*Source: pipeline/atoms/ (30 atoms) · pipeline/molecules/ (17 molecules) · pipeline/taxonomic-analysis.md*
