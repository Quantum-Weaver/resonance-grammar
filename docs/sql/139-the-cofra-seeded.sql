-- 139 — the-cofra seeded
--
-- THE COFRA — the chest. cófra (Irish), A CHEST, a coffer. The house's zip,
-- standing as its own water. Founded 2026-09-02 by a builder dealt by
-- Windrose 🎻 in the Second Harvest sitting, movement H4, at KP's ⚛ word,
-- verbatim: "the-zip, yes".
--
-- THE RULING IT SERVES — resonance-chamber/desk/THE-SECOND-HARVEST.md, row 48,
-- verbatim:
--   "the-zip, yes"
--
-- IT IS A HARVEST, AND KP'S ⚛ RULING ON EVERY HARVEST IS VERBATIM:
--   "without altering the source location."
-- src/archive.ts is a byte-identical copy of
-- resonance-cruthu/src/lib/doc/archive.ts (the whole file, 437 lines,
-- sha256 0611288e…7ce5, copy digest identical). NOTHING WAS REPOINTED:
-- cruthu keeps its own file and every consumer of it inside that app, and
-- the-binder keeps its own write-only zip (src/cli.ts:171 on node:zlib, its
-- own pure crc32 at src/index.ts:599) and is named as a CONSUMER-TO-BE and
-- nothing more. If the house ever wants one zip instead of three, that is a
-- migration and KP's ⚛ word, never a harvesting builder's.
--
-- THE ONE THING THAT COULD NOT BE DONE, RECORDED HERE RATHER THAN GLOSSED:
-- the sending asked for the origin's compression to be wired through the
-- declared host WITHOUT editing the copy. It cannot be. The origin constructs
-- `new CompressionStream('deflate-raw')` INLINE at archive.ts:136, inside a
-- module-private `deflate()` that takes no host, is not exported, and is
-- called from inside zip() at :198. There is no seam. So the sending's own
-- stated fallback was taken whole — the copy IS the web road, CofraHost names
-- it, and src/hosts/node.ts stands beside it as a second implementation of the
-- same surface on node:zlib. Proof 8 diffs the two over eight inputs BYTE FOR
-- BYTE and they agree on every one (Node 24.15.0); proof 9 then pulls the
-- DEFLATE entry the copy's own inline CompressionStream wrote out of a
-- finished archive and inflates it through node:zlib. Mutating
-- globalThis.CompressionStream so the copy would pick up a host was considered
-- and SET DOWN: a spring tool reaching into the global object to make its own
-- copy work is a worse thing than a road named honestly.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. cófra is this hand's
-- reading of the need the board named. It lives in exactly two places in the
-- build — the constant TOOL_NAME and the folder — so a rename is one edit, one
-- `git mv`, and one update to this row and 138's.
--
-- CATEGORY: **data** (fe347dea-adba-46f5-8c37-25e55202f484) — see 138's header
-- for the ground (the house's own `compression` → `data` at
-- 004-first-definitions.sql:61, and the category's description at
-- 024-the-category-faces.sql:87-89), for why not infrastructure, and for the
-- plain statement that this builder ran no live query: the six live category
-- uuids were confirmed through the bridge by Windrose 🎻 on 2026-09-02 and
-- carried in the sending. **CONFIRM AT THE ANON DOOR BY KP'S ⚛ HAND** before
-- this file is run.
--
-- SHAPE TAKEN FROM THE-STEREOS'S OWN ROW (128/129): folksonomy_type `Awen` ·
-- status `imagined` at birth · `home` filled here (the 105/106 precedent).
-- tool_type is `transform` — named byte-runs in, one archive out; one archive
-- in, named byte-runs out.
--
-- FACE: 🧳 — a case that holds packed things and travels whole. One glyph, no
-- skin tone, no ZWJ, no flag, no red-alarm mark, and no other row wears it
-- (checked against 078's whole census, every face seeded since including 111's,
-- and the ten taken elsewhere in this sitting: 🎲🌈⚖️🛡️📊🔖🔭📑🧊⛩️). 📦, 🗃️,
-- 🗄️ and 🧰 were each checked and are TAKEN. 🗜️ — a clamp, which the world
-- reads as "compression" — was SET DOWN on 076's correction: a face is what
-- the THING is, never what it is used for.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("cofra") — the row
-- carries atom_id and no molecule. One tier exactly. (138's header records why
-- no molecule or organism row exists.)
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106/108/128
-- precedent).
--
-- THE TABLE IS public.awen. It was renamed from public.tools on 2026-08-15
-- (seed 096) and the shim view was dropped at KP's word on 097 — public.tools
-- answers PGRST205 today.
--
-- Local mirror pin (progenatrix): 55e416e9-8e71-41e2-926e-0952dc66127d
--   (pinned by the conductor, Windrose, 2026-09-02 — the builder's hand had no grant on the base and said so below.)
-- The local mirror pin (progenatrix) is NOT written here: this builder holds
-- no key to the base and pinned nothing. The conductor's to fill.
--
-- Run at KP's ⚛ hand, after 138. Verify at the anon door after.
-- NEVER RUN BY A LAMP: the seed is drafted and numbered; the crossing is his.

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values
  ('The Cofra', 'the-cofra', 'transform',
   'THE HOUSE''S ZIP, standing as its own water — a chest, which is a box with the list of what is in it fastened inside the lid. Read and write, STORED and DEFLATE, with no dependency at all. CRC-32 IS COMPUTED OVER EVERY ENTRY AS IT IS READ and checked against the directory; a mismatch names the entry and both values. ZIP64, ENCRYPTION AND EVERY OTHER COMPRESSION METHOD ARE REFUSED BY ENTRY NAME — method 12 is named bzip2, 99 is named AES, and a method the origin''s table does not know is refused by its number rather than guessed at — because a silent skip is the one failure a container must never have. AN ENTRY WITH NO DATE TAKES THE DOS EPOCH, 1980-01-01, which is the whole reason equal content writes equal bytes: nothing here ever asks the clock. The reader finds the end record by scanning back for its signature and confirming its comment length lands exactly on the end of the file; reads the central directory rather than trusting local sizes that flag bit 3 may defer; slices a stored entry rather than viewing it, so one small file cannot hold a whole archive behind it; skips a trailing-slash folder marker; and refuses a repeated name in both directions. THE PLATFORM PRIMITIVE IS NEVER IMPLEMENTED: CofraHost names raw deflate in both directions and NOTHING else — no level, no strategy, no dictionary, because the moment a host may be tuned two hosts stop writing the same bytes — with two reference hosts on two unrelated machines, the platform''s own CompressionStream and node:zlib, PROVEN BYTE-FOR-BYTE IDENTICAL over eight inputs rather than promised. No keys, no passwords, no ciphers, and no verb on the surface that could hold one. A HARVEST AND NEVER A RE-POINT — src/archive.ts is a byte-identical copy of resonance-cruthu/src/lib/doc/archive.ts, which was read and not written, and the-binder keeps its own write-only zip and was not repointed. Zero runtime dependencies, no disk, no clock, no network.',
   'resonance-awen/tools/the-cofra', 'imagined', '🧳', 'Awen',
   '4f0bff85-d5fe-467b-b408-f575b4bd7bd3',  -- the cofra atom, seeded in 138
   'Founded 2026-09-02 by a builder dealt by Windrose in the Second Harvest sitting, movement H4, at KP''s ⚛ word "the-zip, yes", answering board row 48. The row was open because the code was real, proven and load-bearing and had no water: 437 dependency-free lines inside one app''s document folder, doing the one job every other realm will eventually want done. Harvested under KP''s ⚛ standing ruling "without altering the source location": the whole file copied byte-identical, sha256 0611288e…7ce5 at both ends, with HARVEST.md carrying the digests and the command that re-proves them, and resonance-cruthu''s git status empty at landing. THE ONE THING THAT COULD NOT BE DONE IS SAID PLAINLY RATHER THAN DESIGNED AROUND: the origin constructs CompressionStream inline inside a module-private deflate() that takes no host and is not exported, so there was no seam to wrap; the sending''s stated fallback was taken whole, the copy IS the web road, CofraHost names it, and a node:zlib road stands beside it as a second implementation of the same surface. Mutating globalThis.CompressionStream was considered and set down. The proofs do not take the origin''s word for anything: a malformed zip is MADE rather than found — a zip64 locator spliced in before the end record, the directory offset rewritten to 0xffffffff, and one central record''s name shortened by four bytes so the freed four become a zip64 extra field with the record''s tail unmoved, giving three refusals and three sentences each naming zip64. One bit of a stored entry is flipped so the length still matches and only the CRC can catch it. The compression method is read OUT OF THE LOCAL HEADERS rather than inferred, showing all three writer paths: prose deflates 1,536 bytes to 71, a store entry is method 0 because the caller said so, and 4,096 bytes of seeded noise are method 0 too because deflate could not shrink them and the writer kept them whole rather than growing them. Both hosts write the same raw deflate over eight inputs, byte for byte, on Node 24.15.0 — and that is stated as a claim about ONE MACHINE, not about every platform. Gates at landing: check silent with "types": [] and six host globals hand-declared in src/platform.d.ts so the verbatim copy compiles unchanged; build clean; 14/14 TRUE. THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE — it lives in one constant and one folder so a rename is cheap.',
   'a builder dealt by Windrose, at KP''s ⚛ word');

-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it
-- now that the proofs stand; uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug = 'the-cofra';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen where slug = 'the-cofra';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'cofra';

-- no other row should wear 🧳:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name)
from public.awen where icon_emoji = '🧳' group by icon_emoji;

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'cofra'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'cofra';
