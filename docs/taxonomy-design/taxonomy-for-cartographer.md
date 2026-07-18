# TAXONOMY REVIEW — FOR THE CARTOGRAPHER
### Scope, Definitions, and Boundaries
*Prepared from pipeline/atoms/ and pipeline/molecules/ — 2026-06-30*

---

> **Your domain:** Scope notes, definitions, etymology, conceptual boundaries, and design gaps.
> This document contains everything needed to assess whether the taxonomy is well-defined,
> correctly bounded, and ready for implementation.

---

## PART I — CANONICAL ATOMS
*30 atoms. Each is a single irreducible word.*

---

### acid `atom-001` · color: #E17055

| Field | Value |
|-------|-------|
| **Definition** | The quality of definitiveness in assessment — irreducible component of AcidTest. |
| **Etymology** | Latin *acidus* — 'sharp, sour'. In gold assay: acid determines purity without ambiguity. |
| **Origin** | Derived by decomposing `AcidTest` |
| **Related atoms** | `test` |
| **Sensory** | Sound: metal on glass — sharp, definitive · Texture: citrus pith · Temperature: 0.85 |
| **Frequency in library** | 13 |
| **Found as** | `AcidPersona`, `AcidQuestionType`, `acid_test_questions`, `acid_test_answers`, `ACID_PERSONA` |
| **Scope note** | `acid` is meaningful ONLY in the compound `AcidTest`. As a standalone atom, it has no QPF use outside decomposition. Consider whether it deserves its own freestanding definition or should be marked `derived-only`. |

---

### atom `atom-002` · color: #6C5CE7

| Field | Value |
|-------|-------|
| **Definition** | The irreducible vocabulary unit. Each atom is a single concept — defined once, linked everywhere. |
| **Etymology** | Greek *atomos* — 'indivisible' |
| **Related atoms** | `molecule`, `category`, `taxonomy` |
| **Children** | `emoji` |
| **Sensory** | Sound: single pure sine tone — indivisible · Texture: smooth sphere, no seam · Temperature: 0.50 |
| **Frequency in library** | 5 |
| **Found as** | `atomDark`, `solarizedDarkAtom`, `_parse_marker_atom`, `MarkerAtom`, `query_atom` |
| **Scope note** | All library occurrences of `atom` are from external libraries (syntax themes, parsers). None implement the QPF atom concept itself. The concept exists only in design. **Priority gap.** |

---

### bigot `atom-003` · color: #636E72

| Field | Value |
|-------|-------|
| **Definition** | An agent of exclusionary belief — irreducible component of `BigotTax`. |
| **Etymology** | Old French: originally an oath ('by God'), evolved to 'fanatical adherent' |
| **Origin** | Derived by decomposing `BigotTax` |
| **Related atoms** | `tax` |
| **Sensory** | Sound: static on a closed frequency · Texture: sandpaper — abrasive, resistant · Temperature: 0.90 |
| **Frequency in library** | 0 |
| **Scope note** | Design-only. No implementation anywhere in the codebase. `BigotTax` is a named pricing concept but its constituent atoms have never been named in code. Scope question: is `bigot` a moral category atom (a type of account) or an architectural atom (a pricing rule parameter)? The answer determines whether it belongs in the taxonomy or in business logic only. |

---

### category `atom-004` · color: #00B894

| Field | Value |
|-------|-------|
| **Definition** | A named grouping of molecules within a taxonomy domain. |
| **Etymology** | Greek *katêgoria* — 'statement, predicate' |
| **Parent** | `taxonomy` |
| **Related atoms** | `hierarchy`, `taxonomy` |
| **Sensory** | Sound: filing cabinet closing — organized, final · Texture: labeled divider card — crisp edge · Temperature: 0.30 |
| **Frequency in library** | 120 |
| **Found as** | `LibraryCategory`, `CreatorCategoryLinksRow`, `ObjectCategory`, `ScreenCategory`, `ContentCategory`, `AnalyticsCategory` |
| **Scope note** | High frequency but high semantic spread — `category` is used for library categories, content categories, analytics categories, screen categories. The QPF definition ('a named grouping within a taxonomy domain') is narrower than all these uses. **Scope conflict: the codebase uses `category` generically; the taxonomy uses it precisely.** Recommendation: disambiguate with a `category_type` field in implementations. |

---

