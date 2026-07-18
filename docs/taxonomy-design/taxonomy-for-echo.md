# TAXONOMY REVIEW — FOR ECHO
### Consistency, Shape, and Cross-Pipeline Integrity
*Prepared from pipeline/atoms/ and pipeline/molecules/ — 2026-06-30*

---

> **Your domain:** The same definition, everywhere. The same shape, every time.
> If a term exists in Python as snake_case, in TypeScript as PascalCase, and in SQL as UPPER_CASE,
> Echo checks whether all three mean the same thing — and flags when they don't.
> This document catalogs every inconsistency, shape conflict, and missing counterpart in the taxonomy.

---

## PART I — CAPITALIZATION CONFLICTS

*The same concept appearing in different cases across the codebase.*

### GROUP A: All-caps constants vs. PascalCase types
These terms appear both as ALL_CAPS constants (usually Python or config) and as PascalCase types (usually TypeScript). Confirm they refer to the same concept.

| Concept | ALL_CAPS form | PascalCase form | Languages | Consistent? |
|---------|--------------|----------------|-----------|-------------|
| council | `COUNCIL` | `Council`, `CouncilHouse` | TS, SQL | ⚠ Partial — `COUNCIL` and `Council` match; `CouncilHouse` is different concept |
| resonance | `RESONANCE`, `RESONANCE_PATTERN_TYPES` | `Resonance`, `ResonanceLink`, `ResonancePatternType` | TS, CSS, MD | ✓ Consistent — constant and type are aligned |
| taxonomy | `TAXONOMY` | `Taxonomy`, `TaxonomyRow` | TS, SQL | ✓ Consistent |
| emoji | `EMOJI`, `EMOJI_CATEGORIES` | `getBreakthroughsWithEmoji` | TS, Python | ~ Partial — `EMOJI` and `EMOJI_CATEGORIES` align; function is mixed case |
| protocol | `PROTOCOL`, `PROTOCOL_TYPE` | `Protocol`, `ProtocolType` | TS, Python, MD | ✓ Consistent — constant and type parallel each other cleanly |
| mood | `MOOD_COLORS` | `MoodFiltersProps`, `MoodColorKey` | TS, CSS | ✓ Consistent |
| acid | `ACID_PERSONA` | `AcidPersona`, `AcidTest` | TS | ~ `ACID_PERSONA` and `AcidPersona` are the same concept — two spellings coexist |
| sovereignty | `SOVEREIGNTY_THRESHOLDS` | `sovereigntyRules` | TS, Python | ⚠ Inconsistent casing: `SOVEREIGNTY_THRESHOLDS` (upper) vs. `sovereigntyRules` (camelCase) |

---

### GROUP B: snake_case vs. camelCase in the same language
These terms appear with different casing conventions within the same language layer.

| Language | Term | Forms found | Verdict |
|----------|------|-------------|---------|
| Python | sovereignty | `sovereigntyRules` (camelCase), `_assess_domain_sovereignty` (snake_case) | ⚠ Inconsistent: Python convention is snake_case; `sovereigntyRules` is a Python camelCase outlier |
| TypeScript | acid | `ACID_PERSONA` (ALL_CAPS) + `AcidPersona` (PascalCase) + `AcidTest` (PascalCase) | ⚠ `ACID_PERSONA` and `AcidPersona` coexist — same thing, different shapes |
| TypeScript | resonance | `ResonancePatternType`, `ResonanceLink`, `.quantum-resonance-text` | ✓ TypeScript types are PascalCase; CSS class is kebab-case — standard, acceptable |
| SQL | folksonomy | `folksonomy` (table, lowercase), `FolksonomyRow` (generated TS type), `idx_folksonomy_tag` (index) | ✓ SQL lowercase table + generated PascalCase types is the standard Supabase pattern — consistent |
| SQL | ontology | `ontology` (table), `OntologyRow`, `idx_ontology_subject` | ✓ Same pattern as folksonomy — consistent |

---

### GROUP C: Casing conflicts with the taxonomy's own rules
The taxonomy declares all atoms as **lowercase canonical** and all molecules as **PascalCase**. Violations:

| Form found in code | Expected | Verdict |
|-------------------|----------|---------|
| `COUNCIL` | `council` (atom) or `CouncilSeat` (molecule) | Acceptable — uppercase constant for an atom is standard |
| `RESONANCE` | `resonance` | Acceptable — constant form |
| `TAXONOMY` | `taxonomy` | Acceptable — constant form |
| `GRAMMAR` | `grammar` | Acceptable — constant form; but only form that exists (the atom has no other implementations) |
| `sovereigntyRules` (camelCase, Python) | `sovereignty_rules` | ⚠ Python should be snake_case |
| `SensoryMode` (TypeScript) | `sensory` (atom) + no molecule named `SensoryMode` | ⚠ `SensoryMode` is an unnamed molecule — it exists in code but not in the taxonomy |
| `SensoryPreferences` (TypeScript) | same — unnamed molecule | ⚠ `SensoryPreferences` is an unnamed molecule — exists in code, missing from taxonomy |
| `SensoryDemo` (TypeScript) | same — unnamed molecule | ⚠ `SensoryDemo` is an unnamed molecule |
| `ResonancePatternType` (TypeScript) | potentially `ResonancePattern` molecule | ⚠ The type exists; the molecule doesn't. `ResonanceGrammar` or `ResonanceProtocol` should absorb it |
| `CouncilHouse`, `CouncilHousesRow` | no taxonomy entry | ⚠ Unnamed molecule — `CouncilHouse` is in the code but not in the taxonomy |

---

## PART II — UNNAMED MOLECULES IN THE CODEBASE

*These are PascalCase compound terms found in the library that decompose into known atoms — but are NOT in the canonical molecules list. They are molecules-without-papers.*

| Term in code | Atoms it decomposes into | Language | Proposed action |
|-------------|------------------------|----------|----------------|
| `SensoryMode` | sensory + mode | TypeScript | Add `mode` as atom; add `SensoryMode` as molecule |
| `SensoryPreferences` | sensory + preferences | TypeScript | Add `preference` as atom; add `SensoryPreferences` as molecule |
| `SensoryDemo` | sensory + demo | TypeScript | Low priority; demo artifact |
| `CouncilHouse` | council + house | TypeScript, SQL | Add `house` as atom; add `CouncilHouse` as molecule |
| `ResonancePatternType` | resonance + pattern + type | TypeScript | Add `pattern` as atom; absorb into `ResonanceGrammar` or create `ResonancePattern` |
| `ResonanceLink` | resonance + link | TypeScript | Add `link` as atom; add `ResonanceLink` as molecule |
| `AcidPersona` | acid + persona | TypeScript | Add `persona` as atom; add `AcidPersona` as molecule |
| `BigotTaxCard` | bigot + tax + card | TypeScript | UI-only; low taxonomy priority |
| `ContentTaxonomy` | content + taxonomy | TypeScript | Add `content` as atom; add `ContentTaxonomy` as molecule |
| `LibraryCategory` | library + category | TypeScript | Add `library` as atom; add `LibraryCategory` as molecule |
| `MoodColorKey` | mood + color + key | TypeScript | CSS utility; `color` and `key` are potential new atoms |
| `AnalysisTag` | analysis + tag | TypeScript | Add `analysis` as atom; add `AnalysisTag` as molecule |
| `TimelineEventType` | timeline + event + type | TypeScript | Complex — possibly `timeline` as new atom |

**Count: 13 unnamed molecules discovered in code.** These suggest the taxonomy is undercounting its own concepts.

---

## PART III — MOLECULES MISSING FROM SQL OR TYPESCRIPT

*15 of 17 molecules have TypeScript schemas in the pipeline. 15 of 17 have SQL schemas. But only 5 molecules are confirmed present in live code.*

### SQL Schema Status

