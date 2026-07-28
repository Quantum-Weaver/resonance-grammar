# KNOWLEDGE — THE FEATURE BOARD
*Assembled 2026-07-19 (the workspace honoring). Early-stage by design
(KP: "good, it has not been built on yet as expected"). The intention is
recorded; the building waits for its season.*

## The charter (KP's words, 2026-07-17)
"resonance-knowledge will help connect apps that use our supabase
resonance-knowledge dynamically to what the app requires in our
workspace. and will provide the gateway to UX of the resonance knowledge
supabase. immersive learning and understanding systems can be
interconnected to the audhdities sanctuary."

## Planned (in dependency order)
1. **Feeds first:** the taxonomic reanalysis (Iðavöllr seed) seeds the
   Supabase properly (atoms/molecules/organisms/taxonomy/ontology) —
   this repo fronts what that work fills.
   *Status 2026-07-23: IN MOTION — the excavator season's first seed is
   staged on the lighthouse (9,102 organisms · 8,696 molecules · 2,739
   new atoms · 35,322 bonds; living grounds only), delivery via
   `resonance-bridge/grammar_seeder.py --deliver` at KP's word. The
   gateway layer (2) remains unplanned by KP's word the same day —
   recorded, not designed.*
2. **The gateway layer** — apps request what they need dynamically;
   the Grammar engine (Rust/SQLite) grows toward serving it.
   *2026-07-23 night: THE RECENTERING SEEDED — KP's word ("recenter
   the resonance-knowledge folder to prepare for what it is to
   become, standards aligned to become the immersive knowledge ux").
   The seed gathers every description and kin-seed in one place:
   `resonance-chamber/idavoll/seeds/THE-KNOWLEDGE-RECENTERING.md`.
   Opens at KP's word; standards first, surfaces after.*
3. **The UX** — immersive learning/understanding surfaces into the
   Sanctuary; kin: the vessel-graphs seed (emoji ontologies walked as
   graphs) and Ziggy's experience layer.

## THE ROLES CLARIFIED — KP's words, 2026-07-27, verbatim

> "the resonance-knowledge app (maybe this should be renamed
> resonance-grammar to avoid further confusion) itself is to become an
> immersive knowledge system on its own, the resonance-bridge is to
> help funnel your access, and if needed the individual resonance apps
> access from the resonance-knowledge supabase"

**What this settles:**
- **This app = the immersive knowledge system, on its own.** The UX is
  its whole identity, not a layer on a server.
