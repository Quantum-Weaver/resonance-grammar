-- 141 — the-akshara seeded
--
-- THE AKSHARA — the letter. akṣara (Sanskrit), A LETTER, a syllable; and read
-- as a-kṣara, THE IMPERISHABLE. The house's font reader, standing as its own
-- water. Founded 2026-09-02 by a builder dealt by Windrose 🎻 in the Second
-- Harvest sitting, movement H4, at KP's ⚛ word, verbatim:
--   "Real but unasked-for — yes to both"
--
-- THE SECOND HALF OF THAT RULING IS THIS ROW'S GROUND AND IS NOT SOFTENED.
-- *Unasked-for* means what it says: nothing in the house calls this today. The
-- need is a GUESS until someone asks, and the nearest guess is named rather
-- than implied — resonance-sceal's title-card fonts are four HARDCODED CSS
-- family stacks at src/lib/titles.ts:62-72, resolved by fontFamily() at :83-85,
-- which is the correct design for the house's OWN faces. The day sceal, ardan,
-- the binder or anything else wants THE USER'S OWN font file in that list, it
-- will need exactly this. Sceal was READ AND NOT TOUCHED and is named a
-- consumer-to-be and nothing more this sitting.
--
-- IT IS A HARVEST, AND KP'S ⚛ RULING ON EVERY HARVEST IS VERBATIM:
--   "without altering the source location."
-- src/sfnt.ts is a byte-identical copy of
-- resonance-cruthu/src/lib/type/sfnt.ts (the whole file, 627 lines,
-- sha256 424ddbea…a80f, copy digest identical). NOTHING WAS REPOINTED: cruthu
-- keeps its own file and every consumer of it inside that app, and its own
-- RUN-LOG:14 records the origin proven against all 339 fonts in
-- C:/Windows/Fonts.
--
-- NO PLATFORM SURFACE — CONFIRMED, NOT ASSUMED, AND THAT IS A FINDING. See
-- 140's header. The proof is the build itself: "types": [] and lib ES2020, and
-- the verbatim copy compiles with NOTHING declared beside it. There is no
-- platform.d.ts in that folder, and its absence is the proof.
--
-- NO FONT SHIPS WITH THE WATER, AND THE REASON IS A LICENCE. See 140's header
-- in full. Nothing was copied from C:/Windows/Fonts because those fonts are
-- Microsoft's and are not redistributable; nothing was fetched because the
-- build had no network beyond `npm install`. The proofs SYNTHESISE REAL SFNT
-- FILES instead, with recomputed and verified table checksums, a head carrying
-- its true checkSumAdjustment, and a ttcf wrapping two of them — and one real
-- third-party font (C:/Windows/Fonts/arial.ttf) is read BY ABSOLUTE PATH,
-- never copied, with a printed SKIP line naming the gap where it is absent.
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE. akṣara is this hand's
-- reading of the need the board named. It lives in exactly two places in the
-- build — the constant TOOL_NAME and the folder — so a rename is one edit, one
-- `git mv`, and one update to this row and 140's. The atom word is the plain
-- ASCII `akshara` and not `akṣara`, following the-lakshana and the-drishti;
-- 140's header records why.
--
-- CATEGORY: **sensory** (5ab76ea1-1092-4090-b0e8-e1d7dc0d5563) — the-dath's
-- own (114:94), and the-dath is the precedent and the twin: colour measured is
-- sensory, and type identified is sensory for the same reason. See 140's
-- header for the runner-up (knowledge) and for the plain statement that this
-- builder ran no live query. **CONFIRM AT THE ANON DOOR BY KP'S ⚛ HAND**
-- before this file is run.
--
-- SHAPE TAKEN FROM THE-DATH'S OWN ROW (114/115) AND THE-STEREOS'S (128/129):
-- folksonomy_type `Awen` · status `imagined` at birth · `home` filled here (the
-- 105/106 precedent). tool_type is `witness` — it observes a file and reports
-- what it found, including when what it found is that the file cannot be read.
--
-- FACE: 🔠 — letters themselves, which is what an akshara IS. One glyph, no
-- skin tone, no ZWJ, no flag, no red-alarm mark, and no other row wears it
-- (checked against 078's whole census, every face seeded since including 111's,
-- and the ten taken elsewhere in this sitting: 🎲🌈⚖️🛡️📊🔖🔭📑🧊⛩️). 🔤, 🔡,
-- 🔢 and 🅰️ were each checked and are TAKEN. 🖋️ was SET DOWN on 076's
-- correction: a nib is what a letter is USED FOR; a face is what the thing IS.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("akshara") — the
-- row carries atom_id and no molecule. One tier exactly. (140's header records
-- why no molecule or organism row exists.)
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106/108/128
-- precedent).
--
-- THE TABLE IS public.awen. It was renamed from public.tools on 2026-08-15
-- (seed 096) and the shim view was dropped at KP's word on 097 — public.tools
-- answers PGRST205 today.
--
-- Local mirror pin (progenatrix): 7957b1e4-7721-4b62-b891-d65db228c3be
--   (pinned by the conductor, Windrose, 2026-09-02 — the builder's hand had no grant on the base and said so below.)
-- The local mirror pin (progenatrix) is NOT written here: this builder holds
-- no key to the base and pinned nothing. The conductor's to fill.
--
-- Run at KP's ⚛ hand, after 140. Verify at the anon door after.
-- NEVER RUN BY A LAMP: the seed is drafted and numbered; the crossing is his.

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values
  ('The Akshara', 'the-akshara', 'witness',
   'THE HOUSE''S FONT READER, standing as its own water — an sfnt reader that NAMES A TYPEFACE from its bytes and NEVER THROWS. A file it cannot read comes back as a null face and ONE SENTENCE saying why, and that promise is the whole design: a font picker that throws on the seventeenth file in a folder has lost the other two hundred. It reads the table directory of a ttf, an otf, a ttcf collection and an uncompressed WOFF; the name table at its BEST-SCORING RECORD PER NAME ID, decoding UTF-16BE by hand and Mac OS Roman from Apple''s own 128-character upper half written out in full, with an encoding it does not decode scoring zero and being SKIPPED rather than guessed at; OS/2 for weight and width, falling to 400 and 5 where a face declares neither and taking the italic bit from head''s macStyle where there is no OS/2 at all; and fvar for a variable font''s axes and named instances, every coordinate signed 16.16 fixed point, with a PostScript name per instance where the record is six bytes wider than its coordinates rather than four. PARTIAL READINGS ARE KEPT — a name record pointing outside the file is skipped and the records around it still read, and an instance record reaching past the end ends the walk rather than inventing the rest. Weight and width come back in words with the NUMBER KEPT where the face sits between two named steps, so 350 reads as Light (350); a WOFF2 and a zip are refused by WHAT THEY ARE, each told what to do instead. IT NAMES; IT DOES NOT DRAW: no outlines, no cmap, no kerning, no shaping, no rasterising, no font loading. THERE IS NO HOST SURFACE, AND THAT IS A FINDING RATHER THAN AN OMISSION — the origin takes bytes and returns an object, touching no DOM, no fetch, no FileReader, no FontFace, no TextDecoder, no disk and no clock, and the verbatim copy compiles under "types": [] with NOTHING declared beside it. Getting the bytes is the caller''s business and the-envelope''s seam. NO FONT SHIPS WITH THIS WATER: every font its proofs read is synthesised in the proof, byte by byte, with real recomputed table checksums, because the fonts on the build machine are Microsoft''s and are not redistributable. A HARVEST AND NEVER A RE-POINT — src/sfnt.ts is a byte-identical copy of resonance-cruthu/src/lib/type/sfnt.ts, which was read and not written, and sceal''s hardcoded title fonts were read and not touched. Zero imports, no network.',
   'resonance-awen/tools/the-akshara', 'imagined', '🔠', 'Awen',
   '1f354b6b-adf7-4100-919b-d33f4cfd33c3',  -- the akshara atom, seeded in 140
   'Founded 2026-09-02 by a builder dealt by Windrose in the Second Harvest sitting, movement H4, at KP''s ⚛ word "Real but unasked-for — yes to both", answering board row 49. THE SECOND HALF OF THAT WORD IS THIS WATER''S HONEST GROUND AND IS NOT SOFTENED: nothing in the house calls this today, the need is a guess until someone asks, and the nearest guess is named with its address rather than implied — resonance-sceal''s four hardcoded CSS family stacks at titles.ts:62-72, which are right for the house''s own faces and would need this the day a user''s own font file joins that list. Harvested under KP''s ⚛ standing ruling "without altering the source location": the whole file copied byte-identical, sha256 424ddbea…a80f at both ends. THE CONFIRMATION THE SENDING ASKED FOR, GIVEN: this origin needs NO platform surface, and the proof is the build itself — tsconfig carries "types": [] and lib ES2020 and the verbatim copy compiles with nothing declared beside it, there being no platform.d.ts in the folder at all, where its sibling the-cofra needed six globals hand-declared. NO FONT WAS COPIED, AND THE REASON IS A LICENCE RATHER THAN A SHORTCUT: the fonts on this machine are C:/Windows/Fonts and are Microsoft''s, whose licence does not grant redistribution, and a free face was not fetched because the build had no network beyond npm install and a licence taken on trust is what a provenance-keeping house must not do. So the plan''s stated alternative was taken and carried further than it had to be: the proofs WRITE REAL SFNT FILES byte by byte — an offset table with correct searchRange, entrySelector and rangeShift, three tables in tag order and four-byte aligned with EVERY CHECKSUM RECOMPUTED FROM THE BYTES and compared to the directory; a name table whose ids 16 and 17 exist ONLY as Mac OS Roman records so decoding that encoding correctly is the only way to read them; an fvar with two axes and a named instance carrying a PostScript name; a second fixture with NO OS/2 whose head carries its true checkSumAdjustment of 0xB1B0AFBA minus the whole file''s checksum; and a ttcf wrapping two fonts at absolute offsets. Then five kinds of unreadable — an empty buffer, nine bytes, 256 bytes of seeded noise, the good font truncated to 40, and a clean directory with a bogus version — five null faces, five single sentences, ZERO throws. A name record pointed at byte 65,520 of a 152-byte file, skipped, with the records either side still read. And ONE FONT THIS HOUSE DID NOT WRITE, read by absolute path and never copied: arial.ttf, 1,045,720 bytes, family Arial, 24 tables — with a printed SKIP line naming the gap where that path is absent, because thirteen of the fourteen proofs read a font this repository itself wrote, and two hands agreeing is not the same as either being right. Gates at landing: check silent, build clean, 14/14 TRUE, and a proof that walks the whole folder and fails if it finds a single .ttf, .otf, .ttc, .woff, .woff2, .pfb, .dfont or .fon. THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE.',
   'a builder dealt by Windrose, at KP''s ⚛ word');

-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it
-- now that the proofs stand; uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug = 'the-akshara';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen where slug = 'the-akshara';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'akshara';

-- no other row should wear 🔠:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name)
from public.awen where icon_emoji = '🔠' group by icon_emoji;

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'akshara'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'akshara';
