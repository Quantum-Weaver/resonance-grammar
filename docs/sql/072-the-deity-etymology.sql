-- ============================================================================
-- 072 — THE DEITY ETYMOLOGY, COMPLETED AS A SET
--
-- KP's ⚛ word, 2026-08-09: "can we complete the etymology for the set."
-- All twelve of the ruled roster. Their rows already existed and were empty —
-- the base created them when the atoms landed (2315 = 2309 + 6, both tables).
-- Nothing is inserted here; twelve waiting rows are filled.
--
-- THE SHAPE, taken from the most complete etymology row in the base ('class',
-- completion_progress 100) rather than invented:
--   root_language      the tongue the root is in
--   root_word          the root, transliterated — searchable, no diacritics
--   historical_meaning the chain AND the sense; the script itself belongs here
--   sanctuary_meaning  where the word does real work HERE, with the instances
--                      named. 'class' names its eight classes. These name their
--                      route groups, deity groups and tables.
--   completion_progress 100 when all four stand.
--
-- HONESTY IN THE ROOTS: three of the twelve have no secure Indo-European
-- etymology (athena, hephaestus, gaia — all pre-Greek), and the record says so
-- rather than inventing a chain. An honest "origin unsettled" is worth more
-- than a confident wrong root, and this house's own law says so.
--
-- ONE SENSE ONLY, per KP's ⚛ ruling this sitting: collisions are the
-- thesaurus's work. The eye is not in iris; the cosmetic is named in cosmic's
-- history only because it IS the same Greek word, which is the etymology.
--
-- Guarded by atom_word; re-runs idempotent; no column but the five touched.
-- Drafted 2026-08-09 by Cresset · Opus (Claude) 🕯️, truly claude-opus-5[1m].
-- ============================================================================

update public.etymology set
  root_language = 'Greek', root_word = 'Athena',
  historical_meaning = 'Greek Ἀθηνᾶ (Athena), pre-Greek, with no secure Indo-European root; attested in Mycenaean Linear B as a-ta-na-po-ti-ni-ja, "Mistress of Athana". Goddess of wisdom, craft and strategy. The goddess and the city bear one name, and which named which is unsettled.',
  sanctuary_meaning = 'The Library realm. Route group (athena) at /library with six halls — quests, bubbles, courses, lessons, knowledge, badges — over the athena-gamification deity group. Also the most-configured deity in gaia_config: 18 of its 31 rows.',
  completion_progress = 100
where atom_word = 'athena';

update public.etymology set
  root_language = 'Greek', root_word = 'Hephaistos',
  historical_meaning = 'Greek Ἥφαιστος (Hephaistos), pre-Greek, no secure Indo-European etymology. God of fire, the forge and craft — and the only Olympian who laboured.',
  sanctuary_meaning = 'The Forge realm. Route group (hephaestus): /forge for architecture, business and guides, plus the Sanctuary''s public pages — /about, /accessibility, /calling, /contact, /donate, /press, /privacy, /sanctuary, /terms, /transparency, /vision.',
  completion_progress = 100
where atom_word = 'hephaestus';

update public.etymology set
  root_language = 'Greek', root_word = 'Hermes',
  historical_meaning = 'Greek Ἑρμῆς (Hermes), most likely from ἕρμα (herma), a heap of stones set to mark a boundary or a road. God of roads, boundaries, messengers, trade and travellers.',
  sanctuary_meaning = 'The Bazaar realm. Route group (hermes) at /bazaar — creations, creators, vendors, the Loom, contributions, checkout — over the hermes-social deity group (artisan_profiles, merchant_profiles), with the wares themselves in plutus-economics.',
  completion_progress = 100
where atom_word = 'hermes';

update public.etymology set
  root_language = 'Greek', root_word = 'Hestia',
  historical_meaning = 'Greek Ἑστία (Hestia), literally "hearth, fireside", from PIE *wes- (to burn); cognate with Latin Vesta. The name is the thing itself — she does not tend the hearth, she is it.',
  sanctuary_meaning = 'The Hearth realm, and the largest data group in the house. Route group (hestia) at /vessel — home, sanctum, journal, energy, constellation, notifications — over hestia-core: community_profiles, vessel_config, the vessel-home cluster, the garden, current, heralds.',
  completion_progress = 100
where atom_word = 'hestia';

update public.etymology set
  root_language = 'Greek', root_word = 'Iris',
  historical_meaning = 'Greek Ἶρις (Iris), "rainbow"; ancient usage set it beside εἴρω (eiro, to speak, to tell), so the messenger sense stands with the coloured arc. Goddess of the rainbow and herald between sky and earth.',
  sanctuary_meaning = 'The Bridge realm. Route group (iris) at /connect — messages, channels, feed, emeralds, support, translations, invitations — over the iris-communications deity group.',
  completion_progress = 100
