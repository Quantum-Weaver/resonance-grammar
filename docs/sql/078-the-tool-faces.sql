-- ============================================================================
-- 078 — THE TOOL FACES: one mark per tool, an identity
--
-- KP's ⚛ ruling, 2026-08-11, answering the question seed 076 left open at its
-- own foot: "A mark per VERB reads as a taxonomy; a mark per TOOL reads as an
-- identity. Both are defensible and they are not the same decision."
-- His word: ONE FACE PER TOOL.
--
-- The reason the identity reading wins here, and it is not merely taste: THE
-- PER-VERB MARKS ALREADY EXIST AND ALREADY SHIP. resonance-awen's app reads
-- them live from the Grammar's own atoms into src/lib/data/type-lexicon.json —
--   capture 📸 · combine 🥣 · arrange 🎼 · witness 🧿 · emit 📤 · transform 🦋 ·
--   translate 🌏
-- Filling icon_emoji per-verb would copy that taxonomy into 79 rows, which is
-- the copy-tax the house cures rather than pays. So this column carries what
-- the verb marks cannot: what THIS tool is.
--
-- 076's OWN CORRECTION HONORED: a tool's icon is NOT derivable from its atom's
-- sensory_lexicon.emoji. atom_id names the WORD the tool is called after; the
-- icon is the THING's face. Every face below was chosen by reading the tool's
-- own definition in the live base — never from its atom, never from its name
-- alone.
--
-- THE RULES THE SET KEEPS:
--   · One glyph per row. No skin tones, no ZWJ sequences, no flags.
--   · No red-alarm marks anywhere (🔴 🚨 ⛔) — the house's own law: a state is
--     a position, never a verdict.
--   · Kin look like kin without being identical: the five witness books wear
--     different books; the three mic waters wear different mics.
--   · A SHARED FACE MUST NEVER SHARE A tool_type — KP's ⚛ test, 2026-08-11
--     ("do the rows that share emojis have different tool type values?"), and
--     it caught a real collision. A repeated glyph is only safe when the verb
--     mark beside it tells the two apart; two rows with the SAME face AND the
--     same type are indistinguishable wherever both are shown. The draft had
--     the-tether and the-quipus both wearing 🪢 and both `combine`, same family
--     and same status — not kinship, a collision. The tether keeps the knot
--     (it IS the knot water: stored relations, derived lines, stretch never
--     break); the quipus took 🧶, wool being what a real quipu is made of and
--     cord COLOUR being its own law of identity. The remaining repeats pass
--     the test: 🖼️ across capture · witness · emit, and 📖 across witness ·
--     translate.
--   · Ambiguity resolved toward the DEFINITION, not the name — the One Forge
--     is a blueprint walker (📐), not a forge (🔨).
--
-- Idempotent by shape: every statement is an UPDATE by slug, so a re-run
-- rewrites the same value. Nothing is inserted, nothing dropped.
--
-- ⚠ Slugs are addresses: `where slug =` is used rather than name, EXCEPT for
-- The Promenade, whose slug currently carries a leading TAB (see section 0).
--
-- Drafted 2026-08-11 for KP's ⚛ hand.
-- ============================================================================


-- ── 0. WHAT STILL STANDS ON THE PROMENADE ROW ───────────────────────────────
-- Three things were found while reading the live base for this seed. KP ⚛
-- MENDED THE SLUG HIMSELF the same sitting ("fixed the promenade") — it reads
-- `the-promenade` clean, the leading tab gone, so no statement for it stands
-- here. Verified before this line was written, never assumed. Two remain:

-- (a) The Promenade is the only row of 79 carrying no family.
update public.tools set folksonomy_type = 'Awen' where slug = 'the-promenade';