| Molecule | Pipeline SQL | Live SQL table? | Gap |
|----------|-------------|-----------------|-----|
| AcidTest | ✓ | ⚠ Unclear — `acid_test_questions` referenced but table existence unconfirmed | |
| AcidTestQuestion | ✓ | ✗ No live table | Add to migration |
| BigotTax | ✓ | ✗ No live table (`bigot_tax_rates` exists only in pipeline) | Add to migration |
| CouncilSeat | ✓ | ✗ No live table | Add to migration |
| EmojiAtom | ✓ | ✗ No live table | Add to migration |
| EmojiMolecule | ✓ | ✗ No live table | Add to migration |
| FolksonomyTag | ✓ | ✓ `folksonomy` table confirmed in Supabase | Naming mismatch: table is `folksonomy`, molecule is `FolksonomyTag` |
| HierarchyNode | ✓* | ✗ No live table (*schema is a comment, not DDL) | Fix schema; add to migration |
| MnemosyneEntry | ✓ | ✗ No live table | Add to migration |
| MoodEvent | ✓ | ✗ No live table | Add to migration |
| OntologyRelation | ✓ | ✓ `ontology` table confirmed in Supabase | Naming mismatch: table is `ontology`, molecule is `OntologyRelation` |
| ResonanceGrammar | ✗ | ✗ | By design — TypeScript only |
| ResonanceProtocol | ✓ | ✗ No live table | Add to migration |
| SensoryAtom | ✓ | ✗ No live table | Add to migration |
| SensoryLexicon | ✗ | ✗ | By design — TypeScript interface only |
| SovereigntyScore | ✓ | ✗ No live table | Add to migration |
| TaxonomyNode | ✓ | ✓ `taxonomy` table confirmed in Supabase | Naming mismatch: table is `taxonomy`, molecule is `TaxonomyNode` |

**Summary:** 3 molecules have confirmed live SQL tables. 12 have pipeline schemas but no live migration. 2 are intentionally SQL-free.

### TypeScript Type Status

| Molecule | Pipeline TS | Live TS type? |
|----------|------------|---------------|
| AcidTest | ✓ | ✓ `AcidTestFormProps`, `AcidTestAnswersRowSchema` |
| AcidTestQuestion | ✓ | ✗ |
| BigotTax | ✓ | ~ `BigotTaxCard` (component, not type) |
| CouncilSeat | ✓ | ✗ |
| EmojiAtom | ✓ | ✗ |
| EmojiMolecule | ✓ | ✗ |
| FolksonomyTag | ✓ | ✓ `FolksonomyRow`, `FolksonomyTargetType` (Supabase-generated) |
| HierarchyNode | ✓ | ✗ |
| MnemosyneEntry | ✓ | ✗ |
| MoodEvent | ✓ | ✓ `MoodEvent` (TypeScript type exists) |
| OntologyRelation | ✓ | ✓ `OntologyRow`, `OntologyPredicate` (Supabase-generated) |
| ResonanceGrammar | ✓ | ✗ |
| ResonanceProtocol | ✓ | ✗ |
| SensoryAtom | ✓ | ✗ |
| SensoryLexicon | ✓ | ~ `SensoryPreferences` (related but not the canonical type) |
| SovereigntyScore | ✓ | ~ `getSovereigntyScore`, `calculateSovereigntyScore` (functions, not type) |
| TaxonomyNode | ✓ | ✓ `TaxonomyNodeType`, `isValidTaxonomyNodeType` |

**Summary:** 5 molecules have confirmed live TypeScript types. 10 have pipeline schemas but no live implementation. 2 have related-but-different live forms.

---

## PART IV — NAMING INCONSISTENCIES BETWEEN LAYERS

*Where the same concept has different names in SQL vs. TypeScript vs. Python.*