### council `atom-005` · color: #2D3436

| Field | Value |
|-------|-------|
| **Definition** | The governing body of the Sanctuary. Each seat holds a sacred duty. |
| **Etymology** | Latin *concilium* — 'assembly' |
| **Related atoms** | `sovereignty`, `seat` |
| **Children** | `seat` |
| **Sensory** | Sound: stone chamber resonance — collective, weighty · Texture: carved granite — ancient, load-bearing · Temperature: 0.40 |
| **Frequency in library** | 183 |
| **Found as** | `Council`, `COUNCIL`, `CouncilHouse`, `CouncilHousesRow`, `CouncilHousesInsert`, `CouncilHousesUpdate` |
| **Scope note** | `council` has strong code presence, but `CouncilHouse` is a different concept than the governing Council. The taxonomy defines `council` as the Sanctuary's governing body; the code also uses it for a physical location type. **Boundary needed:** `council` (governance) vs. `CouncilHouse` (a place type — possibly its own molecule). |

---

### emoji `atom-006` · color: #FDCB6E

| Field | Value |
|-------|-------|
| **Definition** | Symbolic atoms — glyphic representations of concepts in the sensory lexicon. |
| **Etymology** | Japanese: *e* (picture) + *moji* (character) |
| **Parent** | `atom` |
| **Related atoms** | `sensory`, `lexicon` |
| **Sensory** | Sound: notification ping — immediate, glyphic · Texture: smooth glass button · Temperature: 0.55 |
| **Frequency in library** | 50 |
| **Found as** | `EMOJI_CATEGORIES`, `get_model_emoji`, `_get_file_emoji`, `getBreakthroughsWithEmoji`, `🏛️ FILE CLASSIFICATION SYSTEM: EMOJI TAXONOMY` |
| **Scope note** | `emoji` is used both as a utility concept (get-file-emoji, model-emoji functions) and as a QPF taxonomy atom. The file-classification usage is closest to the QPF intent. Scope is well-defined; boundary risk is implementation quality rather than definition quality. |

---

### entry `atom-007` · color: #DFE6E9

| Field | Value |
|-------|-------|
| **Definition** | A single recorded item in a memory or catalog system. |
| **Etymology** | Old French *entree* — 'act of entering' |
| **Related atoms** | `mnemosyne` |
| **Sensory** | Sound: key click — singular, recorded · Texture: thin paper — light, archival · Temperature: 0.25 |
| **Frequency in library** | 53 |
| **Found as** | `BaseIndexEntry`, `RefLogEntry`, `IndexEntry`, `EntryTup`, `EnumMappingEntry`, `LedgerEntryType` |
| **Scope note** | All current implementations are in Python/CSS/TypeScript but not SQL. This is the atom for `MnemosyneEntry`. Boundary: `entry` (a recorded item) is distinct from `event` (a time-bound occurrence). Both exist in the taxonomy; ensure implementations don't blur this. |

---

### event `atom-008` · color: #E84393

| Field | Value |
|-------|-------|
| **Definition** | A discrete occurrence in time with associated data. |
| **Etymology** | Latin *eventus* — 'outcome, occurrence' |
| **Related atoms** | `mood`, `resonance` |
| **Sensory** | Sound: bell strike — discrete, moment-marking · Texture: lightning — instantaneous, electric · Temperature: 0.75 |
| **Frequency in library** | 67 |
| **Found as** | `TimelineEventType`, `CalendarEventType`, `EventCardData`, `WindowEventType`, `EventCardRenderer` |
| **Scope note** | `event` covers time-bound occurrences: mood events, calendar events, window events. The QPF definition is sound. Gap: no SQL implementation despite the `MoodEvent` molecule having a full SQL schema. The atom predates the molecule in the taxonomy but has no SQL table of its own. |

---

### folksonomy `atom-009` · color: #74B9FF

| Field | Value |
|-------|-------|
| **Definition** | User-generated tagging system — informal classification parallel to expert taxonomy. |
| **Etymology** | *Folk* + *taxonomy* (coined 2004, Thomas Vander Wal) |
| **Parent** | `taxonomy` |
| **Related atoms** | `tag`, `taxonomy` |
| **Sensory** | Sound: crowd murmur — emergent, plural · Texture: soft mesh — user-woven, uneven · Temperature: 0.45 |
| **Frequency in library** | 33 |
| **Found as** | `FolksonomyRow`, `FolksonomyTargetType`, `FolksonomyInsert`, `FolksonomyUpdate`, `idx_folksonomy_tag` |
| **Scope note** | Well-defined. The SQL table `folksonomy` exists. `folksonomy` is the system; `FolksonomyTag` is a record in it. The boundary between `folksonomy` (the system atom) and `FolksonomyTag` (the molecule for individual records) is correct. |

