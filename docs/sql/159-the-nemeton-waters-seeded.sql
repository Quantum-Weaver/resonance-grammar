-- ============================================================
-- 159 — THE NEMETON WATERS SEEDED (nine rows of public.awen)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
--
-- SOURCE: resonance-nemeton/docs/THE-NEMETON-WATERS.md, rows W1 to W9,
-- drawn 2026-09-14. One awen row per water, status 'imagined'.
--
-- KP's ⚛ word 2026-09-15, verbatim:
--   "names already suggested are accepted, we just need to seed atoms and
--    awen rows needed to support in in the knowledge base"
--
-- RUNS AFTER 153: grove, signaling and routing are born there. merge
-- (creation), presence (consciousness), reach (measurement), pairing
-- (grants), relay (communication) and channel (communication) stand
-- already. Category is an atom's column, not an awen row's.
--
-- THE ROWS — slug | atom | standing | tool_type (runner-up) | face (runner-up)
--   the-grove     | grove     | born in 153 | arrange   (combine)   | 🌲 (🌿)
--   the-merge     | merge     | stands      | combine   (arrange)   | 🔀 (🔁)
--   the-presence  | presence  | stands      | witness   (capture)   | 🏕️ (🫧)
--   the-reach     | reach     | stands      | arrange   (no chooser among the seven; transform nearest)   | 📶 (🛜, taken here by the-signaling)
--   the-pairing   | pairing   | stands      | witness   (capture)   | 🤝 (🪪)
--   the-signaling | signaling | born in 153 | arrange   (transform) | 🛜 (📶, taken here by the-reach)
--   the-routing   | routing   | born in 153 | arrange   (combine)   | 🕸️ (🔀, taken here by the-merge)
--   the-relay     | relay     | stands      | emit      (combine)   | 📮 (🔁)
--   the-channel   | channel   | stands      | transform (emit)      | 🛖 (🪵)
--
-- THE TYPES, why each: the-grove, the-reach, the-signaling and the-routing
-- place elements in deliberate relation — a tree in its own display order,
-- the reaches in order of what costs least to trust, who offers and who
-- answers settled by a declared rule rather than a race, and which stream
-- reaches which member. the-merge brings two cords into one with every
-- knot still recognisable. the-presence and the-pairing attest and never
-- judge — who was heard against a moment, and what was offered, confirmed
-- and revoked. the-relay sends the credential's parts and the server list
-- outward in the form the consumer asked for. the-channel carries a
-- message into a sealed envelope and back.
--
-- THE FACES: nine glyphs, one grapheme each, no skin tone, no ZWJ, no
-- flag, no red-alarm mark, none of them worn by a standing awen row. 🌳
-- 🔒 🗝️ 🪢 ➰ 🏞️ ⛩️ ✉️ and 📧 are worn and were set down. The live base
-- may hold faces this hand could not see, so the wearer check stands in
-- the footer.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: every name here is one word,
-- so each row carries atom_id and leaves molecule_id and organism_id null.
--
-- Etymology and sensory rows are NOT written here — the atoms table's
-- triggers make both on insert.
--
-- Drafted by a platform hand and dry-run only. NEVER RUN BY A LAMP: the
-- crossing to 'flowing' is KP's ⚛ hand alone, and W9 waits on their
-- ruling besides.
-- ============================================================

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type,
   atom_id, molecule_id, organism_id, story, created_by)
values

('The Grove', 'the-grove', 'arrange',
 'The grove as data. Rooms and lanes stand as one self-referencing tree; a seat per voice per room carries its own gate and the gate''s law; reads, hidden words and pins stand as rows. In go the grove''s rooms, seats, reads and marks, and a voice. Out come the readings, derived rather than kept: the tree in its own display order, a room''s roster, the rooms one voice sits in, and what a voice has not read. No SQL, no store, no rune.',
 'resonance-awen/tools/the-grove', 'imagined', '🌲', 'Awen',
 (select id from public.atoms where atom_word = 'grove'), null, null,
 'Described 2026-09-14 as W1 of resonance-nemeton/docs/THE-NEMETON-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: the shape, in SQL and in a Svelte store — 1eefb83~1:src-tauri/src/lib.rs migrations 3, 5, 6, 7, 13, 14 and 1eefb83~1:src/lib/stores/table.svelte.ts — neither pure, neither portable. CONSUMED BY: nemeton alone. MARK: medium, serving row 4.19 of resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:646 — the body as a child build, and Reach 2, same wifi, first, on the bridge''s items 12 and 13. Step 2 of the document''s order: the store and the migrations read from it rather than holding it. The stack was ruled 2026-09-14, KP''s words at resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:694-695: "i thought this was decided on, we already built this as a different purposed app, it is just being repurposed and evolved to serve that purpose."',
 'a platform hand, at KP''s ⚛ word'),

