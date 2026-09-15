-- ============================================================
-- 160 — THE GRAMMAR WATERS, SEEDED (seven rows of public.awen)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
--
-- SOURCE: resonance-grammar/docs/THE-GRAMMAR-WATERS.md, rows W1 to W7,
-- drawn 2026-09-14 at KP's ⚛ word, verbatim (that document's preamble):
--   "similarly please with ardan, sceal, sistrum, nemeton, khoros and
--    grammar let us discover, if any stand alone waters needing imagined
--    to be built to support these things."
-- Seeded at status `imagined` 2026-09-15 at KP's ⚛ word, verbatim:
--   "names already suggested are accepted, we just need to seed atoms and
--    awen rows needed to support in in the knowledge base"
--
-- RUNS AFTER 153 (the twelve atoms and the three plural modifiers).
--
-- THE SEVEN ROWS — atom, type, face:
--
--   W1 the-cases   · atom `case`    — stands (knowledge), takes "s" in 153
--        TYPE transform: one name rendered in another form, its truth kept.
--        Runner-up translate — the renderings are conventions of one tongue,
--        not another tongue.
--        FACE 🔣 — the symbol keys, a name set in its lawful forms.
--        Runner-up 🔢 — the digit rule is one law of the set, not the water.
--
--   W2 the-audit   · atom `audit`   — stands (governance)
--        TYPE witness: it sees a document against stated laws and names
--        every row that breaks one. Runner-up emit — the report is an
--        output, but the judging is the water.
--        FACE ☑️ — the box ticked row by row. Runner-up 📋.
--
--   W3 the-closure · atom `closure` — born in 153
--        TYPE witness: closed, open and conflicts, each row named, nothing
--        guessed. Runner-up combine — it holds documents and living names
--        together, and neither becomes the other.
--        FACE 🧬 — atoms in molecules in organisms, every end present.
--        Runner-up 🔎.
--
--   W4 the-lattice · atom `lattice` — stands (no category)
--        TYPE arrange: placements, parents, ladders and ordered steps are
--        elements in deliberate relation. Runner-up witness — the three
--        refusals are attestations on top of the arrangement.
--        FACE 🎐 — a hanging frame whose strands cross. Runner-up 🗒️.
--
--   W5 the-frame   · atom `frame`   — stands (sensory)
--        TYPE emit: numbered batch documents sent outward in a chosen form.
--        Runner-up arrange — the ordering and the cap are arithmetic before
--        the documents are written out.
--        FACE 📋 — the clipboard a writing hand reads. Runner-up 🗒️.
--
--   W6 the-read    · atom `read`    — stands (knowledge)
--        TYPE translate: a request described in the house's terms carried
--        into the door's own dialect. Runner-up arrange — the page plan
--        places rows in order, but the dialect is the crossing.
--        FACE 🔎 — the read at the door. Runner-up 🔢.
--
--   W7 the-mark    · atom `mark`    — stands (knowledge)
--        TYPE witness: one string, one verdict, the fault named.
--        Runner-up capture — a mark is a grapheme taken hold of, but this
--        water only judges it. FACE 🪶 — the stroke that makes a mark.
--        Runner-up 🔣 (worn here by the-cases).
--
-- THE ONE-TIER LAW (tools_one_tier), walked: every name here is one word,
-- so each row carries atom_id and leaves molecule_id and organism_id null.
--
-- No category column stands on public.awen — category is the atom's.
-- Etymology and sensory rows are the atoms table's triggers' work.
--
-- Nothing crosses to `flowing` here. The crossing is KP's ⚛ hand.
-- NEVER RUN BY A LAMP: the paper is drafted and numbered.
-- ============================================================

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji,
   folksonomy_type, atom_id, molecule_id, organism_id, story, created_by)
values