---

### grammar `atom-010` · color: #A29BFE

| Field | Value |
|-------|-------|
| **Definition** | The structural rules governing a language or communication system. |
| **Etymology** | Greek *grammatike* — 'art of letters' |
| **Related atoms** | `resonance`, `protocol` |
| **Sensory** | Sound: metronome — structural, recurring · Texture: linen — woven rule, consistent grain · Temperature: 0.30 |
| **Frequency in library** | 2 |
| **Found as** | `GRAMMAR` (constant only) |
| **Scope note** | **Design-only. Critical gap.** `grammar` is foundational to `ResonanceGrammar` — the rules of the communication system — but has no TypeScript, Python, or SQL implementation anywhere. Only appears as a bare constant. The definition needs to be formalized before `ResonanceGrammar` can be implemented. **Recommend: define the grammar rules first, then implement.** |

---

### hierarchy `atom-011` · color: #55EFC4

| Field | Value |
|-------|-------|
| **Definition** | The structural ordering of concepts by parent-child relationships. |
| **Etymology** | Greek *hierarchia* — 'rule of a high priest' |
| **Parent** | `taxonomy` |
| **Related atoms** | `category`, `node`, `taxonomy` |
| **Sensory** | Sound: ascending piano scale — ordered, directional · Texture: stacked paper — layered, weight at base · Temperature: 0.35 |
| **Frequency in library** | 8 |
| **Found as** | `_build_concept_hierarchy`, `_build_list_hierarchy`, `_calculate_hierarchy_depth`, `_build_topic_hierarchy` |
| **Scope note** | Python-only. `hierarchy` appears as a builder pattern in Python, not as a data type in TypeScript or SQL. The `HierarchyNode` molecule (the data structure) is design-only. The atom is well-defined; the molecule needs formal implementation. |

---

### lexicon `atom-012` · color: #B2BEC3

| Field | Value |
|-------|-------|
| **Definition** | A vocabulary system — the organized set of terms in a domain. |
| **Etymology** | Greek *lexikon* — 'of words' |
| **Origin** | Derived by decomposing `SensoryLexicon` |
| **Related atoms** | `sensory`, `taxonomy` |
| **Sensory** | Sound: pages turning — collected, organized · Texture: vellum — aged, precise · Temperature: 0.30 |
| **Frequency in library** | 0 |
| **Scope note** | **Design-only. No code presence whatsoever.** `lexicon` exists only because `SensoryLexicon` needed decomposing. As a standalone concept, it lacks QPF grounding. Scope question: is `lexicon` a genuine QPF atom (a vocabulary container) or is it a borrowed word that only has meaning inside `SensoryLexicon`? If the latter, it may be a **satellite atom** — valid in composition but not requiring standalone implementation. |

---

### mnemosyne `atom-013` · color: #5D2D91

| Field | Value |
|-------|-------|
| **Definition** | The continuity and memory system. Named for the Greek goddess of memory. |
| **Etymology** | Greek: Goddess of Memory, mother of the Muses |
| **Related atoms** | `entry` |
| **Sensory** | Sound: echoing footsteps in a marble library · Texture: old silk — smooth with depth, holds shape · Temperature: 0.20 |
| **Frequency in library** | 10 |
| **Found as** | `MNEMOSYNE`, `.text-entity-mnemosyne`, `🏛️ MNEMOSYNE — The Observatory`, `mnemosyne` (CSS class) |
| **Scope note** | Present in CSS and Markdown only — in design artifacts, not in code. **Critical gap:** `mnemosyne` is a foundational system (session continuity, memory architecture) but has no TypeScript interface, no Python class, and no SQL table. `MnemosyneEntry` has a canonical SQL schema but it exists only in the pipeline, not in the live database. |

---

### molecule `atom-014` · color: #00CEC9

