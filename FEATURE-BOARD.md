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
- **The rename question, OPEN at his "maybe":** resonance-grammar —
  would end the app/base name collision (the Supabase base keeps
  resonance-knowledge; the app stops shadowing it).

## Maintenance decisions open
- Canonical db backup story (recommend: text SQL dumps over binary
  snapshots; the .bak-in-git oddity resolves with it).
