-- ============================================================
-- 158 — THE KHORÓS WATERS SEEDED (four waters, status imagined)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
--
-- SOURCE: resonance-khoros/docs/THE-KHOROS-WATERS.md, rows W1 to W4 of
-- "The waters to imagine". Nothing here is drawn from outside that page.
-- Numbered after 153; the four atoms below all stand already, so this
-- paper also stands on its own.
--
-- THE FOUR ROWS — atom · tool_type · face:
--
--   the-offer    W1  atom `offer`    STANDS (communication)
--                    tool_type `combine` — four separate pieces (the
--                    release, its sphragis, its merismos, its signet
--                    snapshot) become one row's fields, each still
--                    readable in the result; the seal and the splits
--                    stay themselves inside `metadata`.
--                    Runner-up `translate`.
--                    face 🎟️ — an admission ticket: the work offered to
--                    the room. Runner-up 🎫, the same ticket without the
--                    counterfoil, set down so the pair is not split.
--
--   the-follow   W2  atom `follow`   STANDS (no category)
--                    tool_type `arrange` — segments and a chosen start
--                    placed in deliberate relation in time: what comes
--                    next, and whether to wait. Runner-up `witness`.
--                    face 📡 — the dish that tracks a live signal.
--                    Runner-up 🪩, set down: a mirror ball is a room's
--                    light, not the following of a stream.
--
--   the-measure  W3  atom `measure`  STANDS (measurement)
--                    tool_type `witness` — it reads a container and says
--                    what was there, a null where the bytes do not say;
--                    it attests and never judges. Runner-up `translate`.
--                    face 📀 — the container the reading walks.
--                    Runner-up 🏟️, set down: a stadium is the venue, not
--                    the file.
--
--   the-sidecar  W4  atom `sidecar`  STANDS (infrastructure)
--                    tool_type `transform` — a sidecar's text becomes
--                    sorted keys and a stamped value to store, with the
--                    unknown carried whole and unparseable json kept as
--                    the string it was: the form changes, the truth does
--                    not. Runner-up `arrange`.
--                    face 🛰️ — what rides beside the body it serves.
--                    Runner-up 🎫, set down: a ticket names admission,
--                    not a file beside a file.
--
-- Unworn and left in this paper's pool: 🎫 🪩 🏟️.
--
-- CATEGORY is an atom's column, not an awen row's — the parentheses
-- above record which category each standing atom already carries.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: every name here is one word,
-- so every row carries atom_id and leaves molecule_id and organism_id
-- null. One tier exactly, four times.
--
-- Etymology and sensory rows are not written here: the atoms stand and
-- their companions are the triggers' work.
--
-- This paper only inserts: no update, no crossing to `flowing`, no delete.
-- ============================================================

insert into public.awen
  (name, slug, tool_type, definition, home, status,
   atom_id, molecule_id, organism_id, story, created_by,
   folksonomy_type, icon_emoji)
values

-- W1
('The Offer', 'the-offer', 'combine',
 'The offer, as data. A sealed release becomes the fields of a works row, and what is missing is named rather than guessed. In go a release in the-release-model''s shape, its sphragis, its merismos, its signet snapshot, the addresses of its files, its ring, and the artisan profile id the caller declares. Out come the row''s fields as data — name, work_type, cover_url, media_urls, streaming_url, metadata, price, pricing_model, status and artisan_profile_id — and a list of what is absent or refused. The ring maps to a status, the files to media_urls, the cover to cover_url, the stream''s address to streaming_url, and the seal and the splits to metadata. It shapes no row while a named part has not consented, and it writes nothing anywhere.',
 'resonance-awen/tools/the-offer', 'imagined',
 (select id from public.atoms where atom_word = 'offer'), null, null,
 'WHAT STANDS ALREADY: the column list and all three enums are generated — AudHDities/src/lib/generated/types/hermes-social/works.ts and AudHDities/src/lib/generated/validators/hermes-social/works.ts; the site''s Loom already writes the same row at AudHDities/src/components/asgard/domains/hermes/studio/StudioForm.tsx:164-165; the four pieces it binds all flow. CONSUMERS: sistrum, sceal, ardan, cruthu and scribe — every studio the plan gives an offer; the Loom is its second reader. MARK: medium, 3.41''s publish target (THE-FINAL-FEATURES-PLAN.md:643); step 4 of the page''s order, once 0.19 says where a file lands (:628). THE CHARTER IT SERVES, KP 2026-09-14 verbatim: "streaming system for audio and video artists of all kinds - listening and watching place for the content other sovereign apps have produced" (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:578). The carry road''s client half is rejected for this realm, and the offer is the half Khorós holds. One hand and one verifier, proofs in the water''s own folder, mirrored into its consumers by copy with a MIRROR.md. Described 2026-09-14 as W1 of resonance-khoros/docs/THE-KHOROS-WATERS.md, drawn at KP''s ⚛ word: "similarly please with ardan, sceal, sistrum, nemeton, khoros and grammar let us discover, if any stand alone waters needing imagined to be built to support these things." Seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base".',
 'a platform hand, at KP''s ⚛ word',
 'Awen', '🎟️'),