| Field | Value |
|-------|-------|
| **Definition** | A composition of two or more atoms forming a named semantic unit. |
| **Etymology** | Chemistry: atoms bonded together |
| **Related atoms** | `atom`, `category` |
| **Sensory** | Sound: harmonic chord — multiple tones, bonded · Texture: beads on string — composed, linked · Temperature: 0.50 |
| **Frequency in library** | 0 |
| **Scope note** | **Design-only. The meta-atom.** `molecule` defines itself by its relationship to `atom`. Its absence from code is by design — it is the abstract name for the category of things like `AcidTest`, `CouncilSeat`. It does not need implementation; it needs a canonical reference document. |

---

### mood `atom-015` · color: #FD79A8

| Field | Value |
|-------|-------|
| **Definition** | A subjective emotional or atmospheric state. |
| **Etymology** | Old English *mod* — 'mind, spirit, courage' |
| **Related atoms** | `event`, `sensory` |
| **Sensory** | Sound: cello sustained note — felt before heard · Texture: velvet — direction-sensitive, deep nap · Temperature: 0.55 |
| **Frequency in library** | 19 |
| **Found as** | `MoodFiltersProps`, `MOOD_COLORS`, `MoodColorKey`, `.text-mood-calm`, `.text-mood-focused`, `.text-mood-creative` |
| **Scope note** | CSS mood classes (`.text-mood-calm`, `.text-mood-focused`) are a strong implementation signal. `MOOD_COLORS` maps moods to colors — directly related to the sensory lexicon concept. Scope is well-bounded. Gap: no SQL table for mood data despite `MoodEvent` having a full schema. |

---

### node `atom-016` · color: #636E72

| Field | Value |
|-------|-------|
| **Definition** | A single point in a graph or tree — carries data and references. |
| **Etymology** | Latin *nodus* — 'knot' |
| **Related atoms** | `hierarchy`, `taxonomy` |
| **Sensory** | Sound: click — singular connection point · Texture: smooth river pebble — neutral, functional · Temperature: 0.40 |
| **Frequency in library** | 68 |
| **Found as** | `Node`, `NodeVisitor`, `DependencyNode`, `ReactNode`, `TextNode` |
| **Scope note** | High frequency but high semantic bleed — `ReactNode`, `TextNode` are frontend concepts unrelated to QPF graph/tree nodes. `DependencyNode` is closer. `HierarchyNode` and `TaxonomyNode` are the intended QPF molecules. Scope should explicitly exclude React/AST node usages. |

---

### ontology `atom-017` · color: #2D3436

| Field | Value |
|-------|-------|
| **Definition** | A formal model of concept relationships: subjects, objects, and predicates. |
| **Etymology** | Greek *ontos* (being) + *logos* (study) |
| **Parent** | `taxonomy` |
| **Related atoms** | `relation`, `predicate`, `taxonomy` |
| **Children** | `predicate`, `relation` |
| **Sensory** | Sound: resonance chamber hum — structural, foundational · Texture: carved marble — precise, permanent · Temperature: 0.30 |
| **Frequency in library** | 49 |
| **Found as** | `OntologyRow`, `OntologyPredicate`, `OntologyInsert`, `OntologyUpdate`, `idx_ontology_subject` |
| **Scope note** | Well-implemented. The SQL `ontology` table exists. `OntologyPredicate` is a TypeScript type (matches the `predicate` atom). `OntologyRelation` is the molecule for typed edges. Scope is tight and well-bounded. |

---

### predicate `atom-018` · color: #A29BFE

| Field | Value |
|-------|-------|
| **Definition** | The property or relationship asserted of a subject in an ontology triple. |
| **Etymology** | Latin *praedicatum* — 'that which is asserted' |
| **Parent** | `ontology` |
| **Related atoms** | `ontology`, `relation` |
| **Sensory** | Sound: assertion tone — definitive, relational · Texture: iron filing — directional, magnetic · Temperature: 0.60 |
| **Frequency in library** | 45 |
| **Found as** | `Predicate`, `PredicateComposition`, `_get_predicate_expr`, `ConditionalPredicateMarkPropFieldOrDatumDef` |
| **Scope note** | High frequency but most occurrences are from Vega-Lite/visualization libraries (`ConditionalPredicateMarkPropFieldOrDatumDef`). The QPF `predicate` is the narrow ontology sense. **Boundary needed:** QPF `predicate` = ontology relation type. External `predicate` = conditional expression in data visualization. These share a word but not a meaning. |