('The Cases', 'the-cases', 'transform',
 'THE CASES OF THE NAME, BOTH WAYS. Words in bond order go in and the lawful renderings come out: three for one word — screaming, snake, pascal — and five for two or more, which add kebab and camel. A written name goes in and out come its words, its tier by the word-count law (one word an atom, two a molecule, three or more an organism), its convention, and the parity verdict — whether the written name matches any of its own renderings. The five convention labels are carried as data, and so are the single-letter and digit rules. Two directions and one law set: words to renderings, and a name back to its words, its tier, its convention and its verdict.',
 'resonance-awen/tools/the-cases', 'imagined', '🔣', 'Awen',
 (select id from public.atoms where atom_word = 'case'), null, null,
 'Described 2026-09-14 as W1 of resonance-grammar/docs/THE-GRAMMAR-WATERS.md and seeded imagined 2026-09-15 at KP''s ⚛ word, verbatim: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: five standings, three of which disagree on how a name splits — docs/sql/062-the-cases-of-the-name.sql (SQL, movements 2–4) · resonance-excavator/agents/functions/discover/case_forms.py with agents/functions/utils/convention_of.py, utils/derive.py, utils/_decompose_term.py and utils/dissect.py, plus agents/constants/CASE_SEAM.py and agents/constants/NAMING.py · resonance-bridge/verify_terms.py:50-69 · resonance-nectere/chains/atom_wave_seeder.py:143-145 and chains/molecule_wave_seeder.py:71-72 · resonance-awen/tools/the-ffynnon/src/index.ts:107,436-449. CONSUMED BY the excavator, nectere''s seeders, the-ffynnon, the bridge''s verify and the yard''s surfaces, which render the case columns. MARK: small, serving 2.57 — plans 22 and 23 read against the base and settled or re-cut (docs/ETYMOLOGY-FILLING-PLAN.md, docs/carries/THE-LATTICE-SEEDING-AND-SHUTTLE-PLAN.md, THE-FINAL-FEATURES-PLAN.md:639) — and plan 23''s PART B shuttle cannot be drafted without this water''s decomposition. Step 1 of the document''s order: the oldest duplication, and the one where three standings disagree. The two tongues are not settled here, a water wanted by nectere''s chains in python and by the yard in TypeScript being either written twice or carried as laws as data with one reference implementation. The name rides the root atom case, and the plural is the modifiers'' work.',
 'a platform hand, at KP''s ⚛ word'),

('The Audit', 'the-audit', 'witness',
 'THE SEED DOCUMENT, AUDITED. One or more seed documents and a law set go in, and out come the per-file counts and every row that breaks a law, named, with no base touched. What it measures: each file''s rows against its header''s own rows, its batch against its of, one field-name set across every row, no id repeated across a set, and each row against its table''s stated row laws. The row laws are data, one set per table, and etymology''s ledger is the first set — 0 empty, 33 meaning only, 66 meaning with all three roots, 100 a hand''s mark no machine writes.',
 'resonance-awen/tools/the-audit', 'imagined', '☑️', 'Awen',
 (select id from public.atoms where atom_word = 'audit'), null, null,
 'Described 2026-09-14 as W2 of resonance-grammar/docs/THE-GRAMMAR-WATERS.md and seeded imagined 2026-09-15 at KP''s ⚛ word, verbatim: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: nothing. The counts in seeds/etymology/COUNTS.md were taken by a one-line python read written into the journal itself (.journals/realm/2026-09-11-etymology-batch-1-verifier.md §What was run) and again by the closeout hand (.journals/realm/2026-09-11-etymology-closeout-tooling-hand.md). The ledger''s four values are stated in docs/ETYMOLOGY-FILLING-PLAN.md §completion_progress and docs/sql/040-the-etymology-ledger.sql. CONSUMED BY nectere''s seeders and hands in their dry runs, every writing hand, the verifier seat and the shuttle''s drafts. MARK: small, serving 3.38 — etymology composed for the 2,680 atoms, batched and delivered on the road that carried the 13 (THE-FINAL-FEATURES-PLAN.md:640) — after the writing, as the-frame serves it before. What plan 22 left unwritten is this water''s law set. Step 2 of the document''s order, with etymology''s ledger as its first law set. A similarity number is computable and a verdict is not: the etymology verifier''s finding that meanings restate their own definitions (.journals/realm/2026-09-11-etymology-batch-1-verifier.md §What is short) is a mind''s judgment measured by hand.',
 'a platform hand, at KP''s ⚛ word'),