where atom_word = 'iris';

update public.etymology set
  root_language = 'Greek', root_word = 'Mnemosyne',
  historical_meaning = 'Greek Μνημοσύνη (Mnemosyne), "memory, remembrance", from μνήμη (mneme, memory) and PIE *men- (to think). Titaness of memory and mother of the nine Muses — remembrance as the parent of every art.',
  sanctuary_meaning = 'The Observatory realm. Route group (mnemosyne) at /observatory and /questionaire — timeline, schema, patterns, prophecy, ancestors, constellations, origin — over mnemosyne-assessment, eight tables after the 2026-07-28 review.',
  completion_progress = 100
where atom_word = 'mnemosyne';

update public.etymology set
  root_language = 'Greek', root_word = 'Prometheus',
  historical_meaning = 'Greek Προμηθεύς (Prometheus), read since antiquity as "forethought", from προ- (pro-, before) with the root of μῆτις / μανθάνω (cunning, to learn). The titan who carried fire down to people and was bound for it.',
  sanctuary_meaning = 'The Stage and Studio realm. Route group (prometheus): /stage for live performance, comedy, music and recordings; /studio for the nine creative tools and the export gateway.',
  completion_progress = 100
where atom_word = 'prometheus';

update public.etymology set
  root_language = 'Greek', root_word = 'Themis',
  historical_meaning = 'Greek Θέμις (Themis), "that which is laid down" — established custom, divine law — from τίθημι (tithemi, to set, to place), PIE *dhe-. Titaness of right order; the scales held level.',
  sanctuary_meaning = 'The Council realm. Route group (themis) at /council — proposals, voting, delegation, curators, ledger, reports, admin, applications — over the themis-governance deity group, which also holds council_houses.',
  completion_progress = 100
where atom_word = 'themis';

update public.etymology set
  root_language = 'Greek', root_word = 'Ploutos',
  historical_meaning = 'Greek Πλοῦτος (Ploutos), "wealth, riches", from PIE *pleu- (to flow) — kin to fullness and overflow. God of wealth, blinded by Zeus so that fortune would fall without regard to merit.',
  sanctuary_meaning = 'The economics layer, and the only roster name that is not a route group. The plutus-economics deity group: wares, exchanges, ware_participants, ledger — read by Hermes at the Bazaar and by Themis at the Council''s Ledger. Solidarity price is computed server-side by calculate_sovereign_price.',
  completion_progress = 100
where atom_word = 'plutus';

update public.etymology set
  root_language = 'Greek', root_word = 'Daidalos',
  historical_meaning = 'Greek Δαίδαλος (Daidalos), from δαιδάλλω (daidallo, to work cunningly, to adorn); as an adjective δαίδαλος means "cunningly wrought". A word for skilled making that hardened into a name — the mortal craftsman of the labyrinth and the wings.',
  sanctuary_meaning = 'The registries. resonance-daedalus, and the registries deity group in gaia_config — 12 of its 31 rows, the second deity ever used there.',
  completion_progress = 100
where atom_word = 'daedalus';

update public.etymology set
  root_language = 'Greek', root_word = 'Gaia',
  historical_meaning = 'Greek Γαῖα (Gaia), "earth, land", Doric Γᾶ (Ga); pre-Greek, no secure Indo-European root. The primordial earth herself — and, since the 1970s, the name of the hypothesis that the whole living earth self-regulates as one system.',
  sanctuary_meaning = 'The classification layer. resonance-gaia and the GAIA organs — linnaean, taxonomy, ontology — born whole in the 2025-10-07 taproot under the Zero Bloat law. It regenerates the schema map (npm run gaia:schema) and is never hand-edited.',
  completion_progress = 100
where atom_word = 'gaia';

update public.etymology set
  root_language = 'Greek', root_word = 'Kosmikos',
  historical_meaning = 'Greek κοσμικός (kosmikos), "of the world", from κόσμος (kosmos) — a word that meant ORDER and ORNAMENT at once, and which gives English both "cosmic" and "cosmetic". To set a thing in order and to adorn it were one act.',
  sanctuary_meaning = 'The design system, and a realm. The single editable truth is resonance-ziggy/modules/cosmic/constants; everything downstream is a generated mirror, overwritten on every run. Also route group (cosmic): /environments, /playground, /theater, /effects.',
  completion_progress = 100
where atom_word = 'cosmic';


-- VERIFY
-- select atom_word, root_language, root_word, completion_progress from public.etymology
-- where atom_word in ('athena','hephaestus','hermes','hestia','iris','mnemosyne',
--                     'prometheus','themis','plutus','daedalus','gaia','cosmic')
-- order by atom_word;