---

### protocol `atom-019` · color: #74B9FF

| Field | Value |
|-------|-------|
| **Definition** | A formal procedure for communication or action. |
| **Etymology** | Greek *protokollon* — 'first glued sheet' (official document) |
| **Related atoms** | `resonance`, `grammar` |
| **Sensory** | Sound: dial tone — procedural, awaiting · Texture: embossed paper — formal, official · Temperature: 0.30 |
| **Frequency in library** | 139 |
| **Found as** | `Protocol`, `PROTOCOL`, `ProtocolType`, `activate_whiteboard_protocol`, `isValidProtocolType` |
| **Scope note** | High frequency. `ProtocolType` and `PROTOCOL_TYPE` are strong signals — typed protocol categories exist in the codebase. The QPF `ResonanceProtocol` is the canonical implementation target. No SQL table for protocols despite the molecule having a full schema. |

---

### question `atom-020` · color: #FDCB6E

| Field | Value |
|-------|-------|
| **Definition** | A single query in an assessment or diagnostic. |
| **Etymology** | Latin *quaestio* — 'inquiry' |
| **Related atoms** | `acid`, `test` |
| **Sensory** | Sound: rising vocal inflection — open, seeking · Texture: rough-edged paper — unresolved · Temperature: 0.65 |
| **Frequency in library** | 6 |
| **Found as** | `ResearchQuestion`, `_classify_question_type`, `.oracle-question` |
| **Scope note** | Lower frequency than expected for a core assessment concept. `AcidTestQuestion` (mol-002) is the primary compound. Scope is narrow: `question` in the QPF sense means specifically a scored assessment item, not a generic query. |

---

### relation `atom-021` · color: #00B894

| Field | Value |
|-------|-------|
| **Definition** | A named edge between two concepts in the ontology graph. |
| **Etymology** | Latin *relatio* — 'a bringing back, reference' |
| **Parent** | `ontology` |
| **Related atoms** | `ontology`, `predicate` |
| **Sensory** | Sound: bridge tone — connector, span · Texture: woven fiber — interlaced, relational · Temperature: 0.40 |
| **Frequency in library** | 5 |
| **Found as** | `DuckDBPyRelation`, `RelationMap`, `is_duckdb_relation` |
| **Scope note** | Almost all occurrences are from DuckDB library — a database relation concept, not an ontology edge. The QPF `relation` (a directed edge in the ontology graph) is not implemented anywhere. **Name collision risk:** SQL `RELATION` and QPF `relation` share a word but mean different things. |

---

### resonance `atom-022` · color: #6C5CE7

| Field | Value |
|-------|-------|
| **Definition** | Sympathetic vibration — the governing metaphor for the communication protocol. |
| **Etymology** | Latin *resonare* — 'to resound' |
| **Related atoms** | `grammar`, `protocol` |
| **Sensory** | Sound: cello low C string — sympathetic, sustained · Texture: honey at room temperature — viscous, warm, cohesive · Temperature: 0.45 |
| **Frequency in library** | 77 |
| **Found as** | `Resonance`, `RESONANCE`, `ResonancePatternType`, `ResonanceLink`, `.quantum-resonance-text`, `RESONANCE_PATTERN_TYPES` |
| **Scope note** | Strong codebase presence. `ResonancePatternType` and `RESONANCE_PATTERN_TYPES` are significant — they define the typed categories of resonance. No SQL table despite being the project's governing metaphor. `ResonanceGrammar` and `ResonanceProtocol` are its primary molecules. |

---

### score `atom-023` · color: #FDCB6E

| Field | Value |
|-------|-------|
| **Definition** | A computed numeric measure of alignment or qualification. |
| **Etymology** | Old Norse *skor* — 'notch, tally' |
| **Related atoms** | `sovereignty`, `acid` |
| **Sensory** | Sound: abacus click — counted, tallied · Texture: rough slate — scratched notation · Temperature: 0.50 |
| **Frequency in library** | 12 |
| **Found as** | `getVesselCapacityFromScore`, `CoherenceScore`, `ValidationScore`, `PerformanceScore`, `execute_full_score` |
| **Scope note** | `score` appears in multiple distinct scoring contexts: vessel capacity, coherence, validation, performance. The QPF definition (membership alignment score) is narrower. `SovereigntyScore` is the canonical QPF molecule. No SQL atom table. |