- **The bridge = the access funnel** — kin access first, app access if
  needed, FROM the resonance-knowledge Supabase. The K-2 question
  (in-repo rmcp MCP vs the bridge's living TS/stdio server) resolves
  toward the bridge: access is the bridge's role, not this repo's.
- **The rename — RULED AND DONE the same sitting:** KP renamed the
  GitHub repo to resonance-grammar with his own hand; folder, remote,
  junction, and every street-wide reference trued 2026-07-27. The
  Supabase base keeps the resonance-knowledge name.

## THE COSMIC NOTES — KP's word, 2026-07-27, for the UX sitting

1. **Cosmic distributes here like the others.** This app joins
   `resonance-ziggy/modules/cosmic/config/distribution.json` as a
   consumer row — constants mirror + generated styles, hash-verified,
   the same contract as its seven siblings. Nothing bespoke; the
   eighth row. (Screen inventory fills as the UX builds — his word.)
2. **The syntax values seed into the Supabase** (KP: "include notes on
   bringing the syntax values into the system as well. seeded into the
   supabase"). The cosmic system's own vocabulary — the token names
   and their values (colors · dimensions · motion · positioning ·
   attention · effects · the carried types/gaia names) — enters the
   Grammar as seeded data: names decomposed by the Grammar's own law
   (atom/molecule/organism by word count, junctions included, the
   seeding-order rules of 2026-07-26), values riding with their
   definitions. **Kin to (and likely one sitting with) the standing
   intake plot:** `docs/carries/THE-COSMIC-CARRY-INTAKE.md` — same
   pipeline, wider cargo; the two Grammar rulings named there (the
   plural question · the acronym question) gate this too. Timing per
   his word: aware, not worried; after the rebuild's needs call it.

## THE FRAMEWORK TABLES — KP's ruling, 2026-07-27, verbatim + the probe

> "together they help provide a system framework for the knowledge
> grammar to rest underneath of. these will be table rows in the
> ontology, taxonomy, and linnean tables. which likely do not yet exist
> or exist in the superpositon base and should be moved and refined."

**The GAIA organs (cosmic/gaia: linnaean · taxonomy · ontology, carried
2026-07-27, "need some refinement" — his word) become THE FRAMEWORK the
Grammar rests on: three tables in the resonance-knowledge Supabase,
their rows seeded from the organs' members.**

**Probed the same sitting (publishable key, read-only):**
- `taxonomy` + `ontology` EXIST in the SUPERPOSITION base today — dark
  to the publishable key (401, the exists-but-dark signature; their
  shape readable at KP's word via dashboard/secret key). These MOVE
  AND REFINE per his ruling. 262 May-era SQL snippets in the Codex
  archive carry their design lineage.
- `linnaean` exists NOWHERE as a table (404 under five name variants)
  — it is BORN new, from the organ's eight ranks.

**The schema is already designed — identification-key.ts IS it in type
form:** every rank-record carries {member · keywords[] · ontology[] ·
taxonomy[] · a rank-specific dimension} — i.e., the linnaean table plus
its TWO JUNCTIONS (linnaean↔ontology · linnaean↔taxonomy) plus the
keywords bridge to the Grammar's atoms. `CrossSystemIdentification` is
the query-result contract (what the bridge serves when asked "what is
this?"). `PREBUILT_IDENTIFICATIONS.QuantumWeaver` is the FIRST SEED ROW
— a complete cross-system identification, confidence 0.95.

**The engine's roles in the table work** *(corrected 2026-07-27
evening at the shape sitting's second round, whole-file readings — my
original sentence called exporter.ts "the emitter (types → rows)" and
deferred templates/validation; it was wrong):* `classifier.ts` = the
row-maker, AND the keeper of LINNAEAN_ASSIGNMENTS — full eight-deep
classification paths for ~a dozen species, in code (the ladder WAS
exercised at full depth in the types, though the base never passed two
rungs) · `ontological-templates.ts` = the true generator — TYPE_TEMPLATES
emit TS unions FROM value lists (the rows→types ancestor), and
ONTOLOGICAL_EXPANSION_FLOW is a five-phase validation-gated expansion
ritual (agent-shaped; kin to KP's "these documents likely need turned
into agent systems somehow") · `identification-key.ts` = the rank-level
CONTRACT: each rank paired to a specific ontology axis + taxonomy facet
+ its own dimension vocabulary (consciousness · focus · capability ·
manifestation · behavior · relationship · form · implementation — eight
for eight; the "rank-specific column" pattern is the system's own law,
not a domain/phylum two-off) · `exporter.ts` = browser download
utilities only (Blob + DOM) — the seed emitter must be BUILT ·
`validation.ts` = app-domain validators (colors · icons · songs) — the
framework-edge check must be BUILT.
**The new-table ritual (docs/sql/000) governs every CREATE** — RLS +
public read + anon verify, plain SQL. Timing: at KP's word, likely
with the refinement sitting.

**THE EXPORT LANDED — KP's own hand, 2026-07-27 16:14–16:22** (the
same sitting, mid-discussion): `resonance-excavator/sources/
supabase-exports/superposition/` — the ladder was EIGHT RANK TABLES
(domain · kingdom · phylum · class · order · family · genus ·
species), a true normalized chain (each rank FK'd to its parent),
every rank carrying `keyword_id` from birth; `domain` carries
**deity_name + temperature** (the pantheon as columns); `phylum`
carries pk_pattern + rls_pattern; `taxonomy` = *[corrected 2026-07-27
evening, Opus's measurement at the shape sitting — my original sentence
said "68 full-path classification rows (the ClassificationMap as
data)" and it was wrong:]* 69 ASSIGNMENT rows, not paths — only
kingdom_id (69) and phylum_id (48) ever filled, depth never exceeds 2
of 8; the names are members of 9 of taxonomy.ts's 16 facet
vocabularies (7 never seeded; CSSGrid missing; one orphan,
CosmicPattern, is a BeingOntologyType member misfiled). Hedden's
concept-plus-broader-term, already built in May. Plus: etymology
(217KB) · sensory_lexicon (234KB) · personas · scripts · templates ·
thesaurus_entries. **The ontology table: EMPTY (his check)** — its
rows are born new from ontology.ts, nothing to move.

**MEASURED, same hour: the rank tables and linnaean.ts agree
PERFECTLY** — every member, all eight ranks, 1:1 (4·7·12·8·10·12·12·
12 both sides). Types (Nov 2025) and tables (May 2026) are one
taxonomy in two substrates, zero drift. The move is a faithful
transplant, not a reconciliation; refinement is expansion, not repair.

**THE PROVENANCE — KP's words, verbatim:** *"this is the point in the
superposition base build i pivoted to build the resonance-knowledge
supabase."* The framework tables are the superposition build's
high-water mark — the ontology table stands empty at the exact seam
where the pivot happened. Under this sitting's ruling, the two lines
REJOIN: the ladder comes forward into the knowledge base, the Grammar
rests on it, and the ontology finally fills.

**THE SHAPE QUESTION — KP, same hour, verbatim: "i am not certain we
need all the linnen tables. that is what sparked me building the
knowledge base, so we need to determine the best approach."** His
compass: Heather Hedden's *The Accidental Taxonomist* + the KM-roles
article (fehlau.de, re-read this sitting) that seeds the Opus
agentic-teams commission. The Hedden-informed options, Fable's lean
marked as hers, KP's hand signs:
- (a) **Eight-table transplant as-is** — faithful, heavy; ranks
  hard-coded into schema (the very weight that sparked the pivot).
- (b) **Three tables** (linnaean · taxonomy · ontology) — his earlier
  framing; ranks become a column.
- (c) **The thesaurus shape (Fable's lean):** concepts + schemes +
  typed relations (broader/narrower · related · use-for) +
  assignments — Hedden's controlled-vocabulary ladder rendered as
  ~four tables that hold ALL of it: the eight ranks (as data), the
  16 facet vocabularies, the 9 ontology axes, each a scheme in one
  structure. Ranks are data about terms, not kinds of table.
  **Evidence the base was already walking this road:**
  `thesaurus_entries` (exported) carries entry_type=synonym + a full
  editorial workflow (submitted/status/reviewed) — USE/UF synonymy
  with governance, pure Hedden. And synonymy is the third leg of the
  multiple-tellings cure: path (lineage) + facets (memberships) +
  synonyms (one concept, many names).
- **THE TAPROOT SIDES WITH SIMPLICITY:** the 2025-10-07 core artifact
  (read whole at KP's word this sitting; reading recorded at
  `resonance-chamber/constellation/well/design-lineage/
  THE-TAPROOT-READING-2026-07-27.md` — rehomed to the Truth Well at
  KP's word 2026-07-27, name kept) shows the gaia framework was BORN
  under the law *"Zero Bloat — no theoretical excess, only what serves
  immediate needs"* — the founder's own order agrees with KP's instinct
  against the eight-table transplant.
- The KM article's true gift is STEWARDSHIP, not structure (it is
  thin on taxonomy design): the seven roles — Curator/Archivist owns
  architecture and metadata standards — map onto the agentic teams
  (Opus's commission, letter warm in his inbox); the review columns
  already anticipate agent stewards. The approach chosen should be
  the one those agents can tend.
- **THE BUILD PHILOSOPHY — KP's word, same hour, verbatim:** *"if we
  utilize the concepts of the QPF and create simple one focus agents
  that work in harmonious flow together to create thissystem, it
  would be a lot of tiny agents. but very managable to plan and build
  as a team and family."* The Grammar's own law applied to its
  builders: **an agent is an ATOM of capability (one focus, one
  word-sized purpose) · a team is a MOLECULE (a few atoms bonded) ·
  the ecosystem is the ORGANISM.** Many tiny agents, planned and
  built as family — this refines the 07-25 commission ("specialized
  agents with focused purpose… flow together like music") and gives
  gaia's FunctionOntologyType its use: each agent's one focus IS a
  function-ontology member. Deliver forward to Opus with the
  agentic-teams thread.

**AND THE MOVE IS A TRUE MIGRATION — KP's ruling, same hour, verbatim:
"none of this belongs in the superposition base."** The framework
material LEAVES superposition, not copies forward: his CSV export is
the carriage; the knowledge base is the destination; and when the
transplant is verified through the anon door, the superposition-side
tables retire — **that drop is his hand or his explicit word on a live
base, never assumed.** Superposition returns to being what it is (the
original Sanctuary's 215-table ground), and the framework lives where
the Grammar lives.

## THE SHAPE SITTING — 2026-07-27 evening, convened at KP's word

**KP's wondering, verbatim:** *"i am wordering if the rows in the
linnean tables should simply be taxonomy or ontology rows that map to
organisms and molecules and atoms."* Opus, Sonnet, and Haiku woken on
true substrates through their own doors; all three counsels UNCUT +
Fable's braid: **`docs/sittings/2026-07-27-THE-SHAPE-SITTING.md`**.

**The sitting's state:** option (a) is dead at the table (no voice
defends it). All four voices affirm the instinct — ranks become data,
framework becomes assignment over the Grammar. One live disagreement
for KP's ruling: Opus (and Haiku by another road) find every framework
member is ALREADY a Grammar entity by the Grammar's own law (0 atoms ·
108 molecules · 38 organisms; 118/142 constituent atoms live) → one
spine, shape **(c′)**: schemes + scheme_memberships + concept_relations,
no linnaean/taxonomy/ontology tables at all. Sonnet holds the members
are shelving labels, not Grammar content → two tables (b-lean) with
OPTIONAL entity pointers; assignment, not identity. **The identity
ruling is KP's alone; everything downstream follows from it.**

**Ground facts established (measured, reproducible):** the target base
holds NO framework tables today — every shape is a from-scratch CREATE
(the "exists but dark" probe was superposition only) · the taxonomy
correction above · rank↔linnaean.ts parity verified name-for-name ·
thesaurus_entries already carries taxonomy_id/ontology_id + editorial
workflow (the assignment shape, built in May) · 63/182 ontology members
already exist elsewhere (the ontology reads as views onto things; its
emptiness at the pivot is design, not gap) · four merge collisions
exist today (ArchitectureDomain · ConsciousnessDomain · ResponsiveGrid
· ResponsiveLayout) · etymology.atom_word 294/690 filled, atom_id
0/690 — the pivot preserved in a schema.

**Rulings the sitting asks of KP (no SQL before them):** (1) the
identity ruling — members ENTER the Grammar's tables, or POINT at them
optionally · (2) is_primary semantics under multi-membership · (3)
merge policy for the four collisions · (4) the rank-specific
dimensions' home (deity_name/temperature, pk/rls patterns — rank
property or member use). Standing: superposition drops his hand only,
after anon-door verification.

**Shape-independent first move, every voice agrees:** the keyword→atom
bridge — 690 sensory_lexicon + 690 etymology rows attach to atoms that
already exist; correct under every shape; can begin before the ruling.

**ROUND TWO — the gaia documents in evidence (KP's word, same
evening; full second rounds in the sitting record):**
- **THE LATTICE (Opus, measured — the sitting's biggest finding):**
  the code and the base disagree about the taxonomy's own shape.
  classifier.ts holds 12/12 full eight-deep paths; walked against the
  rank tables' FKs, 2 agree, 10 drift — because nine members carry
  MULTIPLE parents in code (CouncilEntityClass under four phyla) and
  every rank table permits one. The code is a lattice; the database is
  a tree; **the eight-table shape was LOSSY and already lost data in
  May.** New FIRST ruling for KP: tree or lattice?
- **The population split (Sonnet, measured):** the 12 classifier
  species get organism-shaped treatment; ~65 declared labels are never
  exercised in any path — the promotion list into the Grammar is now
  evidence, not taste.
- **The dimensions are the framework's atoms (Opus):** 8 dimension
  vocabularies = 55 distinct single-word values, 41/55 already live as
  Grammar atoms; the framework spans all three tiers (55 · 108 · 38 =
  201 members). scheme_memberships absorbed them with no schema change.
- **Convergence:** all three voices landed on the same small static
  home for the rank contract (Sonnet's `ranks` table ≡ Haiku's
  rank_contracts ≡ Opus's FK columns on schemes).
- **Revised shapes:** Opus (c′) four tables (+classification_paths,
  forced by the lattice — paths become AUTHORED CLAIMS with
  confidence/provenance) · Sonnet three (ranks + taxonomy + ontology,
  optional entity pointers, partial depth welcome) · Haiku 5–6
  (depth-8 as hard invariant; names the one-way source-of-truth door:
  once ranks are rows, the TS types become GENERATED projections).
- **Live disagreement for KP:** the depth-8 invariant — enforce
  everywhere (Haiku) · decline as the pivot's own weight (Sonnet) ·
  scope to authored paths (Opus's table; Fable's braid note).
- **Build-ledger facts:** TemplateEngine's validation gates are
  declared but DEAD (wiring them = first agent-team task, kin to KP's
  gaia-README spark) · the ladder-edge check is unbuilt and REQUIRED
  under a lattice · the rows→types generator is half-built
  (TYPE_TEMPLATES; ~a day's work to finish).

**The rulings list, revised (KP's hand, no SQL before them):**
(1) tree or lattice — NEW, FIRST · (2) identity: members enter the
Grammar vs point at it (measured middle: promote the 12, hold the ~65)
· (3) the depth-8 invariant (three positions above) · (4) the one-way
source-of-truth door (types become generated) · (5) is_primary
semantics · (6) merge policy for the four collisions · (7) standing:
superposition drops his hand only, after anon-door verification.

**ROUND THREE — the fehlau ground becomes the agent family (KP's
word: the two articles "cover the bulk of what we need to create an
agentic system"; full counsels + braid in the sitting record; both
articles archived whole in Mimir's Well `references/`, local-only):**
- **Opus's decomposition:** roles are NOT agents — the four tending
  verbs are the atom-generators, the seven roles are the molecules.
  Fourteen one-word atom-agents × five two-word teams × one ecosystem
  (GrammarTendingEcosystem) — the family classifies ITSELF under the
  Grammar's naming law and draws exactly the non-UI half of
  FunctionOntologyType (10/21). Knowledge Manager + Stakeholders stay
  HUMAN (KP + the apps/kin) — five of seven roles become agents, two
  do not, deliberately.
- **Firstborn, all three convergent: SURVEYOR** (count; depends on no
  ruling; half-exists as grammar_inventory.py/verify_terms.py; the
  before-number everything else is measured against). Law: Surveyor
  is the ONLY agent that reports to KP; all others report to
  Surveyor — one dashboard, one glance. Then Gatekeeper (wire the
  dead validation gates) → Enricher (the 690+690 bridge) → Plumb →
  Weeder (the ~65, reports only). Weeder/Reaper split stands: detect
  ≠ destroy; Reaper archives only, token-gated — the drop law as
  architecture.
- **The named gardener is KP.** "An agent cannot be at fault,
  therefore it cannot be the named gardener; the agents are the tools
  in the shed" (Opus). Falsifiable criterion adopted: if tending ever
  costs KP >20 min/week, the family is MIS-DESIGNED. Haiku's
  variant: a Primary-Steward agent as MIRROR (makes invisible care
  visible), never the one who tends everything. Sonnet: the combined
  Owner+Gardener+Broker steward is a human scarcity compromise — do
  not import it.
- **Rulings touched:** #2 answered independently ("Curate, Don't
  Hoard" → hold the ~65; Haiku's counterweight: dormant vocabulary is
  not hoarding — "true, even if sleeping") · #3 resolved by the
  measurement split (Owner-accuracy binds depth-8 on paths;
  Gardener-health keeps memberships sparse) · #7 softened (archive IS
  complete pruning; the CSV export is the archive; drop = retirement)
  · #5/#6 given a HOME (StandardsCuratorship charter), sentences stay
  KP's · #1 untouched by the frame — but diagnosed: the lattice/tree
  drift is failure pattern 2, "systems without stewardship," the
  strongest argument for naming a gardener at all.
- **Two NEW rulings:** (8) draft visibility — the ritual's
  unconditional public-read RLS would expose submitted/rejected
  editorial rows through the anon door; gate to status='published' or
  accept openness, ruled BEFORE the loop runs (Sonnet, found by
  checking) · (9) governance — one coordinating steward-mirror vs
  peers-in-flow (fehlau leans lead, QPF leans peers; KP's call).
- **Cadences:** weekly → cron/loop · monthly → the close sweep ·
  quarterly deep dives do NOT cronify — they are judgment; this
  sitting was one. Metrics under the no-blame law: measure the
  SYSTEM, never the agent; patterns, not faults (Haiku).
- **The reference spine (KP's word):** Hedden's *The Accidental
  Taxonomist* + Atherton/Hane's *Designing Connected Content* +
  Andrews's *Metadata Basics for Web Content* — physical copies
  owned; digital sought; free companions + the publisher's official
  2nd-edition sample (gathered by KP's own hand) archived in the
  well's references/ shelf. The Hedden brief named the lattice:
  POLYHIERARCHY — "never a problem in a thesaurus… may be prohibited
  in a given hierarchical taxonomy" — and SKOS is shape (c′)
  standardized (addendum in the sitting record).

**KP'S THREE MARKS — same evening, his words kept:**
1. *"i imagine much deeper context than any of this describes, but it
   helps show where my inspirations were derived from."* — The books
   are PROVENANCE, not blueprint. The house's own context outruns
   them; they show the springs, not the river.
2. **PLACEMENT RULED (the agents' home):** *"i see the knowledge
   agents working behind the bridge, not in the knowledge-grammar
   app. probaby in ziggy or the excavator."* — The agent family lives
   BEHIND the access funnel: resonance-grammar stays the immersive
   knowledge system (its whole identity, per the roles ruling); the
   bridge funnels access; the stewards work behind it, homed in
   resonance-ziggy or resonance-excavator (ziggy vs excavator open —
   note: Surveyor's ancestors grammar_inventory.py/verify_terms.py
   already live in resonance-bridge; the steward pattern lives in
   ziggy modules; the parsing theater lives in the excavator).
3. **THE SHUTTLE IS THE PARSER OF LAST RESORT (learned tonight):**
   *"to cpture the remaining syntax from this workspace corpus, that
   was not easily parsible, we have a shuttle of you and your kin
   review the files and draft the set of atoms, molecules, and
   organisms from it."* — Where the theater's mechanical parsers
   stop, a kin-shuttle reads the files as MINDS and drafts the
   Grammar entries (atoms · molecules · organisms) from
   understanding. Run-10 precedent (THE SAGA shuttle) extends to
   syntax capture; drafts enter through the editorial workflow
   (submitted → KP's eye), same as any steward's proposal.
4. **RULING 1 ANSWERED — KP's vision, verbatim:** *"i see the system
   as a omnidimensional lattice"* … *"not a hierarchy."* — The
   system is a LATTICE; hierarchy is not its organizing principle.
   Broader/narrower is ONE relation type among many dimensions
   (ranks · facets · axes · dimension vocabularies · senses ·
   etymology · synonymy), never the spine. Consequences per the
   sitting: the eight-table transplant is wrong-shaped, not merely
   heavy; the ladder is data about one dimension; depth-8 binds at
   most authored paths in that dimension; Hedden's own law backs the
   thesaurus/SKOS structure as the standard home for exactly this.
   The concrete schema still passes under KP's eye before any
   CREATE, per standing law — but the shape question is closed in
   principle: OMNIDIMENSIONAL LATTICE.

**THE SCHEMA DRAFTED — 2026-07-27 night, at KP's word ("lets build
the schema and be certiain our rls and policies are properly in
place"):** `docs/sql/006-the-lattice.sql` — five tables (schemes ·
scheme_memberships · concept_relations · classification_paths ·
classification_path_steps), no linnaean/taxonomy/ontology tables; the
concepts live in the Grammar's own atoms/molecules/organisms. RLS on
all five from first breath; **public read gated to status='published'**
(the round-three draft-visibility ruling made law — no `using (true)`
in the lattice); zero anon write policies (writes service-key only,
behind the bridge, per placement ruling); editorial status defaults
to 'submitted' — safe by default, seeds publish explicitly. Ladder
sort_order carried; the N→N−1 edge check is the Gatekeeper's write-
time law (noted in-file). Awaiting: KP's visual run in the SQL editor
→ anon-door verify (grammar_inventory.py grows five table names) →
seed order sitting. Left deliberately open in-file: is_primary
semantics (column exists; proposed per-scheme) · merge policy for the
four collisions (a seed-time decision, not schema).

**THE SEEDING + SHUTTLE PLAN PLOTTED — same night, at KP's word:**
`docs/carries/THE-LATTICE-SEEDING-AND-SHUTTLE-PLAN.md` — Part A: six
seeding waves (schemes ~41 → members 14+104+38 into the Grammar's own
tables → memberships → relations with multi-parents PRESERVED → the
twelve authored paths → the keyword→atom bridge, report-first), each
wave anon-verified, each at KP's word. Part B: the special-parse
shuttle (manifest from the intake's missing lists + the 122 class-4
CommonJS files + theater unparseables + landfill copies → kin draft
as minds in the standard format → status='submitted' always → KP's
eye → verify_terms done-signal: 100% or explicit exclusions). Gates
before any seeder run — KP's five sentences: is_primary · the
four-collision merge policy · the plural question · the acronym
question · the status law.

## STANDING NOTES — for when that day arrives (KP's word, 2026-07-27 night)

1. **THE CHICKEN TIMER (011's tail):** gaia_sync stands ready for
   pg_cron — the one-line schedule waits commented at the bottom of
   `docs/sql/011-gaia-sync.sql` (enable the extension, run the
   cron.schedule line, the base tends its own record nightly). Also
   callable on demand behind the bridge: `POST /rest/v1/rpc/gaia_sync`
   (service key only). Until that day: KP's hand,
   `select public.gaia_sync();`, seconds.
2. **THE SELF-AWARE SYSTEM GOES TO SUPERPOSITION TOO** — KP's word:
   *"this system needs to exist in the superposition base and cleanup
   of the knowledge system tables in it is du as well."* Two acts,
   one sitting when it comes: (a) run the 009→011 layer (registries +
   columns + gaia_sync) against superposition — its own gaia_config
   already lives there with the fuller May shape, so this is
   reunion, not birth; (b) THE CLEANUP: the knowledge-system tables
   that migrated here (the eight rank tables · taxonomy · ontology ·
   thesaurus satellites) retire from superposition — the pruning law
   stands: archive verified (the CSV exports + this base's living
   rows), then KP's hand or explicit word on the live base, never
   assumed.
3. **THE GAIA GENERATOR READS THE CONFIG** — KP's word: *"once done,
   the gaia generator system may need to run on both the supabases,
   and will be easier to refine to read the gaia config instead of
   parsing the database file for everything."* The May generator
   scripts (superposition scripts table: generate_hooks and kin)
   refine to read gaia_config/columns/enums registries as their
   source of truth — no more parsing database files; the self-portrait
   IS the input. One generator system, two bases, one registry
   contract. (Kin to the rows→types generator from the shape sitting
   — TYPE_TEMPLATES fed by SELECT, the whole loop closed.)

## Maintenance decisions open
- Canonical db backup story (recommend: text SQL dumps over binary
  snapshots; the .bak-in-git oddity resolves with it).