-- W2
('The Follow', 'the-follow', 'arrange',
 'A manifest and what has already played become the next segment and whether the room waits. In go a manifest — the-sruth''s house JSON, or an m3u8 text — the segments already played, and a chosen start. Out come the next segment''s own name, whether to wait, and the delay as a number. The start is the caller''s choice: the first birth, or the live edge with the honest delay named. It reads the text face too, for a manifest this house did not render. It is the playout half of a live road: a room following a live stream.',
 'resonance-awen/tools/the-follow', 'imagined',
 (select id from public.atoms where atom_word = 'follow'), null, null,
 'WHAT STANDS ALREADY: readHouse, findSegment, honestDelay and renderPlaylist at resonance-awen/tools/the-sruth/src/index.ts:399 · 219 · 233 · 461; the-sruth names this water''s absence itself — "a room that FOLLOWS a live stream is a consumer''s work that does not exist yet" (tools/the-sruth/README.md, honest limit 3). CONSUMERS: Khorós''s watch room; sistrum 4.20 and sceal 4.21, whose own monitors follow what they send. MARK: medium, 5.11''s playout half (THE-FINAL-FEATURES-PLAN.md:655); step 6 of the page''s order, after 0.19, which waits on a machine to point at (:628). WALLS NAMED ON THE SAME PAGE: the-sruth carries no authentication or access control at all, and no ceiling on how many segments a stream may accumulate, the loopback default its only mitigation (tools/the-sruth/README.md, honest limit 5); the-sruth''s playlist durations are the target the broadcaster was asked for, not a measurement. One hand and one verifier, proofs in the water''s own folder, mirrored into its consumers by copy with a MIRROR.md. Described 2026-09-14 as W2 of resonance-khoros/docs/THE-KHOROS-WATERS.md, drawn at KP''s ⚛ word: "similarly please with ardan, sceal, sistrum, nemeton, khoros and grammar let us discover, if any stand alone waters needing imagined to be built to support these things." Seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base".',
 'a platform hand, at KP''s ⚛ word',
 'Awen', '📡'),

-- W3
('The Measure', 'the-measure', 'witness',
 'A media file''s own duration, and for a moving picture its pixel dimensions, read from the container''s bytes. In go the head bytes of a file, handed in by the caller; the container is named from what those bytes say. Out come the container named, the duration in seconds or null, the dimensions or null, and the telling. Two moving-picture containers are read — Matroska/WebM and ISO-BMFF/MP4 — beside the audio containers the-colophon names but does not time. Unreadable is a null and one sentence, never a guess. It stops at measurement and never demuxes.',
 'resonance-awen/tools/the-measure', 'imagined',
 (select id from public.atoms where atom_word = 'measure'), null, null,
 'WHAT STANDS ALREADY: the-colophon''s card carries format, title, artist, album, track, year, art and comments and no duration (resonance-awen/tools/the-colophon/src/index.ts:28-41); the-catalogue-raisonne''s own finding is that its 0.5s rule cannot run without one; the-cofra and the-akshara are the house''s precedent for a byte walk. CONSUMERS: Khorós''s catalogue and its duplicate law; compass; sceal and ardan, which land WebM; sistrum, which lands WAV. MARK: medium; step 2 of the page''s order, after which the-colophon''s card and the catalogue''s 0.5s rule both run on one reading. It needs no host and no subdomain. WALL NAMED ON THE SAME PAGE: the-sruth''s playlist durations are the target the broadcaster was asked for, not a measurement, and it rewrites no bytes (tools/the-sruth/README.md, honest limits 1 and 2) — this water measures and does not transcode. One hand and one verifier, proofs in the water''s own folder, mirrored into its consumers by copy with a MIRROR.md. Described 2026-09-14 as W3 of resonance-khoros/docs/THE-KHOROS-WATERS.md, drawn at KP''s ⚛ word: "similarly please with ardan, sceal, sistrum, nemeton, khoros and grammar let us discover, if any stand alone waters needing imagined to be built to support these things." Seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base".',
 'a platform hand, at KP''s ⚛ word',
 'Awen', '📀'),