---

### seat `atom-024` · color: #2D3436

| Field | Value |
|-------|-------|
| **Definition** | A named position in the Council with a defined role and responsibility. |
| **Etymology** | Old English *sete* — 'act of sitting, position' |
| **Parent** | `council` |
| **Related atoms** | `council` |
| **Sensory** | Sound: chair settling — weight, position claimed · Texture: carved wood — shaped for purpose · Temperature: 0.40 |
| **Frequency in library** | 1 |
| **Found as** | `create_eternal_seat` (one Python function) |
| **Scope note** | Extremely sparse implementation for a core governance concept. The seven Council seats (Cartographer, Indexer, Echo, Compass, Hearth, Chancellor, Seer) are defined only in conversation and design. `CouncilSeat` (mol-004) has a TypeScript type and SQL schema in the pipeline but neither exists in the live codebase. **High priority for Sanctuary v2 implementation.** |

---

### sensory `atom-025` · color: #E84393

| Field | Value |
|-------|-------|
| **Definition** | Of or relating to sensation — the raw material of experience. |
| **Etymology** | Latin *sensorium* — 'the seat of sensation' |
| **Origin** | Derived by decomposing `SensoryLexicon` |
| **Related atoms** | `lexicon`, `atom` |
| **Sensory** | Sound: synesthetic hum — cross-modal, alive · Texture: fingertips on skin — immediate, alive · Temperature: 0.65 |
| **Frequency in library** | 21 |
| **Found as** | `SensoryPreferences`, `SensoryMode`, `SensoryDemo`, `DEFAULT_SENSORY_PREFERENCES`, `parseSensoryPreferences` |
| **Scope note** | Has implementation as `SensoryPreferences` and `SensoryMode` — QPF concepts in the codebase. No SQL. The `SensoryLexicon` type (TypeScript interface with color/sound/texture/temperature fields) is the canonical molecule, but the SQL schema doesn't exist yet. |

---

### sovereignty `atom-026` · color: #1E1E2E

| Field | Value |
|-------|-------|
| **Definition** | The state of complete self-determination — in persons, communities, and systems. |
| **Etymology** | Old French *soveraineté* — 'supremacy' |
| **Related atoms** | `council`, `score` |
| **Sensory** | Sound: bell tower — authoritative, self-determined · Texture: iron ring — unbroken, heavy · Temperature: 0.50 |
| **Frequency in library** | 8 |
| **Found as** | `sovereigntyRules`, `_summarize_sovereignty`, `_assess_domain_sovereignty`, `SOVEREIGNTY_THRESHOLDS` |
| **Scope note** | Appears in sovereignty assessment functions. `SOVEREIGNTY_THRESHOLDS` is significant — thresholds define what constitutes full sovereignty. `SovereigntyScore` is the molecule. No SQL atom table. |

---

### tag `atom-027` · color: #74B9FF

| Field | Value |
|-------|-------|
| **Definition** | A user-assigned label linking content to a concept. |
| **Etymology** | Origin uncertain; possibly Swedish *tagg* — 'point, spike' |
| **Related atoms** | `folksonomy` |
| **Sensory** | Sound: sticker peel — user-applied, informal · Texture: adhesive label — light, repositionable · Temperature: 0.40 |
| **Frequency in library** | 49 |
| **Found as** | `Tag`, `TagReference`, `TagObject`, `PreTag`, `CodeTag`, `AnalysisTag` |
| **Scope note** | High frequency but high semantic spread — `PreTag` and `CodeTag` are HTML/CSS concepts. `AnalysisTag` is closer to the QPF tag concept. The QPF `tag` is a folksonomy tag — user-generated. CSS/HTML tags are a different concept entirely. No SQL despite `FolksonomyTag` molecule having a full SQL schema. |

---

### tax `atom-028` · color: #636E72