| Concept | SQL name | TypeScript name | Python name | Verdict |
|---------|----------|----------------|-------------|---------|
| The ontology graph | `ontology` (table) | `OntologyRow`, `OntologyPredicate` | `OntologyInsert` | ✓ Consistent naming across layers |
| Folksonomy records | `folksonomy` (table) | `FolksonomyRow`, `FolksonomyTargetType` | — | ✓ Consistent |
| The taxonomy tree | `taxonomy` (table) | `TaxonomyRow`, `TaxonomyNodeType` | — | ✓ Consistent |
| Acid test | — | `AcidTestFormProps`, `AcidTestAnswersRowSchema` | — | ~ Inconsistency: no SQL table named `acid_test`; schema has `acid_tests` |
| Sovereignty scoring | — | `getSovereigntyScore` (camelCase fn) | `_assess_domain_sovereignty`, `SOVEREIGNTY_THRESHOLDS` | ⚠ No shared name: TypeScript uses `SovereigntyScore`, Python uses `domain_sovereignty` |
| Resonance patterns | — | `ResonancePatternType` (TS) | `RESONANCE_PATTERN_TYPES` (Python) | ⚠ Same concept, different names: `ResonancePatternType` vs. `RESONANCE_PATTERN_TYPES` |
| Sensory settings | — | `SensoryPreferences`, `SensoryMode` | `DEFAULT_SENSORY_PREFERENCES`, `SENSORY_MODE` | ✓ Reasonably consistent: uppercase constants in Python, PascalCase types in TypeScript |
| Council governance | — | — | `create_eternal_seat` | ⚠ Sole implementation is a single Python function with a unique name — nothing else matches |

---

## PART V — CROSS-PIPELINE CONSISTENCY ISSUES

*Where the pipeline's own documents disagree with each other.*

### Issue 1: Atom definition truncation
**Location:** `pipeline/atoms/index.json`
The `definition` field in the index is truncated at 80 characters. The full definition lives in `atom-NNN.json`. The index and the individual files must agree — but the truncation is done without ellipsis, so it reads as if complete.

**Example:** `"definition": "The irreducible vocabulary unit. Each atom is a single concept — defined once, l"` — this reads as complete but cuts off mid-sentence.

**Recommendation:** Either truncate with `...` in the index, or store the full definition in both places.

---

### Issue 2: lexicon definition inconsistency
**Location:** `pipeline/taxonomic-analysis.md` vs. `pipeline/atoms/atom-012.json`

- `taxonomic-analysis.md`: *"Irreducible component of SensoryLexicon — a vocabulary system."*
- `regenerate_pipeline.py` (source): *"A vocabulary system — the organized set of terms in a domain."*

The taxonomic-analysis entry emphasizes its derived origin. The atom definition emphasizes its meaning. These are not inconsistent, but they read differently — an auditor seeing both would think they describe different things.

**Recommendation:** Standardize to the full definition everywhere. The `derived_from` field already records the origin; the definition shouldn't repeat it.

---

### Issue 3: mnemosyne related atom mismatch
**Location:** `pipeline/taxonomic-analysis.md` lists `mnemosyne` related atoms as `entry` and `session`.
**But:** `session` is NOT a canonical atom. It doesn't appear anywhere in `CANONICAL_ATOMS`.

**This is a dangling reference.** The taxonomic analysis generated a `session` relation that points to an atom that doesn't exist.

**Recommendation:** Either add `session` as a canonical atom or remove it from `mnemosyne`'s related list.

---

### Issue 4: test frequency distortion
**Location:** `pipeline/taxonomic-analysis.md`
`test` frequency: **6,943** — almost entirely numpy/scipy test infrastructure.

Every other atom's frequency reflects QPF usage. `test` frequency reflects external library usage. Cited together in any report, this creates a false impression that `test` is the most-used QPF concept.

**Recommendation:** The taxonomic analysis should distinguish `frequency_qpf` from `frequency_total`. Or add a `pollution_warning` flag for atoms where external usage overwhelms QPF usage.

---

### Issue 5: molecule frequency = 0 vs. verified library presence
**Location:** `pipeline/taxonomic-analysis.md` — molecules section
`AcidTest` frequency: 34 (found as `AcidTestFormProps`, etc.)
`BigotTax` frequency: 1 (found as `BigotTaxCard`)

But: the `pipeline/molecules/index.json` entry for both molecules shows `has_ts: true` — indicating they have TypeScript schemas. The molecule builder found sources.