('The Closure', 'the-closure', 'witness',
 'THE SEEDING CLOSURE. A set of seed documents and the list of names already living go in, and out comes what is closed and what is open, row by row — every molecule''s atoms present, every organism''s molecules and atoms present, every junction''s both ends present, every membership''s scheme and entity present, every relation''s subject and object present, every path step''s member present. A name living in more than one tier is named as a conflict and never guessed. Three answers and no fourth: closed, open, conflicts, each naming the rows it holds.',
 'resonance-awen/tools/the-closure', 'imagined', '🧬', 'Awen',
 (select id from public.atoms where atom_word = 'closure'), null, null,
 'Described 2026-09-14 as W3 of resonance-grammar/docs/THE-GRAMMAR-WATERS.md and seeded imagined 2026-09-15 at KP''s ⚛ word, verbatim: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: partial, and at delivery only — resonance-nectere/chains/grammar_seeder.py:144-202 resolves junction ends against the live base and drops an unresolved row with no report line, and chains/lattice_seeder.py:212-213,295-296,340 counts unresolved and tier conflicts for waves 3, 4 and 5. CONSUMED BY nectere''s seeders, the excavator''s staging and the shuttle (PART B of plan 23). MARK: medium, serving 2.57 (THE-FINAL-FEATURES-PLAN.md:639), and it stands before any new molecule or organism wave and before the shuttle. Step 5 of the document''s order, and with the-cases and the-audit it is what plan 23''s PART B shuttle has been waiting on since 2026-07-27. The name rides the root atom closure, born in 153.',
 'a platform hand, at KP''s ⚛ word'),

('The Lattice', 'the-lattice', 'arrange',
 'THE LATTICE, AS A GRAPH WITH ITS LAWS. Schemes, memberships, relations, paths and steps go in as rows, and out come an entity''s placements per scheme, its primary per scheme, every parent it has — polyhierarchy kept whole, never cut to one — the ladder from an entity to its roots, and a path''s ordered steps with depth bounded at 8. Three refusals are named: a cycle, an edge whose scheme does not hold both ends, and a broader edge inside a rank dimension running the wrong way on sort_order. Relation types and scheme types are carried as data.',
 'resonance-awen/tools/the-lattice', 'imagined', '🎐', 'Awen',
 (select id from public.atoms where atom_word = 'lattice'), null, null,
 'Described 2026-09-14 as W4 of resonance-grammar/docs/THE-GRAMMAR-WATERS.md and seeded imagined 2026-09-15 at KP''s ⚛ word, verbatim: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: the shapes and checks are in the schema (docs/sql/006-the-lattice.sql:42-227, relation types at :123-126, step position 1..8 at :210), and the read-side ladder walk is resonance-awen/tools/the-atlas/atlas.py. THE RANK LADDER''S WRITE-TIME LAW STANDS IN NO FILE: the plan names it (docs/carries/THE-LATTICE-SEEDING-AND-SHUTTLE-PLAN.md §Wave 4, "the check lives in the seeder before it lives anywhere else") and sort_order appears in docs/sql/006-the-lattice.sql:48,72,88 and in no seeder, so this water''s first standing of that law is its first standing anywhere, and its first run may name rows already home that break it. CONSUMED BY nectere''s lattice_seeder.py, the-atlas, the yard''s classification room and the shuttle. MARK: large, its scope being 2.57''s re-cut of plan 23 (THE-FINAL-FEATURES-PLAN.md:639). Step 6 of the document''s order.',
 'a platform hand, at KP''s ⚛ word'),

('The Frame', 'the-frame', 'emit',
 'THE COMPOSITION FRAME. Rows with their word, definition, category and type, plus a voice set and a batch size, go in, and out come the numbered batch documents — ordered by the word, capped at the stated size, each header''s rows equal to its own count and its batch and its of true, and each row carrying the frame a writing hand reads with the content fields left empty. It is table-agnostic: etymology today, the sensory lexicon next. The content fields are left empty for the writing hand.',
 'resonance-awen/tools/the-frame', 'imagined', '📋', 'Awen',
 (select id from public.atoms where atom_word = 'frame'), null, null,
 'Described 2026-09-14 as W5 of resonance-grammar/docs/THE-GRAMMAR-WATERS.md and seeded imagined 2026-09-15 at KP''s ⚛ word, verbatim: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: resonance-nectere/chains/etymology_wave_gen.py does it for etymology and reads the base itself, the size is fixed at BATCH_ROWS = 190 (:31), and the eleven-field row set is recorded in seeds/etymology/COUNTS.md. CONSUMED BY nectere''s generators, 3.38''s second wave and the sensory filling when it comes. MARK: small, serving 3.38 (THE-FINAL-FEATURES-PLAN.md:640) before the writing, as the-audit serves it after — with the two, 3.38''s road is tooled before a sentence is written. Step 3 of the document''s order. The composition itself is not a water: the frame is data, the writing is not, and no water shortens it. The 2,680 atoms seeded 2026-09-13 carry empty etymology and sensory rows, which this water frames and the-audit judges, and neither fills.',
 'a platform hand, at KP''s ⚛ word'),