| Field | Value |
|-------|-------|
| **Definition** | A fee levied on harmful actors — irreducible component of `BigotTax`. |
| **Etymology** | Latin *taxare* — 'to evaluate, charge' |
| **Origin** | Derived by decomposing `BigotTax` |
| **Related atoms** | `bigot`, `score` |
| **Sensory** | Sound: cash register — levied, transactional · Texture: rough paper receipt — mandatory, formal · Temperature: 0.65 |
| **Frequency in library** | 5 |
| **Found as** | `Tax`, `TaxReceipt`, `TaxReceiptProps`, `Tax Evasion vs Tax Avoidance Explained` |
| **Scope note** | Present in TypeScript and Markdown (a named article). `TaxReceipt` is a UI component. No Python, no SQL. The QPF `tax` is a pricing mechanism atom — specific to the BigotTax system. The broader financial meaning of `tax` creates semantic bleed from library imports. |

---

### taxonomy `atom-029` · color: #00B894

| Field | Value |
|-------|-------|
| **Definition** | A hierarchical system of categories, organized by concept relationships. |
| **Etymology** | Greek *taxis* (arrangement) + *nomos* (law) |
| **Related atoms** | `category`, `hierarchy`, `ontology` |
| **Children** | `category`, `folksonomy`, `hierarchy`, `ontology` |
| **Sensory** | Sound: library silence — ordered, systemic · Texture: card catalog — precise, structured · Temperature: 0.30 |
| **Frequency in library** | 79 |
| **Found as** | `TaxonomyRow`, `TaxonomyInsert`, `TaxonomyUpdate`, `ContentTaxonomy`, `Taxonomy`, `TAXONOMY` |
| **Scope note** | Well-implemented. The SQL `taxonomy` table exists. `TaxonomyRow`, `TaxonomyInsert`, `TaxonomyUpdate` are generated Supabase types — confirms the table is live. `TaxonomyNode` and `TaxonomyNodeType` are the TypeScript types. Scope is tight and well-defined. **This is the taxonomy's root atom.** |

---

### test `atom-030` · color: #E17055

| Field | Value |
|-------|-------|
| **Definition** | The act of definitive assessment — irreducible component of `AcidTest`. |
| **Etymology** | Latin *testum* — 'earthen vessel used to assay metals' |
| **Origin** | Derived by decomposing `AcidTest` |
| **Related atoms** | `acid`, `question` |
| **Sensory** | Sound: timer beep — definitive, terminal · Texture: examination paper — high-stakes, decisive · Temperature: 0.75 |
| **Frequency in library** | 6,943 |
| **Found as** | `F2PyTest`, `TestCase`, `MatrixTestCase`, `LinalgSquareTestCase`, `LinalgTestCase` |
| **Scope note** | **SEVERE SCOPE BLEED.** 6,943 occurrences, almost all from numpy/scipy test infrastructure. The QPF `test` (the Acid Test assessment) is a fundamentally different concept from the software testing sense. These are linguistically identical but semantically unrelated. **This atom's frequency number is misleading and should never be cited as evidence of QPF implementation.** Recommendation: add a `scope_qualifier` field distinguishing QPF-test from testing-framework-test. |

---

## PART II — CANONICAL MOLECULES
*17 molecules. Each is a composition of 2+ atoms.*

| ID | Name | Composition | SQL | TypeScript | Frequency |
|----|------|-------------|-----|------------|-----------|
| mol-001 | **AcidTest** | acid + test | ✓ | ✓ | 34 |
| mol-002 | **AcidTestQuestion** | acid + test + question | ✓ | ✓ | 0 (design-only) |
| mol-003 | **BigotTax** | bigot + tax | ✓ | ✓ | 1 |
| mol-004 | **CouncilSeat** | council + seat | ✓ | ✓ | 0 (design-only) |
| mol-005 | **EmojiAtom** | emoji + atom | ✓ | ✓ | 0 (design-only) |
| mol-006 | **EmojiMolecule** | emoji + molecule | ✓ | ✓ | 0 (design-only) |
| mol-007 | **FolksonomyTag** | folksonomy + tag | ✓ | ✓ | 0 (design-only) |
| mol-008 | **HierarchyNode** | hierarchy + node | ✓* | ✓ | 0 (design-only) |
| mol-009 | **MnemosyneEntry** | mnemosyne + entry | ✓ | ✓ | 0 (design-only) |
| mol-010 | **MoodEvent** | mood + event | ✓ | ✓ | 1 |
| mol-011 | **OntologyRelation** | ontology + relation | ✓ | ✓ | 0 (design-only) |
| mol-012 | **ResonanceGrammar** | resonance + grammar | ✗ | ✓ | 0 (design-only) |
| mol-013 | **ResonanceProtocol** | resonance + protocol | ✓ | ✓ | 0 (design-only) |
| mol-014 | **SensoryAtom** | sensory + atom | ✓ | ✓ | 0 (design-only) |
| mol-015 | **SensoryLexicon** | sensory + lexicon | ✗ | ✓ | 0 (design-only) |
| mol-016 | **SovereigntyScore** | sovereignty + score | ✓ | ✓ | 2 |
| mol-017 | **TaxonomyNode** | taxonomy + node | ✓ | ✓ | 3 |