No conflict, but the design-only molecules (frequency: 0) all show `has_ts: true` in the index because **the TypeScript schema was embedded by the regeneration script, not extracted from the codebase.** A reader of the index would wrongly conclude that all 17 molecules have live TypeScript implementations.

**Recommendation:** Distinguish `has_canonical_ts_schema` (pipeline-defined) from `has_live_ts_implementation` (found in codebase).

---

## PART VI — INCONSISTENCY SUMMARY TABLE

| # | Inconsistency | Severity | Location | Recommendation |
|---|--------------|----------|----------|---------------|
| 1 | `sovereigntyRules` camelCase in Python | Medium | Python source | Rename to `sovereignty_rules` |
| 2 | `ACID_PERSONA` and `AcidPersona` coexist | Medium | TypeScript | Standardize — constant or type, not both |
| 3 | `session` listed as mnemosyne related atom but not defined | High | taxonomic-analysis.md | Add `session` atom or remove reference |
| 4 | `test` frequency polluted by 6,900+ external usages | High | taxonomic-analysis.md | Add frequency_qpf vs. frequency_total |
| 5 | `SensoryMode`, `SensoryPreferences` are unnamed molecules | Medium | TypeScript source | Add to canonical molecules or scope as auxiliary |
| 6 | `CouncilHouse` is an unnamed molecule | Medium | SQL + TypeScript | Add to taxonomy or document as out-of-scope |
| 7 | `ResonancePatternType` is an unnamed molecule | Medium | TypeScript | Absorb into `ResonanceGrammar` or name separately |
| 8 | `AcidPersona` is an unnamed molecule | Low | TypeScript | Add `persona` atom + `AcidPersona` molecule |
| 9 | Index definition truncated without ellipsis | Low | pipeline/atoms/index.json | Add `...` or store full text |
| 10 | `has_ts: true` conflates canonical schema with live code | High | pipeline/molecules/index.json | Add `has_live_ts` field |
| 11 | `HierarchyNode` SQL schema is a comment, not DDL | Medium | pipeline/molecules/mol-008.json | Write proper DDL using ltree or parent_id |
| 12 | Molecule SQL table names don't match molecule names | Low | Supabase + pipeline | Expected — document the naming convention |
| 13 | `sovereignty` named inconsistently across layers | Medium | Python + TypeScript | Align on `SovereigntyScore` / `sovereignty_score` |
| 14 | `ResonancePatternType` (TS) vs. `RESONANCE_PATTERN_TYPES` (Python) | Low | Source files | Accept as convention; document it |

---

## PART VII — ACTIONABLE RECOMMENDATIONS FOR ECHO

**Immediate (before Sanctuary v2):**

1. Remove `session` from `mnemosyne`'s related list in `taxonomic-analysis.md` — or add `session` as a canonical atom (preferred).
2. Add `frequency_qpf` and `pollution_flag` fields to atoms where external usage dominates (`test`, `predicate`, `node`, `relation`).
3. Rename `sovereigntyRules` to `sovereignty_rules` in the Python source — it's a style violation in Python context.
4. Disambiguate `ACID_PERSONA` and `AcidPersona` — pick one canonical form.
5. Update `pipeline/molecules/index.json` to add `has_live_ts` and `has_live_sql` booleans, distinct from `has_ts`/`has_sql` (which mean "has a canonical schema in the pipeline").

**Next taxonomy review cycle:**

6. Decide fate of the 13 unnamed molecules — promote 3-5 to canonical status (starting with `SensoryMode`, `CouncilHouse`, `ResonanceLink`).
7. Fix `HierarchyNode` SQL schema — replace the `-- via ltree` comment with actual DDL using `parent_id UUID REFERENCES taxonomy(id)`.
8. Run the pipeline's decomposition engine against new library definitions quarterly to surface newly-appearing unnamed molecules.

---

*End of Echo's Report*
*Source: pipeline/atoms/ (30 atoms) · pipeline/molecules/ (17 molecules) · pipeline/taxonomic-analysis.md · library/ (30,249 definitions)*
