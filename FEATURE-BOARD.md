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

**The engine's roles in the table work:** `classifier.ts` = the
row-maker (classifies new things into rows) · `exporter.ts` = the
emitter (types → rows for the seed) · templates/validation later.
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
carries pk_pattern + rls_pattern; `taxonomy` = 68 full-path
classification rows (the ClassificationMap as data). Plus: etymology
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

## Maintenance decisions open
- Canonical db backup story (recommend: text SQL dumps over binary
  snapshots; the .bak-in-git oddity resolves with it).