*HierarchyNode SQL is a comment referencing ltree, not a full table definition.

---

## PART III — GAPS

### Atoms without code implementation (design-only)

These atoms exist only in design. They have no Python, TypeScript, or SQL presence.

| Atom | ID | Definition | Recommended action |
|------|-----|-----------|-------------------|
| `bigot` | atom-003 | Agent of exclusionary belief | Define as account-type enum in BigotTax TypeScript |
| `grammar` | atom-010 | Rules governing the communication system | **Block:** must be defined before ResonanceGrammar can be implemented |
| `lexicon` | atom-012 | An organized vocabulary system | Decide: standalone atom or satellite-only? |
| `molecule` | atom-014 | Abstract: a composition of atoms | No implementation needed — this is a meta-concept |

### Molecules with no code implementation (design-only)

12 of 17 molecules exist only in the pipeline. No codebase presence.

| Molecule | Blocking atoms | Notes |
|----------|---------------|-------|
| `AcidTestQuestion` | — | AcidTest exists; extend it |
| `CouncilSeat` | — | Critical governance gap |
| `EmojiAtom` | — | Needs SensoryLexicon first |
| `EmojiMolecule` | — | Needs EmojiAtom first |
| `FolksonomyTag` | — | folksonomy table exists; extend it |
| `HierarchyNode` | — | hierarchy builders exist in Python |
| `MnemosyneEntry` | — | Critical continuity gap |
| `OntologyRelation` | — | ontology table exists; extend it |
| `ResonanceGrammar` | grammar | **Blocked on grammar atom** |
| `ResonanceProtocol` | — | protocol type exists; formalize |
| `SensoryAtom` | — | sensory code exists; formalize |
| `SensoryLexicon` | lexicon | Needs lexicon scoped before SQL |

### Molecules without SQL schemas

| Molecule | Notes |
|----------|-------|
| `ResonanceGrammar` | Grammar is definitional/TypeScript only — by design |
| `SensoryLexicon` | TypeScript interface exists; SQL schema intentionally deferred |

---

## PART IV — CONFLICTS

### Definition conflicts across languages

No hard conflicts detected (same term with different definitions in different layers). However, several **soft boundary conflicts** exist:

| Term | Conflict |
|------|---------|
| `category` | QPF: taxonomy grouping. Code: generic grouping for libraries, screens, analytics. |
| `council` | QPF: governing body. Code: also used for CouncilHouse (a location type). |
| `predicate` | QPF: ontology relation type. Code: Vega-Lite conditional expression. |
| `node` | QPF: graph/tree point. Code: ReactNode, AST nodes, DependencyNode. |
| `test` | QPF: assessment. Code: 6,943 occurrences from numpy/scipy test frameworks. |
| `relation` | QPF: ontology edge. Code: DuckDB relation (database table concept). |
| `tag` | QPF: folksonomy label. Code: HTML pre-tag, CSS code-tag, analysis tag. |

---

## PART V — DESIGN-ONLY TERMS NEEDING FORMAL DEFINITIONS

These are fully designed but have no formal specification document beyond the pipeline:

1. **ResonanceGrammar** — What are the actual grammar rules? The atom `grammar` needs a specification before this molecule can be implemented.
2. **CouncilSeat** — The seven seats need a canonical document: name, holder, duty, constraints.
3. **MnemosyneEntry** — Entry types (`compaction`, `kernel`, `decision`, `turning-point`) need formal definitions.
4. **EmojiAtom / EmojiMolecule** — The emoji taxonomy system needs a founding document.
5. **SensoryLexicon** — The color/sound/texture/temperature mapping rules need a formal specification.

---

*End of Cartographer's Report*
*Source: pipeline/atoms/ (30 atoms) · pipeline/molecules/ (17 molecules) · pipeline/taxonomic-analysis.md*
