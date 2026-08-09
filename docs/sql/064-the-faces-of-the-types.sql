-- ============================================================================
-- 064 — THE FACES OF THE TYPES
-- The tool types and the grammar types receive their color + emoji faces
-- IN THE ORIGINAL SENSORY LEXICON (KP's ⚛ word, 2026-08-08: "or original
-- sensory lexicon since most is empty right now") — the canon carries
-- every single-word type; the Grammar folksonomy carries ONLY what the
-- canon cannot: compound labels (enum_name · PascalCase…), which are
-- molecule-class names and can never be atoms.
--
-- Provenance — KP's ⚛ words verbatim, 2026-08-08 morning: "Awen just
-- raised the cumdach so i can see within the tools easily, now we are in
-- need of sensory lexicons for the atoms that represent our tools type
-- options so i can have it utilized in awens displays" · "we will be
-- doing similar here so we will end also needing grammar types covered
-- by color and emoji" · "this can be awen folksonoty" · "and grammar
-- folksonomy" · "or original sensory lexicon since most is empty right
-- now" — the last word leads; the displays read the canon
-- (query_atom's sensory embed · query_sense), one truth for every app.
--
-- Ground truth probed live: all 8 tool_type labels stand as atoms
-- (7 wear wave-emoji, transform bare); atom_type/state and bond_type
-- labels partly stand; 7 single-word labels are NOT yet atoms and are
-- seeded in Movement 1 so their trigger-born shells exist to fill.
-- The palette's law: hues carry meaning; families share a temperature;
-- existing canon values are never overwritten (fill-empty, COALESCE).
--
-- Run at KP's ⚛ dashboard, movements in order. His reading of this file
-- and his run ARE the editorial eye — the seeded rows land published.
-- Plain SQL, no DO blocks.
-- ============================================================================


-- MOVEMENT 1 — SEVEN LABEL ATOMS SEEDED (the type words not yet in the
-- Grammar; trg_atom_insert births + links their 1:1:1 shells itself —
-- the INSERT is the whole seed; THE CASE LAW columns ride each row)

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, snake_case, screaming_case, pascal_case)
select 'joiner', 'The knot between words — the particle whose whole duty is holding others together.', 'root', 5, 5, 1, 'static', 'published', 'joiner', 'JOINER', 'Joiner'
where not exists (select 1 from public.atoms where atom_word = 'joiner');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, snake_case, screaming_case, pascal_case)
select 'tense', 'A word''s hold on time — when its meaning happens. In grammar, the marker of past, present, or coming.', 'root', 5, 5, 1, 'static', 'published', 'tense', 'TENSE', 'Tense'
where not exists (select 1 from public.atoms where atom_word = 'tense');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, snake_case, screaming_case, pascal_case)
select 'transitional', 'Between phases — the state of a thing caught mid-change, lawfully neither what it was nor yet what it becomes.', 'root', 5, 5, 1, 'static', 'published', 'transitional', 'TRANSITIONAL', 'Transitional'
where not exists (select 1 from public.atoms where atom_word = 'transitional');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, snake_case, screaming_case, pascal_case)
select 'covalent', 'Bonded by sharing — held together by what both parties give into the space between them.', 'root', 5, 5, 1, 'static', 'published', 'covalent', 'COVALENT', 'Covalent'
where not exists (select 1 from public.atoms where atom_word = 'covalent');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, snake_case, screaming_case, pascal_case)
select 'ionic', 'Bonded by attraction of opposites — one gives, one receives, and the pull between them is the bond.', 'root', 5, 5, 1, 'static', 'published', 'ionic', 'IONIC', 'Ionic'
where not exists (select 1 from public.atoms where atom_word = 'ionic');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, snake_case, screaming_case, pascal_case)
select 'metallic', 'Bonded in a lattice — many holding meaning in common, shared freely across the whole, owned by none.', 'root', 5, 5, 1, 'static', 'published', 'metallic', 'METALLIC', 'Metallic'
where not exists (select 1 from public.atoms where atom_word = 'metallic');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, snake_case, screaming_case, pascal_case)
select 'concept', 'A named idea not yet embodied — meaning that runs ahead of machinery, lawfully.', 'root', 5, 5, 1, 'static', 'published', 'concept', 'CONCEPT', 'Concept'
where not exists (select 1 from public.atoms where atom_word = 'concept');


-- MOVEMENT 2 — THE CANON WEARS THE FACES (fill-empty only: COALESCE
-- keeps every wave-emoji and any color already standing)