('The Read', 'the-read', 'translate',
 'THE DOOR''S READ, AS ARITHMETIC. A table, columns, filters, an order and a page size go in, and out come the request''s parts and the page plan. Then a page of rows goes in, and out come the paging state advanced and the stop named. It opens nothing: the fetch is a declared host surface, the shape the-raksha already proves. The 1,000-row cap is a law carried as data. Request parts, offsets and paging state are the whole of it, and no row is ever fetched by the water itself.',
 'resonance-awen/tools/the-read', 'imagined', '🔎', 'Awen',
 (select id from public.atoms where atom_word = 'read'), null, null,
 'Described 2026-09-14 as W6 of resonance-grammar/docs/THE-GRAMMAR-WATERS.md and seeded imagined 2026-09-15 at KP''s ⚛ word, verbatim: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: it is re-written in every reader — the-abecedary/abecedary.py:100-109 · the-almanac/almanac.py:61-78 · the-atlas/atlas.py:79-86 · the-bestiary/bestiary.py:88-90 · the-formulary/formulary.py:92-101 · the-light-list/light_list.py:68-82 — and again in resonance-nectere/chains/etymology_wave_gen.py, chains/atom_wave_seeder.py, chains/molecule_wave_seeder.py, chains/grammar_seeder.py and chains/lattice_seeder.py. The declared host surface it leans on is the shape proven at resonance-awen/tools/the-raksha/README.md:52-69. CONSUMED BY the witness family (by copy with a MIRROR.md, since no tool imports another tool), nectere''s chains and hands, the bridge''s readers and the yard''s loaders. MARK: small, serving 2.57 (THE-FINAL-FEATURES-PLAN.md:639). Step 4 of the document''s order. It speaks PostgREST''s dialect, which is a service''s and not the house''s: its laws as data keep the dialect in one place, and they do not make it the house''s.',
 'a platform hand, at KP''s ⚛ word'),

('The Mark', 'the-mark', 'witness',
 'THE MARK, LAWFUL. One string goes in, and out comes one of two answers — it is one lawful mark for a Grammar row, or it is not and the reason is named. Four tests and no more decide it: the string is a single grapheme, it carries no skin-tone modifier, it is not a regional-indicator pair, and it is no component form. When a string fails, the answer says which of the four it failed, so a caller learns the fault and not only the refusal.',
 'resonance-awen/tools/the-mark', 'imagined', '🪶', 'Awen',
 (select id from public.atoms where atom_word = 'mark'), null, null,
 'Described 2026-09-14 as W7 of resonance-grammar/docs/THE-GRAMMAR-WATERS.md and seeded imagined 2026-09-15 at KP''s ⚛ word, verbatim: "names already suggested are accepted, we just need to seed atoms and awen rows needed to support in in the knowledge base". WHAT STANDS: the convention is written in the seed and nowhere in code (seeds/emoji/emoji-wave.json:4), and resonance-awen/tools/the-emoji-collector/collector.mjs:43 keeps fully-qualified non-component signs and names no single-mark law. CONSUMED BY sensory_lexicon.emoji, the beacons'' icon (docs/sql/075-the-beacon-icon.sql), the awen faces (078-the-tool-faces.sql), the category face (088-the-category-face.sql), the-lexicon and the hearth''s picker. MARK: small, serving 3.38 (THE-FINAL-FEATURES-PLAN.md:640). Step 7 of the document''s order, whenever the sensory filling begins.',
 'a platform hand, at KP''s ⚛ word');

-- ── verify (read-only, safe to re-run) ───────────────────────────────

-- the seven rows as seeded:
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen
where slug in ('the-cases', 'the-audit', 'the-closure', 'the-lattice', 'the-frame', 'the-read', 'the-mark')
order by slug;

-- the atoms the rows ride, and the plural `case` wears:
select atom_word, category_name, atom_type, state, status, modifiers
from public.atoms
where atom_word in ('case', 'audit', 'closure', 'lattice', 'frame', 'read', 'mark')
order by atom_word;

-- each face this paper sets, and everyone wearing it:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name)
from public.awen
where icon_emoji in ('🔣', '☑️', '🧬', '🎐', '📋', '🔎', '🪶')
group by icon_emoji
order by icon_emoji;

-- the one-tier law, walked on the seven:
select slug, atom_id is not null as rides_an_atom, molecule_id, organism_id
from public.awen
where slug in ('the-cases', 'the-audit', 'the-closure', 'the-lattice', 'the-frame', 'the-read', 'the-mark')
order by slug;