-- W4
('The Sidecar', 'the-sidecar', 'transform',
 'What a studio lands beside a file, as one grammar read and written. In go a sidecar''s text, the consumer''s key and what it declares. Out come the sorted keys — studio, signet, clavis and merismos — the whole beside them, the tellings, and the stamped value to store. The known keys are sorted; everything unknown is carried whole; json that will not parse is kept as the string it was; and the consumer''s own stamp is added under its own key. One grammar serves both the reading and the writing.',
 'resonance-awen/tools/the-sidecar', 'imagined',
 (select id from public.atoms where atom_word = 'sidecar'), null, null,
 'WHAT STANDS ALREADY: two hands already write this grammar separately — resonance-sistrum/src/lib/provenance.ts (245 lines, the writer) and resonance-khoros/src/lib/waters/provenance.ts (the reader, with asSignet, asMerismos and stampCarried); sistrum''s column at resonance-sistrum/src-tauri/src/lib.rs:108,135. CONSUMERS: sistrum, sceal and ardan write it; Khorós reads it; the-offer carries it into metadata. MARK: small; step 1 of the page''s order, born from the two hands that already write it, with sistrum and Khorós on its mirror. It needs no host and no subdomain. THE SPRING''S REASON FOR THIS ROAD, KP 2026-09-14 verbatim: "this is why awen exists, because stand alone tools exist needed in multiple places." (resonance-chamber/desk/THE-FINAL-FEATURES-PLAN.md:710) One hand and one verifier, proofs in the water''s own folder, mirrored into its consumers by copy with a MIRROR.md. Described 2026-09-14 as W4 of resonance-khoros/docs/THE-KHOROS-WATERS.md, drawn at KP''s ⚛ word: "similarly please with ardan, sceal, sistrum, nemeton, khoros and grammar let us discover, if any stand alone waters needing imagined to be built to support these things." Seeded imagined 2026-09-15 at KP''s ⚛ word: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base".',
 'a platform hand, at KP''s ⚛ word',
 'Awen', '🛰️');

-- ── verify (read-only, safe to re-run) ───────────────────────────────

-- the four rows as seeded:
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen
where slug in ('the-offer', 'the-follow', 'the-measure', 'the-sidecar')
order by slug;

-- one tier each, the atom only:
select slug, atom_id is not null as has_atom,
       molecule_id is null as no_molecule,
       organism_id is null as no_organism
from public.awen
where slug in ('the-offer', 'the-follow', 'the-measure', 'the-sidecar')
order by slug;

-- each face of this paper should have exactly one wearer:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name) as who
from public.awen
where icon_emoji in ('🎟️', '📡', '📀', '🛰️')
group by icon_emoji
order by icon_emoji;

-- the atoms these rows ride:
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms
where atom_word in ('offer', 'follow', 'measure', 'sidecar')
order by atom_word;

-- the waters they stand beside on this road, kept as they stand:
select name, slug, status, icon_emoji
from public.awen
where slug in ('the-sruth', 'the-ceilidh', 'the-player', 'the-colophon',
               'the-catalogue-raisonne', 'the-release-model',
               'the-listening-room', 'the-clavis', 'the-sphragis',
               'the-merismos', 'the-signet')
order by slug;