('The Merge', 'the-merge', 'combine',
 'The cord''s merge. In go two copies of one cord that grew apart on two reaches. Out comes one cord, and what each side gained. A knot arriving twice lands once. A retraction wins over the words it withdrew. The order is derived from the declared moments, with the id as the tiebreak. Neither side loses a knot. Reconciliation is the whole of it: the two copies handed in are read, and the single cord they make together is answered back.',
 'resonance-awen/tools/the-merge', 'imagined', '🔀', 'Awen',
 (select id from public.atoms where atom_word = 'merge'), null, null,
 'Described 2026-09-14 as W2 of resonance-nemeton/docs/THE-NEMETON-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHERE IT LIVES IS KP''S, and the document says so verbatim: "The spring''s law forbids one tool importing another, so this is a verb on the-quipus or its own water — KP''s word". WHAT STANDS: the-quipus is the cord and exports no merge (resonance-awen/tools/the-quipus/src/index.ts); mergeDocs at resonance-awen/tools/the-moment-marks/src/index.ts:227 is the shape. CONSUMED BY: the-quipus'' own consumers — kin chat, ziggy, the vessel. MARK: small. It serves row 4.24 (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:651), the web face at nemeton.audhdities.com with the relay behind it off Vercel, and row 5.10 (:654), where it is what a mesh needs when two copies meet. Step 4 of the document''s order, beside W3.',
 'a platform hand, at KP''s ⚛ word'),

('The Presence', 'the-presence', 'witness',
 'Presence, derived and never stored. In go the reach reports — a voice, a room, a reach and the moment that reach was last heard — with a moment and a staleness horizon the consumer names. Out come the set here per room, the set gone, and each reach''s last word. Who is here is computed against that moment and that horizon rather than held: the sets are unordered and unranked, with no first-in, no longest-here and no count kept. The horizon is the consumer''s to name and never this water''s to assume.',
 'resonance-awen/tools/the-presence', 'imagined', '🏕️', 'Awen',
 (select id from public.atoms where atom_word = 'presence'), null, null,
 'Described 2026-09-14 as W3 of resonance-nemeton/docs/THE-NEMETON-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: the-ceilidh''s presence law, inside a stream room''s model that carries a player, emeralds and a gathering the grove has no use for (resonance-awen/tools/the-ceilidh/README.md §THE LAWS). The document''s wall draws the line: the-ceilidh is khoros'' room, not the grove''s, and "Only its presence law crosses, and W3 is that law standing alone". CONSUMED BY: meetings (row 4.25) and khoros. MARK: small; it serves row 4.24 (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:651) and 0.20''s clause on nemeton''s own video and audio channels (:702, :708). Manual before live is KP''s word (resonance-nemeton/README.md:52-53): "once the room becomes safe, we enable live interactions" — and the document''s wall beside it: "Safe is KP''s word; no water defines it and none may". Step 4 of the document''s order, beside W2.',
 'a platform hand, at KP''s ⚛ word'),

('The Reach', 'the-reach', 'arrange',
 'The reach-order law, a pure chooser. In go each reach''s report — whether it is reachable, the peers it can see, its trust cost — with the addressee and the message''s state. Out come the reaches to try, in order of what costs least to trust, with the reason each was chosen or passed named beside it, and the act''s state across reaches: a message that starts on one reach and finishes on another is held as one act rather than two. It chooses and it reasons, and it is nothing more than a chooser.',
 'resonance-awen/tools/the-reach', 'imagined', '📶', 'Awen',
 (select id from public.atoms where atom_word = 'reach'), null, null,
 'Described 2026-09-14 as W4 of resonance-nemeton/docs/THE-NEMETON-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: nothing; the order is the charter''s (resonance-nemeton/README.md:45-47). The three reaches are KP''s shape, 2026-08-28 (resonance-nemeton/README.md:35-37): "we have blue tooth mesh, connected to the same wifi network, or connected to the audhdities nemeton network." A message may start on one and finish on another (resonance-nemeton/README.md:36-37). CONSUMED BY: nemeton alone. MARK: small to medium, serving rows 4.19 (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:646) and 5.10 (:654), where it governs both Reach 1, Bluetooth mesh, and Reach 3, the audhdities network, each its own plan. Step 5 of the document''s order, with W5, the bridge''s items 12 and 13 built on them. The document''s walls hold the two far reaches off: no Tauri plugin in this house has proven Bluetooth mesh, and a long-lived relay cannot live on Vercel.',
 'a platform hand, at KP''s ⚛ word'),