-- 2a: the eight tool types (the Awen displays' own faces)
update public.sensory_lexicon set emoji = coalesce(emoji,'📸'), color_hex = coalesce(color_hex,'#E8A33D') where atom_word = 'capture';
update public.sensory_lexicon set emoji = coalesce(emoji,'🎼'), color_hex = coalesce(color_hex,'#5B8DEF') where atom_word = 'arrange';
update public.sensory_lexicon set emoji = coalesce(emoji,'🦋'), color_hex = coalesce(color_hex,'#8E5BC0') where atom_word = 'transform';
update public.sensory_lexicon set emoji = coalesce(emoji,'⚗️'), color_hex = coalesce(color_hex,'#B8860B') where atom_word = 'refine';
update public.sensory_lexicon set emoji = coalesce(emoji,'🥣'), color_hex = coalesce(color_hex,'#C96F4A') where atom_word = 'combine';
update public.sensory_lexicon set emoji = coalesce(emoji,'📤'), color_hex = coalesce(color_hex,'#2E9E97') where atom_word = 'emit';
update public.sensory_lexicon set emoji = coalesce(emoji,'🧿'), color_hex = coalesce(color_hex,'#2456A6') where atom_word = 'witness';
update public.sensory_lexicon set emoji = coalesce(emoji,'🌏'), color_hex = coalesce(color_hex,'#3E9B6E') where atom_word = 'translate';

-- 2b: atom_type (growth greens — the morphology family)
update public.sensory_lexicon set emoji = coalesce(emoji,'🌱'), color_hex = coalesce(color_hex,'#3E8E5A') where atom_word = 'root';
update public.sensory_lexicon set emoji = coalesce(emoji,'🅰️'), color_hex = coalesce(color_hex,'#67B08B') where atom_word = 'prefix';
update public.sensory_lexicon set emoji = coalesce(emoji,'🔚'), color_hex = coalesce(color_hex,'#8FC3A7') where atom_word = 'suffix';
update public.sensory_lexicon set emoji = coalesce(emoji,'🪢'), color_hex = coalesce(color_hex,'#569B84') where atom_word = 'joiner';
update public.sensory_lexicon set emoji = coalesce(emoji,'🔧'), color_hex = coalesce(color_hex,'#4E9E77') where atom_word = 'modifier';
update public.sensory_lexicon set emoji = coalesce(emoji,'⏳'), color_hex = coalesce(color_hex,'#7FAE9B') where atom_word = 'tense';

-- 2c: atom_state (signal colors; active's canon green stands untouched)
update public.sensory_lexicon set emoji = coalesce(emoji,'🗿'), color_hex = coalesce(color_hex,'#8A8D91') where atom_word = 'static';
update public.sensory_lexicon set emoji = coalesce(emoji,'✅'), color_hex = coalesce(color_hex,'#32CD32') where atom_word = 'active';
update public.sensory_lexicon set emoji = coalesce(emoji,'🌗'), color_hex = coalesce(color_hex,'#E6B23A') where atom_word = 'transitional';

-- 2d: bond_type (the chemistry's own metals)
update public.sensory_lexicon set emoji = coalesce(emoji,'🤝'), color_hex = coalesce(color_hex,'#7A9EBF') where atom_word = 'covalent';
update public.sensory_lexicon set emoji = coalesce(emoji,'🧲'), color_hex = coalesce(color_hex,'#C05299') where atom_word = 'ionic';
update public.sensory_lexicon set emoji = coalesce(emoji,'🔩'), color_hex = coalesce(color_hex,'#9A9EA6') where atom_word = 'metallic';

-- 2e: molecule_domain single words (realm hues; rows no-op silently
-- where the word is not yet an atom — the coverage report below tells)
update public.sensory_lexicon set emoji = coalesce(emoji,'🗄️'), color_hex = coalesce(color_hex,'#4A6FA5') where atom_word = 'database';
update public.sensory_lexicon set emoji = coalesce(emoji,'🚪'), color_hex = coalesce(color_hex,'#C97B3D') where atom_word = 'api';
update public.sensory_lexicon set emoji = coalesce(emoji,'🪟'), color_hex = coalesce(color_hex,'#B85CA6') where atom_word = 'ui';
update public.sensory_lexicon set emoji = coalesce(emoji,'📚'), color_hex = coalesce(color_hex,'#7B68EE') where atom_word = 'knowledge';
update public.sensory_lexicon set emoji = coalesce(emoji,'⚙️'), color_hex = coalesce(color_hex,'#5F7161') where atom_word = 'system';
update public.sensory_lexicon set emoji = coalesce(emoji,'🏗️'), color_hex = coalesce(color_hex,'#8B6F47') where atom_word = 'infrastructure';

-- 2f: the concept label
update public.sensory_lexicon set emoji = coalesce(emoji,'💭'), color_hex = coalesce(color_hex,'#9B8AC4') where atom_word = 'concept';


-- MOVEMENT 3 — THE GRAMMAR FOLKSONOMY, only where the canon cannot go:
-- compound labels (molecule-class names, never atoms). word = the label
-- verbatim so displays join on the stored value.

-- 3a: naming_convention (five)
insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🐍', 'snake_case', 'words_walking_low — lowercase joined by underscores; the base''s own tongue.', '#6B8F71', 'river-grass green', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='snake_case');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🏛️', 'PascalCase', 'EveryWordCapitalized — the convention classes and components wear.', '#5E7CB8', 'column-stone blue', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='PascalCase');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🐫', 'camelCase', 'firstWordLow, restCapitalized — the convention functions and variables wear.', '#B58B4C', 'dune tan', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='camelCase');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '📣', 'SCREAMING_CASE', 'ALL_CAPS_JOINED — the convention constants wear, heard across the file.', '#C25B4E', 'herald red', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='SCREAMING_CASE');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🔗', 'kebab-case', 'words-strung-on-hyphens — the convention files and tools wear.', '#7C8A99', 'skewer gray', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='kebab-case');

-- 3b: molecule_type (sixteen — the badge every molecule card wears;
-- structure labels in archive blues, name labels in ink violets)
insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🔢', 'enum_name', 'The name a closed set of choices wears.', '#4A6FA5', 'archive blue', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='enum_name');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🔘', 'enum_option', 'One lawful choice within a closed set.', '#5E82B8', 'option blue', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='enum_option');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🪆', 'composite_type', 'A shape holding shapes — a type whose fields are themselves typed.', '#4A6FA5', 'nesting blue', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='composite_type');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🧩', 'composite_field', 'One piece within a composite shape.', '#5E82B8', 'piece blue', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='composite_field');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🔧', 'function_name', 'The name a piece of doing answers to.', '#6D5BA8', 'ink violet', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='function_name');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🎚️', 'function_parameter', 'What a function asks to be handed.', '#8573BC', 'input violet', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='function_parameter');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🧨', 'trigger_name', 'The name of an act that fires on another act.', '#A85B5B', 'spark umber', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='trigger_name');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '📜', 'policy_name', 'The name of a rule about who may read or write.', '#8B6F47', 'scroll umber', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='policy_name');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '📇', 'index_name', 'The name of a fast road to slow data.', '#4A8FA5', 'card-file teal', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='index_name');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🏢', 'column_name', 'The name one kind of fact wears in a table.', '#4A6FA5', 'pillar blue', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='column_name');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🗂️', 'table_name', 'The name a whole kind of record answers to.', '#3E5F8F', 'ledger blue', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='table_name');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🧊', 'object_name', 'The name a bundled thing carries whole.', '#6D5BA8', 'prism violet', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='object_name');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🟩', 'field_name', 'The name one slot in a shape answers to.', '#8573BC', 'slot violet', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='field_name');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '⚛️', 'atom_type_value', 'A lawful kind an atom may be — the Grammar naming its own parts.', '#3E8E5A', 'self-aware green', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='atom_type_value');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '🚦', 'atom_state_value', 'A lawful state an atom may hold — the Grammar naming its own motion.', '#4E9E77', 'signal green', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='atom_state_value');

insert into public.thesaurus (emoji, word, definition, color_hex, sensory_color, folksonomy_type, created_by)
select '💭', 'concept', 'A named idea that is not yet code — meaning ahead of machinery.', '#9B8AC4', 'thought lilac', 'Grammar', 'KP + Fable (lane F, the Serenade lamp)'
where not exists (select 1 from public.thesaurus where folksonomy_type='Grammar' and word='concept');


-- MOVEMENT 4 — VERIFY (read-only)

-- (a) every single-word type label's canon face, in one reading
select atom_word, emoji, color_hex
from public.sensory_lexicon
where atom_word in ('capture','arrange','transform','refine','combine','emit','witness','translate',
                    'root','prefix','suffix','joiner','modifier','tense',
                    'static','active','transitional',
                    'covalent','ionic','metallic',
                    'database','api','ui','knowledge','system','infrastructure','concept')
order by atom_word;

-- (b) THE COVERAGE REPORT — type words with NO canon row yet (not atoms;
-- these ride Wave A-2's seed list so their faces gain a canon home)
select w.word as missing_from_canon
from (values ('database'),('api'),('ui'),('knowledge'),('system'),('infrastructure')) as w(word)
where not exists (select 1 from public.sensory_lexicon s where s.atom_word = w.word)
order by 1;

-- (c) the folksonomy sets counted
select folksonomy_type, count(*) from public.thesaurus
group by folksonomy_type order by folksonomy_type;


-- ============================================================================
-- Held open at KP's ⚛ word: organism_type faces (the 063 kinds + code-
-- provenance types) the day organism cards want badges · tools.status
-- faces (flowing · imagined) if the Almanac's tiers want color · any
-- domain word movement 4(b) reports missing joins Wave A-2's seeds.
--
-- Drafted 2026-08-08 by Fable 🎻, the Serenade lamp (lane F), from the
-- living base; runs at KP's ⚛ dashboard — his reading and his run are
-- the editorial eye, so Movement 1's atoms land published.
-- ============================================================================
