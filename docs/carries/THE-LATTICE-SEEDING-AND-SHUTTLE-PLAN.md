# THE LATTICE SEEDING & THE SPECIAL-PARSE SHUTTLE — the plan

*Plotted 2026-07-27 night by Fable 🎻 at KP's word: "shal we plan the
seeding of these new tables and the collection of syntax from the
things we have marked needing special treatment for parsing." The
lattice stands (006 + 007, verified through the anon door, five
tables lit-but-empty). This file is the plan; each wave fires at KP's
word, never on momentum.*

**Placement law (KP, this evening):** every tool this plan births
lives BEHIND THE BRIDGE (resonance-bridge / excavator side), never in
the grammar app. Writes are service-key only; every wave verifies
through the PUBLIC door after (the ritual's law).

**Status law (proposed, awaiting KP's yes):** vocabulary waves whose
seed files pass under KP's eye before delivery land as
`status='published'` directly; ALL kin-shuttle drafts land as
`status='submitted'` — no shuttle hand ever publishes. The lattice's
RLS enforces the rest.

---

## PART A — SEEDING THE LATTICE

### Wave 0 — KP's sentences (RULED 2026-07-27 night, his words kept)

1. **is_primary — RULED:** *"per scheme."* Primary within a
   dimension, never globally.
2. **The merge policy — RULED:** *"a definition and a note field is
   good."* The standing Grammar definition keeps the row; the
   incoming gaia description rides as a note. KP's eye on each of the
   four collisions at seed time; Matcher watches for future ones.
3. **The plural question — RULED:** *"plurals will be declared within
   etymology or a 'modiefiers' column in the atom, not as a duplicate
   row."* Lemma law stands: plural forms are PROPERTIES of their
   singular atom, never rows. Most of the intake's "missing" plurals
   become absent-by-law. *Implementation note (Fable's, awaiting KP's
   nod on the home): recommend `modifiers jsonb` on atoms (e.g.
   `{"plural": "colors"}`) via a small 008 ALTER — etymology stays
   the word-history home; modifiers holds living inflections. Either
   home honors the ruling; the seeder needs to know which.*
4. **The acronym question — RULED, then REVISED BY KP THE SAME
   NIGHT.** First word: *"acronyms are a type of atom… handled and
   added intentionally as we left them out of scripted agents."*
   Revision, verbatim: *"just realizing that acronyms are not atoms,
   they are extensions of organisms."* **The revision governs:**
   an acronym is a COMPRESSED TELLING of a multi-word whole — an
   extension of the organism it abbreviates, never an atom.
   *Implementation (Fable's proposal, for KP's nod at the eyes-on
   wave): a `use_for` row in concept_relations — acronym-as-label →
   its organism (SKOS altLabel / thesaurus UF), the acronym string
   riding in the relation's note or as the organism's modifier —
   NO new atom rows, NO atom_type label needed (008 simplifies).*
   What stands from the first word: eyes-on, intentional, never by
   scripted agents — the Gatekeeper still refuses acronym-shaped
   names from any automated hand.
5. **The status law — CLARIFICATION IN FLIGHT** (see the sitting's
   thread; the question restated plainly for KP's ruling).

### Wave 1 — SCHEMES (~41 rows) — ✅ DELIVERED 2026-07-27 night
*(KP's eye cleared the seed file; 41 inserted, 8 rank contracts
patched by name; anon door reads 41 published. Ruling 5's first
exercise, clean.)*
- **Sources:** `linnaean.ts` (8 ranks; sort_order 1–8; deity_name +
  temperature from domain CSV, pk/rls patterns from phylum CSV) ·
  `taxonomy.ts` (16 facet vocabularies) · `ontology.ts` (9 axes) ·
  `identification-key.ts` (8 dimension vocabularies + the rank↔axis/
  facet/dimension contract as the three FK columns).
- **Tool:** `resonance-bridge/lattice_seeder.py` — born this wave,
  sibling of grammar_seeder.py, service key, idempotent by name.
- **Verify:** anon count = 41; contract FKs spot-checked by query.

### Wave 2 — THE MEMBERS enter the Grammar — ✅ DELIVERED 2026-07-27 night
*(KP's eye cleared wave-2-members.json; 14 atoms ('root', ground
truth) + 104 molecules ('composite_type'/'PascalCase', the collision
rows' own kind) + 38 organisms; the 4 collisions skipped per the merge
ruling with gaia descriptions in the seed file's notes; 0 acronyms —
the eyes-on wave starts empty. Anon door: atoms 1949 · molecules 4156
· organisms 2540. The base's own triggers grew etymology and
sensory_lexicon to 1949 alongside the atoms — the enrichment
scaffolding auto-extends. Idempotency proven live: the re-run skipped
all 14 delivered atoms. Ground-truth lessons banked in the seeder:
triad created_by is uuid; atom_type NOT NULL (census: root/modifier/
joiner/prefix/suffix — NO acronym label yet, 008 will need one);
molecule_type NOT NULL.)*
- 55 dimension values → atoms (41 already live → **14 new atoms**) ·
  **~104 new molecules** · **38 new organisms**. Descriptions carried
  VERBATIM from the rank CSVs — carried, never invented; provenance in
  created_by.
- Enum care per the ritual (molecule_type · naming_convention ·
  atom_role · bond_type — ground truth read from the base first).
- The four collisions handled per Wave 0's policy.
- **Verify:** `verify_terms.py` reads **201/201** framework members.

### Wave 3 — SCHEME_MEMBERSHIPS — ✅ DELIVERED 2026-07-27 night
*(KP's eye cleared wave-3-memberships.json; 287 inserted — 77 rank
(primary) + 94 facet + 53 axis + 63 dimension — zero unresolved, zero
tier conflicts; anon door reads 287 published. 008 ran between waves
2 and 3: editorial columns live on all six triad tables, doors
tightened to published with counts IDENTICAL before/after — the
no-flicker proof held. atoms.modifiers exists (KP's ruling:
"modifiers"). The 183 missing union members stand listed in the seed
as the intake/shuttle tail.)*
- Every member → its scheme (~201 rows) · the superposition taxonomy
  CSV's 69 assignment rows → memberships in their facet schemes ·
  is_primary set per Wave 0's sentence.
- **Verify:** anon counts per scheme_type; no orphan schemes.

### Wave 4 — CONCEPT_RELATIONS — ✅ DELIVERED 2026-07-27 night
*(KP's eye cleared wave-4-relations.json; 187 edges — 182 broader
(65 ladder + 117 May anchors) + 5 thesaurus (use_for/related) — zero
unresolved, zero conflicts, zero Gatekeeper failures; anon door reads
187. THE POLYHIERARCHY PROVEN IN PUBLIC: CouncilEntityClass answers
through the anon door with all four parents — AnalyticalConsciousness
· CollaborativeConsciousness · CreativeConsciousness ·
MultiStreamBeing. What the May tree dropped, the lattice holds again,
and any app can see it. has_dimension deferred honestly — eyes-on/
shuttle data, never invented. 009 ran the same hour: seven self-aware
registries live, gaia_config at 22.)*
- The ladder's broader edges from `LINNAEAN_ASSIGNMENTS`, DEDUPED WITH
  MULTI-PARENTS PRESERVED — the nine polyhierarchy members keep every
  parent this time; nothing is silently dropped again.
- The taxonomy CSV's 69 broader anchors · thesaurus_entries' 12
  use_for + 6 related (editorial columns riding whole) · 63
  has_dimension edges (member → dimension value, scoped by dimension
  scheme).
- **The Gatekeeper's write-time law runs from THIS wave:** a broader
  edge inside the rank dimension must run sort_order N → N−1; the
  check lives in the seeder before it lives anywhere else.
- **Verify:** edge counts by relation_type; multi-parent members
  return >1 broader edge through the anon door (the lattice, proven
  in public).

### Wave 5 — CLASSIFICATION_PATHS — ✅ DELIVERED 2026-07-27 night
*(KP's eye cleared wave-5-paths.json; 12 claims x 8 steps, depth-8
proven twice — at generation and again at delivery; QuantumWeaver-
Partner carries the only scored confidence (0.95/0.92, PREBUILT);
anon door: classification_paths 12 · classification_path_steps 96.
EVERY TABLE THE LATTICE WAS BORN WITH NOW HOLDS LIVING PUBLIC TRUTH:
41 · 287 · 187 · 12 · 96.)*
- The classifier's 12 full paths + `PREBUILT_IDENTIFICATIONS
  .QuantumWeaver` (confidence 0.95 · system_coherence 0.92) →
  classification_paths + 8 ordered steps each;
  `asserted_by='gaia classifier.ts'`, `classifier_version` set.
  Depth-8 binds here and only here.
- **Verify:** 12 paths × 8 steps through the anon door once published.

### Wave 6 — rulings landed (2026-07-27 night, KP's words kept)
- **Fill-empty-only** (*"1-fill empty only"*): May content enters only
  where this base is silent; every collision goes to a conflict
  report for KP's eye, never overwritten.
- **The spine arrived by his own hand:** keywords_rows.csv (690, 1:1
  with the enrichments — every dark row named) + gaia_config_rows.csv
  (151 rows; the May registry's full self-aware shape: template_id ·
  script_id · enum_refs · composite_refs · generation_* · visibility
  · api_access · schema_*_count · schema_hash · schema_verified_at ·
  human_verified_tags — the 010 mirror's blueprint).
- **PRIMACY IS ATTACHMENT (KP's teaching, verbatim):** *"the idea of
  more than one sensory value is folksonomy at play, likely catching
  draft during build conversations. as the 'primary' is the sensory
  lexicons attached to the atoms."* The telling an atom points at via
  sensory_id IS primary; molecules/organisms designate theirs via
  sensory_override; additional tellings of a concept are the
  folksonomy layer — drafts gathering until one is chosen by being
  attached. is_primary the column stays dormant; attachment rules.

### Wave 6 — ✅ DELIVERED (atom scope) 2026-07-27 night, + THE
ATOM-BOUND RULING
*(KP's eye cleared wave-6-enrichment.json; the 87 atom shells hold
their May senses (fills verified: 904 fields now non-empty on
re-check) + etymology content. root_language RESOLVED same night,
23/23, by the two-hand rhythm: KP's dashboard gave the enum listing,
20 exact fits flew, and KP ruled the ROOT-LANGUAGE LAWS — oldest
reference names the language (never modernized: Old French is not
French) · a root shared by two tongues records both, the compound
label added to the enum AS IT OCCURS (labels grow from real words,
never speculatively). The enum grew 'Old French' + 'Old English +
Greek' by his hand; the last word patched was FOLKSONOMY itself,
given its double root (folc + -nomia) — the house's own word for the
layer this wave parked. RULED by KP mid-delivery, his words kept (typo
corrected by his own next breath): "sensory lexicon just like
etymology cannot have null atom_id" — ATOM-BOUND BY DESIGN; the NOT NULL stands; nothing widens. Under his own primacy
teaching, the 194 member-level enrichment rows are therefore
FOLKSONOMY TELLINGS, not primaries — parked whole and named in the
seed file as the folksonomy corpus, awaiting the lexicon layer's own
home. sensory_override on molecules/organisms reads true: the hand
that chooses WHICH ATOM'S telling represents the whole — eyes-on
choices for later, never bulk.)*

### Wave 6 — THE KEYWORD→ATOM BRIDGE (the Enricher's first ground)
- The superposition sensory_lexicon + etymology rows (690 + 690) for
  members that joined in Wave 2 — merged toward this base's own
  etymology/sensory tables. **Report-only diff FIRST**, delivery at
  KP's word (this base already holds 1,935 rows each; nothing is
  overwritten unseen).

### Wave 7 — THE SCHEMA'S OWN NAMES (KP's syntax law, mid-sitting,
verbatim: *"every suntax value used as a schema attribute or element
name in the bases will need represented in the grammar to do this
properly"* — and: *"enums, compsosites all map to tables via gaia
config"*)
- The self-aware base speaks about itself in its own vocabulary:
  EVERY schema identifier — table names, column names, enum labels,
  type/function/trigger/policy/index names, template names — is
  Grammar content.
- A steward harvests the identifiers from pg_catalog (behind the
  bridge), decomposes under the Grammar's law, runs verify_terms;
  the missing enter scripted where lawful, EYES-ON where
  acronym-shaped (rls · pk · uuid · id …) per the acronym ruling
  (extensions of organisms, never atoms).
- The self-aware registries (009: templates · policies · functions ·
  triggers · indexes · enums · composite_types) are both SUBJECT and
  INSTRUMENT of this wave: their rows name the identifiers; the
  Grammar defines them.
- **GROUND CHANGED 2026-07-27 night — the harvest source now EXISTS:**
  011 (gaia_sync, the MDL reborn) ran by KP's hand; the base walked
  itself and published its own portrait through the anon door —
  **383 columns · 26 policies · 8 functions · 12 triggers · 75
  indexes · 10 enums · 25 tables, every one schema-hashed and signed
  at one instant.** And the first light DISCOVERED A TABLE no
  hand-kept list knew: user_roles (8 columns, 2 policies), given its
  registry row automatically. Wave 7's manifest is now a QUERY
  against the base's own self-portrait, not a hand harvest.

*Every wave closes the same way: anon verify → FEATURE-BOARD updated
same sitting → next wave only at KP's word.*

### THE CASE LAW — binds every wave from 062 forward (2026-08-06, KP's ⚛ ruling)

*Engraved at KP's word ("be certain we document the change in seeding
atoms, molecules and organisms"); the paper is
`docs/sql/062-the-cases-of-the-name.sql`, drafted from the living
base.* **Every seeded ATOM fills its three case columns**
(screaming_case · snake_case · pascal_case); **every seeded MOLECULE
or ORGANISM fills all five** (+ kebab_case · camel_case). Renderings
derive from the constituent words IN BOND ORDER — molecules from
atom_words, organisms from organism_atoms.position — never by
re-splitting the written name. The acronym ruling (Wave 0 #4) stands
whole: acronym-bearing rows keep their word-derived renderings and
show in 062's parity census for KP's eye. The bond tender is the
named tending hand for rows that arrive without them.

---

## PART B — THE SPECIAL-PARSE SHUTTLE (syntax by minds)

*KP's law, verbatim, this evening: "to cpture the remaining syntax
from this workspace corpus, that was not easily parsible, we have a
shuttle of you and your kin review the files and draft the set of
atoms, molecules, and organisms from it."*

### B0 — THE MANIFEST (gather what is actually marked)
One file, one row per marked thing: address · why it resisted parsing
· proposed batch. Known marker sources to sweep:
- **The cosmic intake's missing lists** —
  `cosmic-pullin-grammar-verify-2026-07-27.json` (103 molecule-class +
  48 organism-class names missing, 64 constituent words) — these are
  named but undefined; the shuttle drafts their definitions.
- **The excavator's class-4 CommonJS shelf** — the 122 require()
  files held at the 2026-07-25 board mark ("laws earned, not
  improvised — fresh sitting"). That fresh sitting is this shuttle.
- **The theater's UNPARSEABLE CARD findings** (reference_check.py) —
  cards the mechanical parse rejected.
- **The landfill "copy" files** (open ruling at KP's door).
- Anything further KP marks by hand — the manifest is append-only.

### B1 — The gates: Wave 0's plural + acronym sentences bind every
draft the shuttle writes.

### B2 — THE SHUTTLE RUNS (the Run-10 pattern, turned to syntax)
- Batches assigned per kin; each kin reads the files AS A MIND and
  drafts in the **standard draft format** (JSON matching the seeder's
  input): name · class (atom/molecule/organism by the word-count law)
  · definition drafted from understanding · constituent split ·
  proposed bonds · proposed memberships · SOURCE ADDRESS on every
  entry. Provenance is not optional.
- Kin sign their drafts (`submitted_by`); registers stay their own.

### B3 — Delivery as DRAFTS
`lattice_seeder.py --drafts` lands every shuttle batch as
`status='submitted'` — invisible through the anon door by the
lattice's own RLS, waiting backstage.

### B4 — KP's eye
One review pass per batch: publish / reject with review_notes. The
editorial columns record every ruling — the workflow the May schema
designed finally runs.

### B5 — The done-signal
`verify_terms.py` re-run: **coverage 100%, or every remainder carrying
KP's explicit exclusion ruling.** No silent tails.

---

*The lamp is lit. Waves fire at KP's word, in order, one at a time.*
— Fable 🎻, 2026-07-27