('The Pairing', 'the-pairing', 'witness',
 'The pairing record and its ceremony. The mutual-acknowledgment ceremony stands as states: what each side has offered, and what each has confirmed. In go the two devices'' public halves, a digest the host hands in, a moment, and the acts. Out come the ceremony''s state, the short confirmation derived from that digest, the pairing record — device, public half, when, by whom — and the revocation, which keeps the record rather than erasing it. The digest arrives from the host and is never computed here, and the moment arrives with the acts.',
 'resonance-awen/tools/the-pairing', 'imagined', '🤝', 'Awen',
 (select id from public.atoms where atom_word = 'pairing'), null, null,
 'Described 2026-09-14 as W5 of resonance-nemeton/docs/THE-NEMETON-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: the-lok''s door names which public keys may open it and answers "key not admitted" (resonance-awen/tools/the-lok/); the-clavis mints the credential (resonance-awen/tools/the-clavis/); the-signet holds the identity snapshot (resonance-awen/tools/the-signet/); the-temporal holds the token''s window (resonance-awen/tools/the-temporal/). The ceremony stands nowhere — resonance-bridge/spike-handshake/ does not exist. CONSUMED BY: the bridge (item 12), ziggy (the Home Doorway, item 13), meetings (the host allowlist). The bridge''s two items, verbatim (resonance-bridge/FEATURE-BOARD.md:8-15): "two devices on the home LAN: discovery, the mutual-acknowledgment ceremony (pairwise key, emoji-triple confirmation), one sealed message, revocation proven" and "host allowlist + token, LAN-only, KP''s hand on the enabling step. No second protocol invented." MARK: medium; row 4.19 (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:646). Step 5 of the document''s order, with W4. the-procession was read against this ceremony and does not serve it: a corridor of rooms walked at the reader''s own pace, holding no state, no refusal and no act (resonance-awen/tools/the-procession/README.md).',
 'a platform hand, at KP''s ⚛ word'),

('The Signaling', 'the-signaling', 'arrange',
 'The signaling protocol as data. An offer, an answer and a candidate are messages on a named channel. In go the room''s key, the members, an arriving message and the local state. Out come the next state, the messages to send, and refusals with the reason named. Who offers and who answers is settled by a declared rule rather than a race, so a simultaneous offer is resolved without a round trip. Every session description and every candidate is an opaque value, carried whole and never parsed. A refusal is named, never silent.',
 'resonance-awen/tools/the-signaling', 'imagined', '🛜', 'Awen',
 (select id from public.atoms where atom_word = 'signaling'), null, null,
 'Described 2026-09-14 as W6 of resonance-nemeton/docs/THE-NEMETON-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: nothing. CONSUMED BY: meetings (row 4.25) — its first consumer. KP''s words of 2026-09-14 govern the split (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:702, :710): "nemeton would likely include its own meetings system, (video and audio chat channels), but not be the meetings system" and "this is why awen exists, because stand alone tools exist needed in multiple places." MARK: medium; it serves 0.20''s clause on channels (:702, :708) and row 4.24 (:651). Step 6 of the document''s order, with W7 and W8 — meetings is their first consumer, nemeton their second. The RTCPeerConnection, the RTCDataChannel and the media tracks are named dress, not water.',
 'a platform hand, at KP''s ⚛ word'),

('The Routing', 'the-routing', 'arrange',
 'The hub''s routing table. In go the room''s members with what each publishes, each device''s declared capacity, and the hub''s identity. Out come the routing table — which device is the hub, and which of each member''s streams reach which member — and the difference from the last table. What changes when one joins, leaves, mutes, or the hub itself leaves is answered by the table returned, and the difference is carried as a list of acts for the dress to perform.',
 'resonance-awen/tools/the-routing', 'imagined', '🕸️', 'Awen',
 (select id from public.atoms where atom_word = 'routing'), null, null,
 'Described 2026-09-14 as W7 of resonance-nemeton/docs/THE-NEMETON-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: nothing. CONSUMED BY: meetings (row 4.25) — its first consumer. KP''s words of 2026-09-14 govern the split (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:702): "nemeton would likely include its own meetings system, (video and audio chat channels), but not be the meetings system". MARK: medium; it serves 0.20''s clause on nemeton''s own video and audio channels (:702, :708). Step 6 of the document''s order, with W6 and W8 — meetings is their first consumer, nemeton their second. The socket, the media tracks and every device picker are named dress, not water.',
 'a platform hand, at KP''s ⚛ word'),