-- (b) THE PROMENADE'S TYPE — KP's ⚛ call, not this hand's. It stands `arrange`
--     (the first suggestion made). On reading the LIVE families afterward, the
--     recommendation changed to `witness`, and the reasoning is left here so he
--     can rule rather than take a word for it:
--       witness (28) is the PRESENTATION family — Gallery · Listening Room ·
--         Player · Scrolls · Two-Eyes · Timer · Signet. The Gallery ("a
--         catalogue seen and navigated by eye") is the promenade's nearest kin
--         already standing.
--       arrange (6) is Breath · Cadastre · Cumdach · Conductor · Release Model ·
--         Catalogue Raisonné — waters that ORDER and STRUCTURE.
--     A promenade does not arrange a catalogue; it presents one, one release at
--     a time. UNCOMMENT to move it:
-- update public.tools set tool_type = 'witness' where slug = 'the-promenade';


-- ── 1. THE WITNESS FAMILY — the Grammar's five books + the coast's register ──
-- Kin that look like kin: five books, five different books.
update public.tools set icon_emoji = '📖' where slug = 'the-almanac';       -- the shelf, witnessed
update public.tools set icon_emoji = '⚗️' where slug = 'the-formulary';     -- compounds, bond by bond
update public.tools set icon_emoji = '🐉' where slug = 'the-bestiary';      -- the book of beasts
update public.tools set icon_emoji = '🔤' where slug = 'the-abecedary';     -- the alphabet primer
update public.tools set icon_emoji = '🗺️' where slug = 'the-atlas';         -- the book of maps
update public.tools set icon_emoji = '🗼' where slug = 'the-light-list';    -- the register of beacons

-- ── 2. THE AUDIO WATERS ─────────────────────────────────────────────────────
-- Three mic waters, three different mics: the recorder keeps the voice, the
-- note-taker keeps the words, the awenydd shapes it live.
update public.tools set icon_emoji = '🎙️' where slug = 'the-recorder';
update public.tools set icon_emoji = '📝' where slug = 'the-note-taker';
update public.tools set icon_emoji = '🎤' where slug = 'the-awenydd';
update public.tools set icon_emoji = '🎯' where slug = 'the-tuner';          -- a position, never a verdict
update public.tools set icon_emoji = '🥁' where slug = 'the-metronome';
update public.tools set icon_emoji = '🔔' where slug = 'the-chimes';
update public.tools set icon_emoji = '〰️' where slug = 'the-waveform';       -- sound made sight
update public.tools set icon_emoji = '🎛️' where slug = 'the-equalizer';      -- ten bands
update public.tools set icon_emoji = '🎚️' where slug = 'the-modulator';      -- turnable knobs
update public.tools set icon_emoji = '⚙️' where slug = 'the-encoder';        -- the keel
update public.tools set icon_emoji = '▶️' where slug = 'the-player';
update public.tools set icon_emoji = '🎧' where slug = 'the-listening-room';
update public.tools set icon_emoji = '👂' where slug = 'the-eist';           -- the ear beside the mouth
update public.tools set icon_emoji = '💠' where slug = 'the-moment-marks';   -- reactions pinned to moments
update public.tools set icon_emoji = '🏷️' where slug = 'the-colophon';       -- the maker-note read

-- ── 3. THE FINDERS ──────────────────────────────────────────────────────────
update public.tools set icon_emoji = '🖼️' where slug = 'the-art-finder';
update public.tools set icon_emoji = '🎼' where slug = 'the-lyric-finder';

-- ── 4. THE QUIET LIBRARIES ──────────────────────────────────────────────────
update public.tools set icon_emoji = '✉️' where slug = 'the-envelope';       -- the sovereignty trio
update public.tools set icon_emoji = '⏳' where slug = 'the-timer';          -- sand, never urgency
update public.tools set icon_emoji = '🫁' where slug = 'the-breath';         -- the regulation door
update public.tools set icon_emoji = '🌙' where slug = 'the-sky';            -- computed offline, forever
update public.tools set icon_emoji = '🕰️' where slug = 'the-temporal';
update public.tools set icon_emoji = '🕐' where slug = 'the-now';            -- the machine's clock, read
update public.tools set icon_emoji = '😊' where slug = 'the-lexicon';        -- the emoji folksonomy
update public.tools set icon_emoji = '🎨' where slug = 'the-emoji-collector';
update public.tools set icon_emoji = '📔' where slug = 'the-logbook';        -- one line per event

-- ── 5. SKAPA'S SUBSTRATE ────────────────────────────────────────────────────
update public.tools set icon_emoji = '🧾' where slug = 'the-board-charter';
update public.tools set icon_emoji = '🥞' where slug = 'the-stack-engine';   -- meaning as layers
update public.tools set icon_emoji = '🪢' where slug = 'the-tether';         -- stretch never break
update public.tools set icon_emoji = '🧮' where slug = 'the-cadastre';       -- occupancy is arithmetic

-- ── 6. THE LIGHT TIER ───────────────────────────────────────────────────────
update public.tools set icon_emoji = '✨' where slug = 'the-effects-engine';
update public.tools set icon_emoji = '💿' where slug = 'the-release-model';
update public.tools set icon_emoji = '🔏' where slug = 'the-signet';         -- a seal, not a lock
update public.tools set icon_emoji = '👓' where slug = 'the-two-eyes';       -- per-reader toggles
update public.tools set icon_emoji = '👁️' where slug = 'the-vigil';          -- watch, never touch
update public.tools set icon_emoji = '📜' where slug = 'the-scrolls';

-- ── 7. THE MODERATE TIER ────────────────────────────────────────────────────
update public.tools set icon_emoji = '🖼️' where slug = 'the-gallery';
update public.tools set icon_emoji = '🧶' where slug = 'the-quipus';         -- the talking knots: cord COLOUR is identity, and wool is what a real quipu is
update public.tools set icon_emoji = '📚' where slug = 'the-cumdach';        -- the book-shrine
update public.tools set icon_emoji = '🚪' where slug = 'the-epagoge';        -- the leading-in
update public.tools set icon_emoji = '🌱' where slug = 'the-founding-ritual';
update public.tools set icon_emoji = '🦴' where slug = 'the-spine';
update public.tools set icon_emoji = '🗣️' where slug = 'the-plan-tongue';
update public.tools set icon_emoji = '🌳' where slug = 'the-structure-generator'; -- plan to tree
update public.tools set icon_emoji = '🚶' where slug = 'the-promenade';      -- the coast walk
update public.tools set icon_emoji = '🖋️' where slug = 'the-sphragis';       -- the poet's name inside the work

-- ── 8. THE UNBUILT — substantial and deep ───────────────────────────────────
update public.tools set icon_emoji = '📇' where slug = 'the-catalogue-raisonne';
update public.tools set icon_emoji = '📖' where slug = 'the-seanchai';       -- the storyteller; kin to the almanac, not the same book
update public.tools set icon_emoji = '🌊' where slug = 'the-sruth';          -- the stream
update public.tools set icon_emoji = '🔥' where slug = 'the-ceilidh';        -- the live room, the hearth
update public.tools set icon_emoji = '🎸' where slug = 'the-chord-anchor';
update public.tools set icon_emoji = '🎬' where slug = 'the-scene-loader';
update public.tools set icon_emoji = '🎻' where slug = 'the-conductor';
update public.tools set icon_emoji = '📘' where slug = 'the-binder';         -- manuscript to book
update public.tools set icon_emoji = '🧩' where slug = 'the-composer';

-- ── 9. THE ZIGGY FAMILY ─────────────────────────────────────────────────────
update public.tools set icon_emoji = '🗄️' where slug = 'the-archivist';
update public.tools set icon_emoji = '🔍' where slug = 'the-assessor';
update public.tools set icon_emoji = '🌍' where slug = 'the-gaia-sync';
update public.tools set icon_emoji = '🎭' where slug = 'the-cosmic-design-system';
update public.tools set icon_emoji = '🖼️' where slug = 'the-icon-forge';
update public.tools set icon_emoji = '🍽️' where slug = 'the-plate-forge';    -- the family plate
update public.tools set icon_emoji = '⚓' where slug = 'the-shipwright';      -- repo to signed build
update public.tools set icon_emoji = '📐' where slug = 'the-blueprint-forge'; -- The One Forge: a blueprint walker
update public.tools set icon_emoji = '📦' where slug = 'the-quartermaster';
update public.tools set icon_emoji = '🔗' where slug = 'the-link-tender';
update public.tools set icon_emoji = '🧵' where slug = 'the-weft';           -- the canon rewoven

-- ── 10. THE BRIDGE LINES — seven windows each, one house apiece ─────────────
update public.tools set icon_emoji = '💬' where slug = 'the-discord-line';
update public.tools set icon_emoji = '🐙' where slug = 'the-github-line';
update public.tools set icon_emoji = '🔡' where slug = 'the-grammar-line';
update public.tools set icon_emoji = '📧' where slug = 'the-resend-line';
update public.tools set icon_emoji = '💳' where slug = 'the-stripe-line';
update public.tools set icon_emoji = '🗃️' where slug = 'the-supabase-line';
update public.tools set icon_emoji = '▲' where slug = 'the-vercel-line';


-- ============================================================================
-- VERIFY — read-only, safe to re-run.
-- ============================================================================

-- (1) Every tool should now carry a face. Expect ZERO rows.
select name, slug, tool_type, folksonomy_type
from public.tools
where icon_emoji is null
order by name;

-- (2) The whole shelf, wearing its faces.
select icon_emoji, name, tool_type, status, folksonomy_type
from public.tools
order by folksonomy_type, name;

-- (3) Faces used more than once — allowed, but worth an eye. The known repeats
--     are deliberate: 🖼️ (art-finder · gallery · icon-forge — all pictures),
--     🪢 (tether · quipus — both knots), 📖 (almanac · seanchaí — both tellers).
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name)
from public.tools
where icon_emoji is not null
group by icon_emoji
having count(*) > 1
order by count(*) desc;

-- (4) The promenade's mends landed.
select name, slug, tool_type, folksonomy_type, icon_emoji
from public.tools
where slug = 'the-promenade';