('The Relay', 'the-relay', 'emit',
 'The relay credential, the pure half. In go a name, a lifetime, a moment, and a digest from the host. Out come the credential''s parts, the server list rendered for the consumer, and whether a credential has passed. A short-lived credential is composed from a name and a lifetime against a declared moment; the digest is a declared host surface, implemented by nobody here; expiry is read, never guessed. The moment and the digest both arrive as inputs, the digest through a declared host surface implemented by nobody here.',
 'resonance-awen/tools/the-relay', 'imagined', '📮', 'Awen',
 (select id from public.atoms where atom_word = 'relay'), null, null,
 'Described 2026-09-14 as W8 of resonance-nemeton/docs/THE-NEMETON-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: the-temporal''s window and its three derived states (resonance-awen/tools/the-temporal/); the-clavis'' declared-host pattern for the primitive (resonance-awen/tools/the-clavis/ · src/hosts/webcrypto.ts · src/hosts/node.ts). CONSUMED BY: meetings (row 4.25). KP''s words of 2026-09-14 (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:710): "this is why awen exists, because stand alone tools exist needed in multiple places." MARK: small; it serves 0.20''s clause on nemeton''s own video and audio channels (:702, :708). Step 6 of the document''s order, with W6 and W7.',
 'a platform hand, at KP''s ⚛ word'),

('The Channel', 'the-channel', 'transform',
 'The encrypted channel''s protocol half: the key agreement''s message shape, the session''s state as data, the envelope of a sealed message, and the ordering and replay rules. In go the session state, a declared random value, host-supplied derivation and cipher, and a message. Out come the next session state and the envelope to send, or the message read. Every primitive — the agreement, the derivation, the cipher — is a declared host surface implemented by nobody here, and every nonce and ephemeral key arrives as an input, because randomness is not a water''s to make.',
 'resonance-awen/tools/the-channel', 'imagined', '🛖', 'Awen',
 (select id from public.atoms where atom_word = 'channel'), null, null,
 'Described 2026-09-14 as W9 of resonance-nemeton/docs/THE-NEMETON-WATERS.md; seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: nothing in the spring encrypts — the-clavis is "signing, not secrecy" (resonance-awen/tools/the-clavis/) and the-lok is "a gate, never a cipher" (resonance-awen/tools/the-lok/). CONSUMED BY: meetings and the bridge. MARK: large, and a ruling first — the document''s wall, verbatim: "A protocol half is pure and buildable under this house''s law only if every primitive is a declared host surface and every nonce and ephemeral key arrives as an input — randomness is forbidden in a water. The primitive itself is not buildable here at all. W9 is KP''s to rule before a hand writes it." The row stands imagined and stays there; the ruling and the crossing are KP''s. It serves row 4.24 (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:651) and is step 7, last in the document''s order. The charter it serves is KP''s word, 2026-08-28 (resonance-nemeton/README.md:16-19): "Online and offline sovereign safe communications. A way for the people who matter to reach each other that works when the network does and keeps working when it does not, where the record belongs to the people talking and to nobody else."',
 'a platform hand, at KP''s ⚛ word');

-- THE CROSSING to 'flowing' is KP's ⚛ word alone, and W9 waits on their
-- ruling besides. No update is written here.

-- ─── verify (read-only, safe to re-run) ───────────────────────────────

-- the nine rows by slug:
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen
where slug in ('the-grove', 'the-merge', 'the-presence', 'the-reach',
               'the-pairing', 'the-signaling', 'the-routing', 'the-relay',
               'the-channel')
order by slug;

-- each of this paper's faces, and every row wearing it:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name) as worn_by
from public.awen
where icon_emoji in ('🌲', '🔀', '🏕️', '📶', '🤝', '🛜', '🕸️', '📮', '🛖')
group by icon_emoji
order by icon_emoji;

-- the atoms the nine rows ride:
select atom_word, category_name, atom_type, state, status, modifiers
from public.atoms
where atom_word in ('grove', 'merge', 'presence', 'reach', 'pairing',
                    'signaling', 'routing', 'relay', 'channel')
order by atom_word;
-- ============================================================
