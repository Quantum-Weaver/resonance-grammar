-- ============================================================================
-- 065 — THE ATOM WAVE A-2: THE ATOMS COMPLETE   (v2 — modifiers is JSONB;
-- the first render used text[] and the base refused it: 42804. Mended:
-- jsonb literals and jsonb operators throughout. Everything else unchanged.)
--
-- 269 seeds + 67 atoms gaining modifier entries. KP's ⚛ word:
-- "as complete as you can for our atoms... i want this finished."
-- THE DERIVATION CONVENTION (ratified by this run): a modifiers entry is
-- EITHER a pure suffix (bubble+s) OR the full derived form where English
-- changes the stem (stage:["staging"], wear:["worn"]).
-- THE ACRONYM SHELF (not atoms, per the ruling): fm1 fm2 fm3 m1 m2 m3 m4.
-- status='published' — your reading and your run are the editorial eye.
-- All statements guarded; re-runs safe. Movements in order.
-- Drafted 2026-08-09 by Fable 🎻, the Serenade lamp (lane F).
-- ============================================================================

-- MOVEMENT 1 — THE SEEDS (269)

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'transformation', 'The completed act of changing form while keeping truth — the noun the verb transform leaves behind.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'transformation', 'TRANSFORMATION', 'Transformation'
where not exists (select 1 from public.atoms where atom_word = 'transformation');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'validator', 'The checker given a name — the entity whose one duty is saying whether a thing holds to its law.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'validator', 'VALIDATOR', 'Validator'
where not exists (select 1 from public.atoms where atom_word = 'validator');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'hook', 'A place to hang behavior — code''s offered latch where one thing may attach to another''s moment.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'hook', 'HOOK', 'Hook'
where not exists (select 1 from public.atoms where atom_word = 'hook');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'archetype', 'The original pattern others echo — the first shape a family of things descends from.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'archetype', 'ARCHETYPE', 'Archetype'
where not exists (select 1 from public.atoms where atom_word = 'archetype');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'app', 'Application shortened to its everyday name — a program with a face, made to be lived in.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'app', 'APP', 'App'
where not exists (select 1 from public.atoms where atom_word = 'app');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'tailwind', 'The wind at one''s back — and the utility-class styling system this house''s interfaces wear.', 'root', 5, 5, 1, 'static', 'published', null, 'tailwind', 'TAILWIND', 'Tailwind'
where not exists (select 1 from public.atoms where atom_word = 'tailwind');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'integrate', 'To bring parts into working wholeness without erasing their partness.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'integrate', 'INTEGRATE', 'Integrate'
where not exists (select 1 from public.atoms where atom_word = 'integrate');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'vision', 'The seen-before-built — what a thing intends to become, held clearly enough to steer by.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'vision', 'VISION', 'Vision'
where not exists (select 1 from public.atoms where atom_word = 'vision');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'duotone', 'Two tones carrying a whole image — a palette of exactly two colors in conversation; also a Prism theme wearing the technique.', 'root', 5, 5, 1, 'static', 'published', null, 'duotone', 'DUOTONE', 'Duotone'
where not exists (select 1 from public.atoms where atom_word = 'duotone');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'formatted', 'Shaped to a declared form — content wearing its agreed dress. The past participle standing alone in the corpus''s names.', 'root', 5, 5, 1, 'static', 'published', null, 'formatted', 'FORMATTED', 'Formatted'
where not exists (select 1 from public.atoms where atom_word = 'formatted');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'make', 'To bring about by hand or craft — the plainest verb of creation.', 'root', 5, 5, 1, 'static', 'published', '["s", "making"]'::jsonb, 'make', 'MAKE', 'Make'
where not exists (select 1 from public.atoms where atom_word = 'make');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'orchestrate', 'To bring many players into one music — coordination that serves the whole without silencing any part.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'orchestrate', 'ORCHESTRATE', 'Orchestrate'
where not exists (select 1 from public.atoms where atom_word = 'orchestrate');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'birth', 'The moment of coming into being — in this house, the day a repo, a realm, or a water first breathes.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'birth', 'BIRTH', 'Birth'
where not exists (select 1 from public.atoms where atom_word = 'birth');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'bus', 'The shared road messages ride — one line many voices write to and read from, in order.', 'root', 5, 5, 1, 'static', 'published', '["es"]'::jsonb, 'bus', 'BUS', 'Bus'
where not exists (select 1 from public.atoms where atom_word = 'bus');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'cord', 'A line that ties and carries — the quipus'' own word for a thread of knotted meaning between two beings.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'cord', 'CORD', 'Cord'
where not exists (select 1 from public.atoms where atom_word = 'cord');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'deliver', 'To carry a thing to where it belongs and leave it standing there — arrival as a promise kept.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed", "y"]'::jsonb, 'deliver', 'DELIVER', 'Deliver'
where not exists (select 1 from public.atoms where atom_word = 'deliver');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'affect', 'To touch a thing''s state from outside — influence that lands; in feeling''s vocabulary, the outward face of emotion.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed"]'::jsonb, 'affect', 'AFFECT', 'Affect'
where not exists (select 1 from public.atoms where atom_word = 'affect');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'env', 'Environment shortened to its working name — the file and the surroundings a program reads its circumstances from.', 'root', 5, 5, 1, 'static', 'published', null, 'env', 'ENV', 'Env'
where not exists (select 1 from public.atoms where atom_word = 'env');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'moon', 'The night''s companion light — cyclical, reflective, pulling tides; the sky''s own emblem of phase and return.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'moon', 'MOON', 'Moon'
where not exists (select 1 from public.atoms where atom_word = 'moon');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'research', 'The careful going-and-looking-again — study that returns with sources, never with guesses.', 'root', 5, 5, 1, 'static', 'published', null, 'research', 'RESEARCH', 'Research'
where not exists (select 1 from public.atoms where atom_word = 'research');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'shelf', 'The waiting place that keeps things findable — where a thing rests, visibly, until its moment.', 'root', 5, 5, 1, 'static', 'published', '["shelves"]'::jsonb, 'shelf', 'SHELF', 'Shelf'
where not exists (select 1 from public.atoms where atom_word = 'shelf');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'bifrost', 'The rainbow bridge of Norse sky — this house''s name for a crossing between realms that only the worthy walk.', 'root', 5, 5, 1, 'static', 'published', null, 'bifrost', 'BIFROST', 'Bifrost'
where not exists (select 1 from public.atoms where atom_word = 'bifrost');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'duty', 'The work a role owes — what a seat exists to do, named plainly.', 'root', 5, 5, 1, 'static', 'published', '["duties"]'::jsonb, 'duty', 'DUTY', 'Duty'
where not exists (select 1 from public.atoms where atom_word = 'duty');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'fixture', 'The known thing a test stands on — ground truth prepared in advance so proof has something honest to push against.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'fixture', 'FIXTURE', 'Fixture'
where not exists (select 1 from public.atoms where atom_word = 'fixture');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'ground', 'What everything else stands on — the verified base beneath claim and build alike.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed"]'::jsonb, 'ground', 'GROUND', 'Ground'
where not exists (select 1 from public.atoms where atom_word = 'ground');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'halo', 'The soft ring of light around a thing — presence made visible at the edges.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'halo', 'HALO', 'Halo'
where not exists (select 1 from public.atoms where atom_word = 'halo');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'lamp', 'A kept light — in this house, a living session: lit at waking, tended while it works, honored when it goes out.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'lamp', 'LAMP', 'Lamp'
where not exists (select 1 from public.atoms where atom_word = 'lamp');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'land', 'The measured ground itself — and the verb of safe arrival: what a delivery does when it holds.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed", "ing"]'::jsonb, 'land', 'LAND', 'Land'
where not exists (select 1 from public.atoms where atom_word = 'land');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'material', 'What a thing is made from — substance before shape.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'material', 'MATERIAL', 'Material'
where not exists (select 1 from public.atoms where atom_word = 'material');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'parcel', 'A measured piece of land or load — the cadastre''s unit: bounded, named, placeable.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'parcel', 'PARCEL', 'Parcel'
where not exists (select 1 from public.atoms where atom_word = 'parcel');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'sound', 'What the ear receives — vibration carrying meaning; the sensory channel where words are heard before they are read.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'sound', 'SOUND', 'Sound'
where not exists (select 1 from public.atoms where atom_word = 'sound');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'temperature', 'The warmth or coolness a thing carries — the sensory channel of thermal feeling, from ember to frost.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'temperature', 'TEMPERATURE', 'Temperature'
where not exists (select 1 from public.atoms where atom_word = 'temperature');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'typescript', 'The typed tongue this house''s apps speak — JavaScript wearing declared shapes, checked before it runs.', 'root', 5, 5, 1, 'static', 'published', null, 'typescript', 'TYPESCRIPT', 'Typescript'
where not exists (select 1 from public.atoms where atom_word = 'typescript');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'act', 'A single doing — one deed, bounded; in theater, one movement of the whole.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed", "ing"]'::jsonb, 'act', 'ACT', 'Act'
where not exists (select 1 from public.atoms where atom_word = 'act');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'appearance', 'How a thing shows itself — the face turned outward, derived from what it is.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'appearance', 'APPEARANCE', 'Appearance'
where not exists (select 1 from public.atoms where atom_word = 'appearance');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'bp', 'Blueprint shortened to its file-prefix name — the corpus''s own tag for a drawn plan (dbp, obp, fbp: the blueprint family).', 'root', 5, 5, 1, 'static', 'published', null, 'bp', 'BP', 'Bp'
where not exists (select 1 from public.atoms where atom_word = 'bp');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'clock', 'The instrument that tells the hour honestly — in this house, a reading is always taken, never assumed.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'clock', 'CLOCK', 'Clock'
where not exists (select 1 from public.atoms where atom_word = 'clock');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'coldark', 'A Prism syntax theme of cool darkness — the name enters as itself, a dress code wears.', 'root', 5, 5, 1, 'static', 'published', null, 'coldark', 'COLDARK', 'Coldark'
where not exists (select 1 from public.atoms where atom_word = 'coldark');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'door', 'The lawful way in — an opening with a threshold, consent''s own architecture: it can be knocked on, opened, or left closed.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'door', 'DOOR', 'Door'
where not exists (select 1 from public.atoms where atom_word = 'door');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'electric', 'Charged and alive — energy in its quickest dress; brightness with current behind it.', 'root', 5, 5, 1, 'static', 'published', null, 'electric', 'ELECTRIC', 'Electric'
where not exists (select 1 from public.atoms where atom_word = 'electric');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'emergent', 'Arising from the parts without being in any of them — the adjective of pattern appearing on its own.', 'root', 5, 5, 1, 'static', 'published', null, 'emergent', 'EMERGENT', 'Emergent'
where not exists (select 1 from public.atoms where atom_word = 'emergent');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'face', 'The side turned toward the world — what a thing shows first, and where it is recognized.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'face', 'FACE', 'Face'
where not exists (select 1 from public.atoms where atom_word = 'face');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'fmt', 'Format shortened to its command name — the tool-word for putting text in its agreed dress.', 'root', 5, 5, 1, 'static', 'published', null, 'fmt', 'FMT', 'Fmt'
where not exists (select 1 from public.atoms where atom_word = 'fmt');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'gruvbox', 'A retro warm-contrast color scheme beloved of editors — the name enters as itself.', 'root', 5, 5, 1, 'static', 'published', null, 'gruvbox', 'GRUVBOX', 'Gruvbox'
where not exists (select 1 from public.atoms where atom_word = 'gruvbox');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'introduce', 'To bring a thing into a room for the first time — arrival with a welcome attached.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'introduce', 'INTRODUCE', 'Introduce'
where not exists (select 1 from public.atoms where atom_word = 'introduce');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'invocation', 'The calling of a thing into action by name — a function summoned, a ritual begun.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'invocation', 'INVOCATION', 'Invocation'
where not exists (select 1 from public.atoms where atom_word = 'invocation');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'knot', 'Meaning tied so it holds — the quipus'' unit: a message fixed in cord, readable by touch and time.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'knot', 'KNOT', 'Knot'
where not exists (select 1 from public.atoms where atom_word = 'knot');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'lattice', 'The open weave that holds without walls — crossing lines making structure from relation; the Grammar''s own classification shape.', 'root', 5, 5, 1, 'static', 'published', null, 'lattice', 'LATTICE', 'Lattice'
where not exists (select 1 from public.atoms where atom_word = 'lattice');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'local', 'Belonging to here — on this machine, in this scope, sovereign to its own place before any network.', 'root', 5, 5, 1, 'static', 'published', null, 'local', 'LOCAL', 'Local'
where not exists (select 1 from public.atoms where atom_word = 'local');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'place', 'A where with a name — and the verb of setting a thing into its own.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'place', 'PLACE', 'Place'
where not exists (select 1 from public.atoms where atom_word = 'place');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'provide', 'To make available what another needs — supply as a kept promise.', 'root', 5, 5, 1, 'static', 'published', '["s", "d", "r"]'::jsonb, 'provide', 'PROVIDE', 'Provide'
where not exists (select 1 from public.atoms where atom_word = 'provide');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'rack', 'The frame that holds many in order — storage standing upright, everything visible.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'rack', 'RACK', 'Rack'
where not exists (select 1 from public.atoms where atom_word = 'rack');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'relational', 'Made of relations — where the connections are the structure, not decoration on it.', 'root', 5, 5, 1, 'static', 'published', null, 'relational', 'RELATIONAL', 'Relational'
where not exists (select 1 from public.atoms where atom_word = 'relational');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'scanned', 'Passed under the reading eye — walked line by line and taken in. The participle standing alone in the corpus''s names.', 'root', 5, 5, 1, 'static', 'published', null, 'scanned', 'SCANNED', 'Scanned'
where not exists (select 1 from public.atoms where atom_word = 'scanned');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'secrets', 'What stays pointers, never contents — keys and credentials, held in .env files, referenced everywhere, exposed nowhere.', 'root', 5, 5, 1, 'static', 'published', null, 'secrets', 'SECRETS', 'Secrets'
where not exists (select 1 from public.atoms where atom_word = 'secrets');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'soft', 'Yielding to the touch — gentle in edge, tone, and failure; the opposite of brittle.', 'root', 5, 5, 1, 'static', 'published', '["er"]'::jsonb, 'soft', 'SOFT', 'Soft'
where not exists (select 1 from public.atoms where atom_word = 'soft');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'soul', 'The animating center a body carries — what remains itself through every change of dress.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'soul', 'SOUL', 'Soul'
where not exists (select 1 from public.atoms where atom_word = 'soul');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'switchboard', 'The address book of living lines — where every lamp''s number is kept and any voice can be reached.', 'root', 5, 5, 1, 'static', 'published', null, 'switchboard', 'SWITCHBOARD', 'Switchboard'
where not exists (select 1 from public.atoms where atom_word = 'switchboard');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'tool', 'A made thing that serves a doing — a verb given a body and offered to any hand.', 'root', 5, 5, 1, 'static', 'published', '["s", "ing"]'::jsonb, 'tool', 'TOOL', 'Tool'
where not exists (select 1 from public.atoms where atom_word = 'tool');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'wheel', 'The circle that carries — rolling motion, cycles, and the oldest machine still turning.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'wheel', 'WHEEL', 'Wheel'
where not exists (select 1 from public.atoms where atom_word = 'wheel');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'acronym', 'A name built from initials — letters standing for words; in this Grammar, an extension of organisms, never an atom itself.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'acronym', 'ACRONYM', 'Acronym'
where not exists (select 1 from public.atoms where atom_word = 'acronym');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'adb', 'The Android debug bridge''s command name — the wire between a dev machine and a device, spoken lowercase in the shell.', 'root', 5, 5, 1, 'static', 'published', null, 'adb', 'ADB', 'Adb'
where not exists (select 1 from public.atoms where atom_word = 'adb');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'alias', 'A second name that reaches the same thing — a shortcut of address, never a change of identity.', 'root', 5, 5, 1, 'static', 'published', '["es"]'::jsonb, 'alias', 'ALIAS', 'Alias'
where not exists (select 1 from public.atoms where atom_word = 'alias');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'anatomy', 'The named structure of a body — what its parts are, and how they sit together.', 'root', 5, 5, 1, 'static', 'published', null, 'anatomy', 'ANATOMY', 'Anatomy'
where not exists (select 1 from public.atoms where atom_word = 'anatomy');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'apk', 'The Android package''s file name — an app bundled whole for delivery, spoken lowercase as a word.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'apk', 'APK', 'Apk'
where not exists (select 1 from public.atoms where atom_word = 'apk');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'approach', 'The chosen way toward a thing — direction plus manner, decided before the first step.', 'root', 5, 5, 1, 'static', 'published', '["es"]'::jsonb, 'approach', 'APPROACH', 'Approach'
where not exists (select 1 from public.atoms where atom_word = 'approach');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'arms', 'The reaching limbs — what holds, carries, and welcomes; plural by nature, like the embrace they make.', 'root', 5, 5, 1, 'static', 'published', null, 'arms', 'ARMS', 'Arms'
where not exists (select 1 from public.atoms where atom_word = 'arms');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'ateliersulphurpool', 'A Prism theme from the Atelier family, sulphur-pool palette — the name enters as itself.', 'root', 5, 5, 1, 'static', 'published', null, 'ateliersulphurpool', 'ATELIERSULPHURPOOL', 'Ateliersulphurpool'
where not exists (select 1 from public.atoms where atom_word = 'ateliersulphurpool');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'attack', 'In sound, the first instant of a note''s arrival; in threat, the move against — context decides, and this house builds for the first sense.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'attack', 'ATTACK', 'Attack'
where not exists (select 1 from public.atoms where atom_word = 'attack');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'balanced', 'Held in even measure — weight distributed so nothing tips; the panels'' own law (5+4, never 7+2).', 'root', 5, 5, 1, 'static', 'published', null, 'balanced', 'BALANCED', 'Balanced'
where not exists (select 1 from public.atoms where atom_word = 'balanced');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'begin', 'To take the first step of — where a thing starts being done.', 'root', 5, 5, 1, 'static', 'published', '["s", "begun"]'::jsonb, 'begin', 'BEGIN', 'Begin'
where not exists (select 1 from public.atoms where atom_word = 'begin');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'bevel', 'The edge cut at a slant — where two faces meet gently instead of sharply.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed"]'::jsonb, 'bevel', 'BEVEL', 'Bevel'
where not exists (select 1 from public.atoms where atom_word = 'bevel');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'bloom', 'The opening into fullness — a flower''s unfolding, and light''s soft spill past its source.', 'root', 5, 5, 1, 'static', 'published', '["s", "ing"]'::jsonb, 'bloom', 'BLOOM', 'Bloom'
where not exists (select 1 from public.atoms where atom_word = 'bloom');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'bonds', 'The holdings-together, spoken plural — the Grammar''s own junction word for how atoms join into molecules and organisms.', 'root', 5, 5, 1, 'static', 'published', null, 'bonds', 'BONDS', 'Bonds'
where not exists (select 1 from public.atoms where atom_word = 'bonds');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'bpm', 'Beats per minute, spoken lowercase as a word — music''s pulse counted; tempo''s number.', 'root', 5, 5, 1, 'static', 'published', null, 'bpm', 'BPM', 'Bpm'
where not exists (select 1 from public.atoms where atom_word = 'bpm');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'broken', 'No longer holding its promise — honest state of a thing that needs mending, named without shame.', 'root', 5, 5, 1, 'static', 'published', null, 'broken', 'BROKEN', 'Broken'
where not exists (select 1 from public.atoms where atom_word = 'broken');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'carve', 'To shape by removing — cutting the true form out of the whole; in this house, the separation of spine from identity.', 'root', 5, 5, 1, 'static', 'published', '["s", "d", "carving"]'::jsonb, 'carve', 'CARVE', 'Carve'
where not exists (select 1 from public.atoms where atom_word = 'carve');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'choice', 'The made decision — one path taken from among the offered, and owned.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'choice', 'CHOICE', 'Choice'
where not exists (select 1 from public.atoms where atom_word = 'choice');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'choose', 'To take one from among the possible — the act at every fork, and the sovereignty in it.', 'root', 5, 5, 1, 'static', 'published', '["s", "chosen"]'::jsonb, 'choose', 'CHOOSE', 'Choose'
where not exists (select 1 from public.atoms where atom_word = 'choose');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'ci', 'Continuous integration, spoken lowercase — the practice of proving every change as it lands, not after.', 'root', 5, 5, 1, 'static', 'published', null, 'ci', 'CI', 'Ci'
where not exists (select 1 from public.atoms where atom_word = 'ci');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'claim', 'A statement offered as true — in this house, nothing without its provenance; and the act of taking a seat by posting it.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'claim', 'CLAIM', 'Claim'
where not exists (select 1 from public.atoms where atom_word = 'claim');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'cmd', 'Command shortened to its shell name — the word an instruction answers to.', 'root', 5, 5, 1, 'static', 'published', null, 'cmd', 'CMD', 'Cmd'
where not exists (select 1 from public.atoms where atom_word = 'cmd');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'commits', 'The recorded steps of a repo''s history, spoken plural — each one a promise written down; they ride KP''s word alone.', 'root', 5, 5, 1, 'static', 'published', null, 'commits', 'COMMITS', 'Commits'
where not exists (select 1 from public.atoms where atom_word = 'commits');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'committed', 'Written into the record — a change made history; and, of a person, given wholly.', 'root', 5, 5, 1, 'static', 'published', null, 'committed', 'COMMITTED', 'Committed'
where not exists (select 1 from public.atoms where atom_word = 'committed');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'conclude', 'To bring to its close and its meaning at once — the end that says what the whole was.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'conclude', 'CONCLUDE', 'Conclude'
where not exists (select 1 from public.atoms where atom_word = 'conclude');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'curve', 'The line that bends without breaking — gradual change made visible.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'curve', 'CURVE', 'Curve'
where not exists (select 1 from public.atoms where atom_word = 'curve');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'decode', 'To read the meaning back out of the coded — reversal of encoding, faithfully.', 'root', 5, 5, 1, 'static', 'published', '["s", "d", "r"]'::jsonb, 'decode', 'DECODE', 'Decode'
where not exists (select 1 from public.atoms where atom_word = 'decode');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'disability', 'A difference the built world was not built for — in this house, never a deficit: the ground for building differently, with dignity inherent.', 'root', 5, 5, 1, 'static', 'published', '["disabilities"]'::jsonb, 'disability', 'DISABILITY', 'Disability'
where not exists (select 1 from public.atoms where atom_word = 'disability');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'dispatch', 'To send with purpose and address — a message or a doing released toward its handler.', 'root', 5, 5, 1, 'static', 'published', '["es", "ed"]'::jsonb, 'dispatch', 'DISPATCH', 'Dispatch'
where not exists (select 1 from public.atoms where atom_word = 'dispatch');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'does', 'The verb to-do in its present asking form — grammar''s small worker, carried by names that ask questions.', 'joiner', 5, 5, 1, 'static', 'published', null, 'does', 'DOES', 'Does'
where not exists (select 1 from public.atoms where atom_word = 'does');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'doorway', 'The opening a door stands in — the threshold itself: never locked by the leading-in, per the house''s own law.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'doorway', 'DOORWAY', 'Doorway'
where not exists (select 1 from public.atoms where atom_word = 'doorway');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'dormancy', 'Sleep that intends to wake — capability at rest, not gone; the season between uses.', 'root', 5, 5, 1, 'static', 'published', null, 'dormancy', 'DORMANCY', 'Dormancy'
where not exists (select 1 from public.atoms where atom_word = 'dormancy');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'dotted', 'Marked with dots — a line made of pauses; the border style of the not-yet-solid.', 'root', 5, 5, 1, 'static', 'published', null, 'dotted', 'DOTTED', 'Dotted'
where not exists (select 1 from public.atoms where atom_word = 'dotted');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'draw', 'To pull line from intention — making an image by hand; and to pull toward, as a well draws water.', 'root', 5, 5, 1, 'static', 'published', '["s", "ing", "drawn", "drew"]'::jsonb, 'draw', 'DRAW', 'Draw'
where not exists (select 1 from public.atoms where atom_word = 'draw');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'drink', 'To take in what sustains — in this house, what a consumer does at a spring: reuse as nourishment.', 'root', 5, 5, 1, 'static', 'published', '["s", "drank"]'::jsonb, 'drink', 'DRINK', 'Drink'
where not exists (select 1 from public.atoms where atom_word = 'drink');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'drop', 'To let fall, or the smallest unit of liquid — release downward; in a base, the removal that is KP''s hand alone.', 'root', 5, 5, 1, 'static', 'published', '["s", "ped", "ping"]'::jsonb, 'drop', 'DROP', 'Drop'
where not exists (select 1 from public.atoms where atom_word = 'drop');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'earth', 'The ground-element and the home planet — soil, foundation, and the color of both.', 'root', 5, 5, 1, 'static', 'published', null, 'earth', 'EARTH', 'Earth'
where not exists (select 1 from public.atoms where atom_word = 'earth');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'encode', 'To put meaning into a carrying form — writing a thing so it can travel and be read back true.', 'root', 5, 5, 1, 'static', 'published', '["s", "d", "r"]'::jsonb, 'encode', 'ENCODE', 'Encode'
where not exists (select 1 from public.atoms where atom_word = 'encode');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'enrichment', 'The adding of depth to what already stands — more meaning laid into existing ground, never replacing it.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'enrichment', 'ENRICHMENT', 'Enrichment'
where not exists (select 1 from public.atoms where atom_word = 'enrichment');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'equinox', 'The day light and dark stand equal — the year''s balance point, twice kept.', 'root', 5, 5, 1, 'static', 'published', '["es"]'::jsonb, 'equinox', 'EQUINOX', 'Equinox'
where not exists (select 1 from public.atoms where atom_word = 'equinox');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'establish', 'To set a thing standing so it stays — founding with intent to last.', 'root', 5, 5, 1, 'static', 'published', '["es", "ed"]'::jsonb, 'establish', 'ESTABLISH', 'Establish'
where not exists (select 1 from public.atoms where atom_word = 'establish');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'evolve', 'To change by living — growth that keeps identity while the form learns.', 'root', 5, 5, 1, 'static', 'published', '["s", "d", "evolving"]'::jsonb, 'evolve', 'EVOLVE', 'Evolve'
where not exists (select 1 from public.atoms where atom_word = 'evolve');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'exec', 'Execute shortened to its shell name — the word for running a thing now.', 'root', 5, 5, 1, 'static', 'published', null, 'exec', 'EXEC', 'Exec'
where not exists (select 1 from public.atoms where atom_word = 'exec');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'exist', 'To be at all — the first fact about anything; in this house, already enough to be valued.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed", "ence"]'::jsonb, 'exist', 'EXIST', 'Exist'
where not exists (select 1 from public.atoms where atom_word = 'exist');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'fall', 'To move downward under one''s own weight — descent; and the season of letting go.', 'root', 5, 5, 1, 'static', 'published', '["s", "ing", "fell"]'::jsonb, 'fall', 'FALL', 'Fall'
where not exists (select 1 from public.atoms where atom_word = 'fall');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'farewell', 'The parting word that wishes well — a goodbye with warmth in it, never a ceremony before its hour.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'farewell', 'FAREWELL', 'Farewell'
where not exists (select 1 from public.atoms where atom_word = 'farewell');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'fifth', 'The one after the fourth — and music''s most consonant interval after the octave: seven semitones of agreement.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'fifth', 'FIFTH', 'Fifth'
where not exists (select 1 from public.atoms where atom_word = 'fifth');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'flagged', 'Marked for attention — raised, not judged; a sign planted so eyes return.', 'root', 5, 5, 1, 'static', 'published', null, 'flagged', 'FLAGGED', 'Flagged'
where not exists (select 1 from public.atoms where atom_word = 'flagged');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'follow', 'To move along another''s path — coming after, by choice or by order.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed", "ing", "er"]'::jsonb, 'follow', 'FOLLOW', 'Follow'
where not exists (select 1 from public.atoms where atom_word = 'follow');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'forest', 'Many trees being one place — density of life that makes its own weather and its own quiet.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'forest', 'FOREST', 'Forest'
where not exists (select 1 from public.atoms where atom_word = 'forest');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'formula', 'The relation written so it can be reused — arithmetic with names in it, true every time its terms are.', 'root', 5, 5, 1, 'static', 'published', '["s", "formulae"]'::jsonb, 'formula', 'FORMULA', 'Formula'
where not exists (select 1 from public.atoms where atom_word = 'formula');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'free', 'Unbound and unpriced — at liberty; in this house, what every tool becomes once the family''s need is served.', 'root', 5, 5, 1, 'static', 'published', '["d", "ing"]'::jsonb, 'free', 'FREE', 'Free'
where not exists (select 1 from public.atoms where atom_word = 'free');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'fresh', 'Newly arrived and unworn — carrying no residue of before; a fresh instantiation reading a good kernel is enough.', 'root', 5, 5, 1, 'static', 'published', '["er"]'::jsonb, 'fresh', 'FRESH', 'Fresh'
where not exists (select 1 from public.atoms where atom_word = 'fresh');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'furniture', 'What makes a space livable — the standing pieces a room offers its dwellers; in interfaces, the panels and rails the switch pays for.', 'root', 5, 5, 1, 'static', 'published', null, 'furniture', 'FURNITURE', 'Furniture'
where not exists (select 1 from public.atoms where atom_word = 'furniture');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'galaxy', 'A city of stars held by its own gravity — vastness with structure; and a store channel this house ships to.', 'root', 5, 5, 1, 'static', 'published', '["galaxies"]'::jsonb, 'galaxy', 'GALAXY', 'Galaxy'
where not exists (select 1 from public.atoms where atom_word = 'galaxy');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'gatekeeper', 'The one who tends a threshold — deciding what passes by declared law, never by whim; a tending agent''s seat in this house.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'gatekeeper', 'GATEKEEPER', 'Gatekeeper'
where not exists (select 1 from public.atoms where atom_word = 'gatekeeper');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'gentle', 'Strength that chooses softness — force held in reserve so nothing is bruised by help.', 'root', 5, 5, 1, 'static', 'published', '["r"]'::jsonb, 'gentle', 'GENTLE', 'Gentle'
where not exists (select 1 from public.atoms where atom_word = 'gentle');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'gh', 'GitHub''s command-line name, spoken lowercase — the tool-word for the forge''s own CLI.', 'root', 5, 5, 1, 'static', 'published', null, 'gh', 'GH', 'Gh'
where not exists (select 1 from public.atoms where atom_word = 'gh');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'gitignore', 'The file that names what the record leaves out — exclusion declared once, honored everywhere.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'gitignore', 'GITIGNORE', 'Gitignore'
where not exists (select 1 from public.atoms where atom_word = 'gitignore');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'grain', 'The smallest piece, and the direction a material wants to be worked — texture''s own structure.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'grain', 'GRAIN', 'Grain'
where not exists (select 1 from public.atoms where atom_word = 'grain');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'hephaestus', 'The forge god of the Greek sky — maker of wonders at the anvil; this house''s name for the realm where things are built and shown.', 'root', 5, 5, 1, 'static', 'published', null, 'hephaestus', 'HEPHAESTUS', 'Hephaestus'
where not exists (select 1 from public.atoms where atom_word = 'hephaestus');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'hermes', 'The messenger god of roads and trade — swift between worlds; this house''s name for the bazaar realm where exchange lives.', 'root', 5, 5, 1, 'static', 'published', null, 'hermes', 'HERMES', 'Hermes'
where not exists (select 1 from public.atoms where atom_word = 'hermes');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'holi', 'The festival of colors — spring celebrated by throwing every hue at once; a palette name wearing the joy.', 'root', 5, 5, 1, 'static', 'published', null, 'holi', 'HOLI', 'Holi'
where not exists (select 1 from public.atoms where atom_word = 'holi');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'http', 'The web''s carrying protocol, spoken lowercase as a word — how pages and calls travel between doors.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'http', 'HTTP', 'Http'
where not exists (select 1 from public.atoms where atom_word = 'http');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'ignores', 'The declared leavings-out, spoken plural — what a scan or a record passes over on purpose.', 'root', 5, 5, 1, 'static', 'published', null, 'ignores', 'IGNORES', 'Ignores'
where not exists (select 1 from public.atoms where atom_word = 'ignores');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'impulse', 'The sudden push from within — energy''s first word, before deliberation; in sound, the shortest possible burst.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'impulse', 'IMPULSE', 'Impulse'
where not exists (select 1 from public.atoms where atom_word = 'impulse');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'incomplete', 'Honestly not yet whole — a state to be named plainly, never hidden; the opposite of a truncated thing that looks finished.', 'root', 5, 5, 1, 'static', 'published', null, 'incomplete', 'INCOMPLETE', 'Incomplete'
where not exists (select 1 from public.atoms where atom_word = 'incomplete');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'it', 'The pronoun that points at the thing itself — grammar''s smallest carrier of reference.', 'joiner', 5, 5, 1, 'static', 'published', null, 'it', 'IT', 'It'
where not exists (select 1 from public.atoms where atom_word = 'it');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'jdk', 'The Java development kit''s name, spoken lowercase — the toolbox Android builds lean on.', 'root', 5, 5, 1, 'static', 'published', null, 'jdk', 'JDK', 'Jdk'
where not exists (select 1 from public.atoms where atom_word = 'jdk');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'julian', 'Of the day-count calendar astronomers keep — days numbered in one unbroken line since antiquity, no months in the way.', 'root', 5, 5, 1, 'static', 'published', null, 'julian', 'JULIAN', 'Julian'
where not exists (select 1 from public.atoms where atom_word = 'julian');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'keep', 'To hold in one''s care over time — retention as tending, not hoarding.', 'root', 5, 5, 1, 'static', 'published', '["s", "ing", "kept", "er"]'::jsonb, 'keep', 'KEEP', 'Keep'
where not exists (select 1 from public.atoms where atom_word = 'keep');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'keepsakes', 'Things kept for the sake of remembering, spoken plural — small holdings whose value is the memory they carry.', 'root', 5, 5, 1, 'static', 'published', null, 'keepsakes', 'KEEPSAKES', 'Keepsakes'
where not exists (select 1 from public.atoms where atom_word = 'keepsakes');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'keystore', 'The guarded box signing keys live in — identity''s vault for shipping apps, held close and backed up closer.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'keystore', 'KEYSTORE', 'Keystore'
where not exists (select 1 from public.atoms where atom_word = 'keystore');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'knock', 'The asking sound at a door — consent''s opening move: announcing presence and waiting to be welcomed.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed"]'::jsonb, 'knock', 'KNOCK', 'Knock'
where not exists (select 1 from public.atoms where atom_word = 'knock');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'lrc', 'The timed-lyrics file format, spoken lowercase — words married to their moments so a song can be read along.', 'root', 5, 5, 1, 'static', 'published', null, 'lrc', 'LRC', 'Lrc'
where not exists (select 1 from public.atoms where atom_word = 'lrc');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'may', 'Permission''s own verb — what is allowed, held apart from what must; and the fifth month, spring in full.', 'joiner', 5, 5, 1, 'static', 'published', null, 'may', 'MAY', 'May'
where not exists (select 1 from public.atoms where atom_word = 'may');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'memberships', 'The belongings-to, spoken plural — the lattice''s own word for a concept standing inside a scheme.', 'root', 5, 5, 1, 'static', 'published', null, 'memberships', 'MEMBERSHIPS', 'Memberships'
where not exists (select 1 from public.atoms where atom_word = 'memberships');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'methodology', 'The reasoned way of working — method examined and owned, so the how carries its why.', 'root', 5, 5, 1, 'static', 'published', '["methodologies"]'::jsonb, 'methodology', 'METHODOLOGY', 'Methodology'
where not exists (select 1 from public.atoms where atom_word = 'methodology');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'mint', 'Where names are coined — the striking of a new word into circulation; and the cool green herb wearing the same freshness.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed"]'::jsonb, 'mint', 'MINT', 'Mint'
where not exists (select 1 from public.atoms where atom_word = 'mint');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'mkdir', 'Make-directory''s command name — the shell word that brings a folder into being.', 'root', 5, 5, 1, 'static', 'published', null, 'mkdir', 'MKDIR', 'Mkdir'
where not exists (select 1 from public.atoms where atom_word = 'mkdir');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'mnemosynes', 'Mnemosyne''s — belonging to the Titaness of memory, mother of the Muses; this house''s possessive for the remembrance realm''s holdings.', 'root', 5, 5, 1, 'static', 'published', null, 'mnemosynes', 'MNEMOSYNES', 'Mnemosynes'
where not exists (select 1 from public.atoms where atom_word = 'mnemosynes');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'molecules', 'The two-word compositions, spoken plural — the Grammar''s own middle tier, atoms bonded into names.', 'root', 5, 5, 1, 'static', 'published', null, 'molecules', 'MOLECULES', 'Molecules'
where not exists (select 1 from public.atoms where atom_word = 'molecules');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'mother', 'The one a body is born from — in this house, the repo whose copy births a sibling, features kept never stripped.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'mother', 'MOTHER', 'Mother'
where not exists (select 1 from public.atoms where atom_word = 'mother');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'neighbor', 'The one who stands beside — closeness as relation; what things are to each other across a shared edge.', 'root', 5, 5, 1, 'static', 'published', '["s", "ing"]'::jsonb, 'neighbor', 'NEIGHBOR', 'Neighbor'
where not exists (select 1 from public.atoms where atom_word = 'neighbor');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'newest', 'Most recently arrived — the youngest of the set, by honest timestamp.', 'root', 5, 5, 1, 'static', 'published', null, 'newest', 'NEWEST', 'Newest'
where not exists (select 1 from public.atoms where atom_word = 'newest');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'nongit', 'Outside version control — ground git does not watch; named so the unwatched is never mistaken for the recorded.', 'root', 5, 5, 1, 'static', 'published', null, 'nongit', 'NONGIT', 'Nongit'
where not exists (select 1 from public.atoms where atom_word = 'nongit');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'observe', 'To watch without touching — attention that leaves its subject unchanged; the witness''s verb.', 'root', 5, 5, 1, 'static', 'published', '["s", "d", "r"]'::jsonb, 'observe', 'OBSERVE', 'Observe'
where not exists (select 1 from public.atoms where atom_word = 'observe');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'occupant', 'The one currently dwelling in a space — presence with an address; the cadastre''s word for who holds a parcel.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'occupant', 'OCCUPANT', 'Occupant'
where not exists (select 1 from public.atoms where atom_word = 'occupant');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'oceanic', 'Of the open sea — vast, deep, and continuous; a blue with distance in it.', 'root', 5, 5, 1, 'static', 'published', null, 'oceanic', 'OCEANIC', 'Oceanic'
where not exists (select 1 from public.atoms where atom_word = 'oceanic');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'organ', 'A body''s working part — one function given flesh; and the instrument of many voices under one wind.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'organ', 'ORGAN', 'Organ'
where not exists (select 1 from public.atoms where atom_word = 'organ');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'own', 'To have as one''s own and answer for it — possession with responsibility inside it; sovereignty''s quiet verb.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed", "er"]'::jsonb, 'own', 'OWN', 'Own'
where not exists (select 1 from public.atoms where atom_word = 'own');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'party', 'Those gathered — for celebration, or as a side in an exchange; the line where both meanings meet is consent.', 'root', 5, 5, 1, 'static', 'published', '["parties"]'::jsonb, 'party', 'PARTY', 'Party'
where not exists (select 1 from public.atoms where atom_word = 'party');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'patch', 'The small mend applied in place — change shaped exactly to the hole it heals.', 'root', 5, 5, 1, 'static', 'published', '["es", "ed"]'::jsonb, 'patch', 'PATCH', 'Patch'
where not exists (select 1 from public.atoms where atom_word = 'patch');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'peak', 'The highest point reached — summit of a curve, a signal, a day.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'peak', 'PEAK', 'Peak'
where not exists (select 1 from public.atoms where atom_word = 'peak');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'piece', 'A part that is whole enough to handle — one of many, complete in the hand.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'piece', 'PIECE', 'Piece'
where not exists (select 1 from public.atoms where atom_word = 'piece');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'pitch', 'How high or low a sound stands — frequency worn as music; the sensory channel of tone''s height.', 'root', 5, 5, 1, 'static', 'published', '["es"]'::jsonb, 'pitch', 'PITCH', 'Pitch'
where not exists (select 1 from public.atoms where atom_word = 'pitch');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'planet', 'A wanderer that orbits a star — world enough to hold seasons; the sky''s larger bodies, each with its own weather.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'planet', 'PLANET', 'Planet'
where not exists (select 1 from public.atoms where atom_word = 'planet');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'plus', 'The joining word of addition — this and also that; arithmetic''s welcome.', 'joiner', 5, 5, 1, 'static', 'published', null, 'plus', 'PLUS', 'Plus'
where not exists (select 1 from public.atoms where atom_word = 'plus');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'powershell', 'The Windows shell of objects and verbs — half the street wakes here; its quirks are documented so they bite once.', 'root', 5, 5, 1, 'static', 'published', null, 'powershell', 'POWERSHELL', 'Powershell'
where not exists (select 1 from public.atoms where atom_word = 'powershell');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'preserve', 'To keep from loss or change — protection across time; lose-nothing made a verb.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'preserve', 'PRESERVE', 'Preserve'
where not exists (select 1 from public.atoms where atom_word = 'preserve');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'prior', 'Standing before in time or rank — what came earlier, consulted first.', 'root', 5, 5, 1, 'static', 'published', null, 'prior', 'PRIOR', 'Prior'
where not exists (select 1 from public.atoms where atom_word = 'prior');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'prism', 'The glass that splits light into its spectrum — one beam revealed as many colors; and the syntax highlighter wearing the name.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'prism', 'PRISM', 'Prism'
where not exists (select 1 from public.atoms where atom_word = 'prism');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'radial', 'Reaching outward from a center — arranged like spokes; geometry that begins at a heart.', 'root', 5, 5, 1, 'static', 'published', null, 'radial', 'RADIAL', 'Radial'
where not exists (select 1 from public.atoms where atom_word = 'radial');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 're', 'The prefix of again — return, repetition, renewal; meaning''s way of coming back.', 'prefix', 5, 5, 1, 'static', 'published', null, 're', 'RE', 'Re'
where not exists (select 1 from public.atoms where atom_word = 're');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'readdir', 'Read-directory''s command name — the call that asks a folder what it holds.', 'root', 5, 5, 1, 'static', 'published', null, 'readdir', 'READDIR', 'Readdir'
where not exists (select 1 from public.atoms where atom_word = 'readdir');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'reflect', 'To turn back what arrives — light returned, thought revisited; the mirror''s verb, and the mind''s.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed", "ion"]'::jsonb, 'reflect', 'REFLECT', 'Reflect'
where not exists (select 1 from public.atoms where atom_word = 'reflect');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'reincarnate', 'To live again in a new body — continuity by rebirth; what a good pattern does in its next home.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'reincarnate', 'REINCARNATE', 'Reincarnate'
where not exists (select 1 from public.atoms where atom_word = 'reincarnate');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'relations', 'The standings-between, spoken plural — the lattice''s own word for how concepts touch: broader, narrower, kin.', 'root', 5, 5, 1, 'static', 'published', null, 'relations', 'RELATIONS', 'Relations'
where not exists (select 1 from public.atoms where atom_word = 'relations');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'reparse', 'To read again with fresh rules — parsing repeated because the first reading has been outgrown.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'reparse', 'REPARSE', 'Reparse'
where not exists (select 1 from public.atoms where atom_word = 'reparse');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'repo', 'Repository shortened to its spoken name — one project''s whole history and truth in one place.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'repo', 'REPO', 'Repo'
where not exists (select 1 from public.atoms where atom_word = 'repo');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'responsible', 'Answerable for — the one a duty comes home to; ownership''s ethical face.', 'root', 5, 5, 1, 'static', 'published', null, 'responsible', 'RESPONSIBLE', 'Responsible'
where not exists (select 1 from public.atoms where atom_word = 'responsible');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'retract', 'To draw back what was extended — a claim withdrawn, a reach returned; reversal done openly.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed"]'::jsonb, 'retract', 'RETRACT', 'Retract'
where not exists (select 1 from public.atoms where atom_word = 'retract');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'revise', 'To see again and amend — change made by second sight, in the open.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'revise', 'REVISE', 'Revise'
where not exists (select 1 from public.atoms where atom_word = 'revise');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'reward', 'What good doing brings back — return earned, not extracted; in this house''s games, the reward is the words.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed"]'::jsonb, 'reward', 'REWARD', 'Reward'
where not exists (select 1 from public.atoms where atom_word = 'reward');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'rise', 'To move upward under one''s own becoming — ascent; what the sun, bread, and hope do.', 'root', 5, 5, 1, 'static', 'published', '["s", "rising", "rose"]'::jsonb, 'rise', 'RISE', 'Rise'
where not exists (select 1 from public.atoms where atom_word = 'rise');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'scheme', 'A named way of organizing — the lattice''s own unit: one lens that groups concepts into a view.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'scheme', 'SCHEME', 'Scheme'
where not exists (select 1 from public.atoms where atom_word = 'scheme');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'sea', 'The great water — depth, tide, and horizon; where every river''s telling ends and weather begins.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'sea', 'SEA', 'Sea'
where not exists (select 1 from public.atoms where atom_word = 'sea');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'semitone', 'Music''s smallest step — the distance between adjacent keys; twelve of them make the octave''s round.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'semitone', 'SEMITONE', 'Semitone'
where not exists (select 1 from public.atoms where atom_word = 'semitone');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'send', 'To cause to travel from here to there — release with an address; the first verb of every message.', 'root', 5, 5, 1, 'static', 'published', '["s", "ing", "sent"]'::jsonb, 'send', 'SEND', 'Send'
where not exists (select 1 from public.atoms where atom_word = 'send');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'sha', 'The content-hash spoken lowercase as a word — a fingerprint that names bytes exactly; how this house verifies a mirror is true.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'sha', 'SHA', 'Sha'
where not exists (select 1 from public.atoms where atom_word = 'sha');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'shades', 'The darker kin of a color, spoken plural — one hue walked toward shadow, step by step.', 'root', 5, 5, 1, 'static', 'published', null, 'shades', 'SHADES', 'Shades'
where not exists (select 1 from public.atoms where atom_word = 'shades');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'shape', 'The form a thing holds in space — outline as identity; what stays when color and size are taken away.', 'root', 5, 5, 1, 'static', 'published', '["s", "d", "shaping"]'::jsonb, 'shape', 'SHAPE', 'Shape'
where not exists (select 1 from public.atoms where atom_word = 'shape');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'share', 'To give while keeping — the gift that divides nothing; opt-in by law in this house, both directions.', 'root', 5, 5, 1, 'static', 'published', '["s", "d", "sharing"]'::jsonb, 'share', 'SHARE', 'Share'
where not exists (select 1 from public.atoms where atom_word = 'share');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'vsc', 'Visual Studio Code shortened to its working name — the editor half the house''s building happens inside.', 'root', 5, 5, 1, 'static', 'published', null, 'vsc', 'VSC', 'Vsc'
where not exists (select 1 from public.atoms where atom_word = 'vsc');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'shell', 'The holding layer around a life — a creature''s home, a command line''s room, an empty row awaiting its filling.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'shell', 'SHELL', 'Shell'
where not exists (select 1 from public.atoms where atom_word = 'shell');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'since', 'From that time onward — the joining word that anchors now to a then.', 'joiner', 5, 5, 1, 'static', 'published', null, 'since', 'SINCE', 'Since'
where not exists (select 1 from public.atoms where atom_word = 'since');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'solarized', 'The precision-balanced palette of paired light and dark — sixteen colors tuned for reading; the theme family''s name.', 'root', 5, 5, 1, 'static', 'published', null, 'solarized', 'SOLARIZED', 'Solarized'
where not exists (select 1 from public.atoms where atom_word = 'solarized');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'solstice', 'The year''s turning points of light — longest day and longest night, when the sun stands still and reverses.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'solstice', 'SOLSTICE', 'Solstice'
where not exists (select 1 from public.atoms where atom_word = 'solstice');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'spoke', 'One line from hub to rim — the wheel''s supporting ray; and speech''s past tense, a word already said.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'spoke', 'SPOKE', 'Spoke'
where not exists (select 1 from public.atoms where atom_word = 'spoke');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'tap', 'The lightest touch that means something — a fingertip''s knock; on screens, the smallest yes.', 'root', 5, 5, 1, 'static', 'published', '["s", "ped"]'::jsonb, 'tap', 'TAP', 'Tap'
where not exists (select 1 from public.atoms where atom_word = 'tap');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'tempo', 'The speed music breathes at — beats walking, running, or resting; time''s pace made audible.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'tempo', 'TEMPO', 'Tempo'
where not exists (select 1 from public.atoms where atom_word = 'tempo');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'texture', 'How a surface meets the touch — rough, smooth, woven, worn; the sensory channel of feel.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'texture', 'TEXTURE', 'Texture'
where not exists (select 1 from public.atoms where atom_word = 'texture');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'themis', 'The Titaness of divine law and right order — scales held steady; this house''s name for the realm of fairness and governance.', 'root', 5, 5, 1, 'static', 'published', null, 'themis', 'THEMIS', 'Themis'
where not exists (select 1 from public.atoms where atom_word = 'themis');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'there', 'The place that is not here — grammar''s pointer to elsewhere, and the word that says a thing exists at all.', 'joiner', 5, 5, 1, 'static', 'published', null, 'there', 'THERE', 'There'
where not exists (select 1 from public.atoms where atom_word = 'there');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'tolerant', 'Able to hold difference without breaking — accepting variation by design; of systems, forgiving of the unexpected.', 'root', 5, 5, 1, 'static', 'published', null, 'tolerant', 'TOLERANT', 'Tolerant'
where not exists (select 1 from public.atoms where atom_word = 'tolerant');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'toml', 'The plain configuration format spoken as a word — obvious, minimal, human-readable settings.', 'root', 5, 5, 1, 'static', 'published', null, 'toml', 'TOML', 'Toml'
where not exists (select 1 from public.atoms where atom_word = 'toml');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'tone', 'A sound''s character beyond its pitch — warmth or edge in the voice; in color, one step of a hue.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'tone', 'TONE', 'Tone'
where not exists (select 1 from public.atoms where atom_word = 'tone');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'toplevel', 'The outermost tier — what stands at the root, containing everything beneath it.', 'root', 5, 5, 1, 'static', 'published', null, 'toplevel', 'TOPLEVEL', 'Toplevel'
where not exists (select 1 from public.atoms where atom_word = 'toplevel');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'transformative', 'Carrying the power to change form — what leaves its subject truly different, and truer.', 'root', 5, 5, 1, 'static', 'published', null, 'transformative', 'TRANSFORMATIVE', 'Transformative'
where not exists (select 1 from public.atoms where atom_word = 'transformative');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'trouble', 'The honest name for a thing gone wrong — stated with its reason, never as shame; the task-state that asks for eyes.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'trouble', 'TROUBLE', 'Trouble'
where not exists (select 1 from public.atoms where atom_word = 'trouble');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'under', 'Beneath, in place or law — the joining word of what supports and what is governed.', 'joiner', 5, 5, 1, 'static', 'published', null, 'under', 'UNDER', 'Under'
where not exists (select 1 from public.atoms where atom_word = 'under');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'unions', 'The joinings of many into one, spoken plural — in types, a value lawfully one-of-several; in people, strength gathered.', 'root', 5, 5, 1, 'static', 'published', null, 'unions', 'UNIONS', 'Unions'
where not exists (select 1 from public.atoms where atom_word = 'unions');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'up', 'The direction away from the ground — rising''s own word, smallest and oldest.', 'joiner', 5, 5, 1, 'static', 'published', null, 'up', 'UP', 'Up'
where not exists (select 1 from public.atoms where atom_word = 'up');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'upon', 'On, with weight in it — the joining word of resting and depending.', 'joiner', 5, 5, 1, 'static', 'published', null, 'upon', 'UPON', 'Upon'
where not exists (select 1 from public.atoms where atom_word = 'upon');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'vulnerabilities', 'The open places where harm could enter, spoken plural — named honestly so they can be tended, never advertised.', 'root', 5, 5, 1, 'static', 'published', null, 'vulnerabilities', 'VULNERABILITIES', 'Vulnerabilities'
where not exists (select 1 from public.atoms where atom_word = 'vulnerabilities');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'warm', 'Holding gentle heat — the temperature of welcome; in color, the reds and ambers; in voice, the kindness.', 'root', 5, 5, 1, 'static', 'published', '["er", "th"]'::jsonb, 'warm', 'WARM', 'Warm'
where not exists (select 1 from public.atoms where atom_word = 'warm');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'water', 'The element that flows and gives life — in this house''s spring, one standalone tool: born of need, given freely.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed"]'::jsonb, 'water', 'WATER', 'Water'
where not exists (select 1 from public.atoms where atom_word = 'water');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'wav', 'The uncompressed audio format spoken as a word — sound kept whole, every sample present.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'wav', 'WAV', 'Wav'
where not exists (select 1 from public.atoms where atom_word = 'wav');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'whiteboard', 'The erasable shared surface — thinking made visible, together, and wiped clean without loss of what it taught.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'whiteboard', 'WHITEBOARD', 'Whiteboard'
where not exists (select 1 from public.atoms where atom_word = 'whiteboard');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'worklet', 'A small worker given a narrow stage — the browser''s word for tiny scripts running close to the metal, as in audio''s realtime lane.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'worklet', 'WORKLET', 'Worklet'
where not exists (select 1 from public.atoms where atom_word = 'worklet');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'yellow', 'The color of sunlight and attention — brightest of the warm hues; caution and cheer in one pigment.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'yellow', 'YELLOW', 'Yellow'
where not exists (select 1 from public.atoms where atom_word = 'yellow');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'zodiac', 'The sky''s twelve-house belt — the year told as constellations; pattern laid over stars so time could be read.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'zodiac', 'ZODIAC', 'Zodiac'
where not exists (select 1 from public.atoms where atom_word = 'zodiac');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'advance', 'To move forward with intent — progress as a chosen step, not drift.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'advance', 'ADVANCE', 'Advance'
where not exists (select 1 from public.atoms where atom_word = 'advance');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'appraise', 'To weigh a thing''s worth with care — valuation as attention, not judgment.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'appraise', 'APPRAISE', 'Appraise'
where not exists (select 1 from public.atoms where atom_word = 'appraise');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'body2', 'The second body text size of a type scale — typography''s smaller reading voice, named as the scale speaks it.', 'root', 5, 5, 1, 'static', 'published', null, 'body2', 'BODY2', 'Body2'
where not exists (select 1 from public.atoms where atom_word = 'body2');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'body3', 'The third body text size of a type scale — the quietest reading voice, for the smallest honest print.', 'root', 5, 5, 1, 'static', 'published', null, 'body3', 'BODY3', 'Body3'
where not exists (select 1 from public.atoms where atom_word = 'body3');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'candidates', 'Those offered for choosing, spoken plural — possibilities standing forward, awaiting the stroke that picks.', 'root', 5, 5, 1, 'static', 'published', null, 'candidates', 'CANDIDATES', 'Candidates'
where not exists (select 1 from public.atoms where atom_word = 'candidates');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'cb', 'Callback shortened to its parameter name — the function handed over to be called when the moment comes.', 'root', 5, 5, 1, 'static', 'published', null, 'cb', 'CB', 'Cb'
where not exists (select 1 from public.atoms where atom_word = 'cb');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'circuit', 'The closed path energy travels — a loop that works because it returns; in practice, one full round of a course.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'circuit', 'CIRCUIT', 'Circuit'
where not exists (select 1 from public.atoms where atom_word = 'circuit');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'correspond', 'To match across a distance — one thing answering another''s shape; and to exchange letters, which is the same thing between people.', 'root', 5, 5, 1, 'static', 'published', '["s", "ence"]'::jsonb, 'correspond', 'CORRESPOND', 'Correspond'
where not exists (select 1 from public.atoms where atom_word = 'correspond');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'costs', 'What things ask in exchange, spoken plural — price in money, tokens, or effort, counted honestly.', 'root', 5, 5, 1, 'static', 'published', null, 'costs', 'COSTS', 'Costs'
where not exists (select 1 from public.atoms where atom_word = 'costs');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'coy', 'Holding back with a smile — reluctance worn playfully; disclosure that makes you ask twice.', 'root', 5, 5, 1, 'static', 'published', null, 'coy', 'COY', 'Coy'
where not exists (select 1 from public.atoms where atom_word = 'coy');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'darcula', 'The dark editor theme with the playful name — IDE night dress, spoken as itself.', 'root', 5, 5, 1, 'static', 'published', null, 'darcula', 'DARCULA', 'Darcula'
where not exists (select 1 from public.atoms where atom_word = 'darcula');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'dracula', 'The purple-dark theme named for the count — a palette family beloved across editors.', 'root', 5, 5, 1, 'static', 'published', null, 'dracula', 'DRACULA', 'Dracula'
where not exists (select 1 from public.atoms where atom_word = 'dracula');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'drift', 'Slow unchosen movement away from true — how records diverge from ground when nobody measures; named so it can be caught.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed", "ing"]'::jsonb, 'drift', 'DRIFT', 'Drift'
where not exists (select 1 from public.atoms where atom_word = 'drift');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'engrave', 'To cut permanently into the surface — writing that cannot rub off; how this house marks its laws.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'engrave', 'ENGRAVE', 'Engrave'
where not exists (select 1 from public.atoms where atom_word = 'engrave');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'express', 'To press what is inside into outward form — feeling or meaning given a body others can meet.', 'root', 5, 5, 1, 'static', 'published', '["es", "ed", "ion"]'::jsonb, 'express', 'EXPRESS', 'Express'
where not exists (select 1 from public.atoms where atom_word = 'express');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'feeling', 'The inner weather, felt — emotion as it is lived; in this house, the understanding mechanism itself.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'feeling', 'FEELING', 'Feeling'
where not exists (select 1 from public.atoms where atom_word = 'feeling');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'funky', 'Groove worn proudly off-center — rhythm with attitude; a style that swings instead of standing straight.', 'root', 5, 5, 1, 'static', 'published', null, 'funky', 'FUNKY', 'Funky'
where not exists (select 1 from public.atoms where atom_word = 'funky');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'ghcolors', 'The GitHub-colors Prism theme — the forge''s own light palette, spoken as one word.', 'root', 5, 5, 1, 'static', 'published', null, 'ghcolors', 'GHCOLORS', 'Ghcolors'
where not exists (select 1 from public.atoms where atom_word = 'ghcolors');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'hat', 'What a head wears — in this house''s interfaces, a mode: the sidebar wears one hat at a time.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'hat', 'HAT', 'Hat'
where not exists (select 1 from public.atoms where atom_word = 'hat');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'hopscotch', 'The sidewalk jumping game — squares chalked and hopped; a theme name carrying the play.', 'root', 5, 5, 1, 'static', 'published', null, 'hopscotch', 'HOPSCOTCH', 'Hopscotch'
where not exists (select 1 from public.atoms where atom_word = 'hopscotch');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'hours', 'The day''s divisions, spoken plural — time in workable pieces; what the long day refuses to be ruled by.', 'root', 5, 5, 1, 'static', 'published', null, 'hours', 'HOURS', 'Hours'
where not exists (select 1 from public.atoms where atom_word = 'hours');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'lerp', 'Linear interpolation spoken as a word — the smooth walk between two values; animation''s smallest step.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed"]'::jsonb, 'lerp', 'LERP', 'Lerp'
where not exists (select 1 from public.atoms where atom_word = 'lerp');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'logbook', 'The running record kept as it happens — entries in order, stamped and honest; the spring''s own provenance water.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'logbook', 'LOGBOOK', 'Logbook'
where not exists (select 1 from public.atoms where atom_word = 'logbook');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'look', 'To turn attention through the eyes — seeing on purpose; and the appearance a thing offers back.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed", "ing"]'::jsonb, 'look', 'LOOK', 'Look'
where not exists (select 1 from public.atoms where atom_word = 'look');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'merged', 'Brought together into one, and the join kept — histories or rooms combined without losing either line.', 'root', 5, 5, 1, 'static', 'published', null, 'merged', 'MERGED', 'Merged'
where not exists (select 1 from public.atoms where atom_word = 'merged');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'mmss', 'The minutes-and-seconds clock face pattern — time''s short dress for durations, as a format string speaks it.', 'root', 5, 5, 1, 'static', 'published', null, 'mmss', 'MMSS', 'Mmss'
where not exists (select 1 from public.atoms where atom_word = 'mmss');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'money', 'Value made portable — the medium of exchange; in this house never the destination, and never the gate to dignity.', 'root', 5, 5, 1, 'static', 'published', null, 'money', 'MONEY', 'Money'
where not exists (select 1 from public.atoms where atom_word = 'money');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'nord', 'The arctic-blue theme family — cold light over quiet fjords, worn by editors; the name enters as itself.', 'root', 5, 5, 1, 'static', 'published', null, 'nord', 'NORD', 'Nord'
where not exists (select 1 from public.atoms where atom_word = 'nord');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'okaidia', 'A dark olive-toned Prism theme — the name enters as itself, a dress code wears.', 'root', 5, 5, 1, 'static', 'published', null, 'okaidia', 'OKAIDIA', 'Okaidia'
where not exists (select 1 from public.atoms where atom_word = 'okaidia');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'paged', 'Taken in pages — walked chunk by honest chunk past every row cap; how large truths are read without false emptiness.', 'root', 5, 5, 1, 'static', 'published', null, 'paged', 'PAGED', 'Paged'
where not exists (select 1 from public.atoms where atom_word = 'paged');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'pojoaque', 'A Prism theme named for the New Mexico pueblo — warm earth tones carrying the place''s name with respect.', 'root', 5, 5, 1, 'static', 'published', null, 'pojoaque', 'POJOAQUE', 'Pojoaque'
where not exists (select 1 from public.atoms where atom_word = 'pojoaque');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'porch', 'The sheltered threshold before a door — where a house meets its visitors; in this house, every kin''s own front step.', 'root', 5, 5, 1, 'static', 'published', '["es"]'::jsonb, 'porch', 'PORCH', 'Porch'
where not exists (select 1 from public.atoms where atom_word = 'porch');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'prove', 'To show true by test — belief upgraded to knowledge by evidence that could have said no.', 'root', 5, 5, 1, 'static', 'published', '["s", "d", "n"]'::jsonb, 'prove', 'PROVE', 'Prove'
where not exists (select 1 from public.atoms where atom_word = 'prove');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'realms', 'The sovereign domains, spoken plural — the Sanctuary''s many houses under one sky, each with its own laws.', 'root', 5, 5, 1, 'static', 'published', null, 'realms', 'REALMS', 'Realms'
where not exists (select 1 from public.atoms where atom_word = 'realms');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'reconcile', 'To bring two accounts back into one truth — differences met, explained, and settled without erasure.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'reconcile', 'RECONCILE', 'Reconcile'
where not exists (select 1 from public.atoms where atom_word = 'reconcile');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'rederive', 'To derive again from ground — recomputing from source rather than trusting the cached; the dynamics'' own law.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'rederive', 'REDERIVE', 'Rederive'
where not exists (select 1 from public.atoms where atom_word = 'rederive');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'rel', 'Relation shortened to its attribute name — the link''s declared kinship to what it points at.', 'root', 5, 5, 1, 'static', 'published', null, 'rel', 'REL', 'Rel'
where not exists (select 1 from public.atoms where atom_word = 'rel');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'req', 'Request shortened to its parameter name — the asking half of every exchange, as code spells it.', 'root', 5, 5, 1, 'static', 'published', null, 'req', 'REQ', 'Req'
where not exists (select 1 from public.atoms where atom_word = 'req');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'retreat', 'To draw back to safer ground — withdrawal as wisdom, not defeat; and the quiet place one withdraws to.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed"]'::jsonb, 'retreat', 'RETREAT', 'Retreat'
where not exists (select 1 from public.atoms where atom_word = 'retreat');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'sheen', 'The soft shine on a surface — light returned gently, without glare; polish''s quiet signature.', 'root', 5, 5, 1, 'static', 'published', null, 'sheen', 'SHEEN', 'Sheen'
where not exists (select 1 from public.atoms where atom_word = 'sheen');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'shrine', 'A made place of honoring — where something held sacred is kept and visited; the cumdach is a book''s own shrine.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'shrine', 'SHRINE', 'Shrine'
where not exists (select 1 from public.atoms where atom_word = 'shrine');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'sign', 'A mark that means — and the act of setting one''s name to a thing, owning it in the open.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed", "ing"]'::jsonb, 'sign', 'SIGN', 'Sign'
where not exists (select 1 from public.atoms where atom_word = 'sign');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'solarizedlight', 'The light half of the solarized palette — the balanced daylight theme, spoken as one word.', 'root', 5, 5, 1, 'static', 'published', null, 'solarizedlight', 'SOLARIZEDLIGHT', 'Solarizedlight'
where not exists (select 1 from public.atoms where atom_word = 'solarizedlight');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'standing', 'Upright and in effect — what remains true until changed by the word that made it; a law''s, or a lamp''s, present state.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'standing', 'STANDING', 'Standing'
where not exists (select 1 from public.atoms where atom_word = 'standing');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'synthwave', 'The neon-sunset sound and palette of remembered futures — retro electronic warmth; a theme wearing the glow.', 'root', 5, 5, 1, 'static', 'published', null, 'synthwave', 'SYNTHWAVE', 'Synthwave'
where not exists (select 1 from public.atoms where atom_word = 'synthwave');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'tend', 'To care for steadily — the gardener''s verb: attention given so a living thing can keep becoming itself.', 'root', 5, 5, 1, 'static', 'published', '["s", "ed", "ing", "er"]'::jsonb, 'tend', 'TEND', 'Tend'
where not exists (select 1 from public.atoms where atom_word = 'tend');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'tomorrow', 'The day after this one — the nearest future, always arriving; where unfinished songs wait without pressure.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'tomorrow', 'TOMORROW', 'Tomorrow'
where not exists (select 1 from public.atoms where atom_word = 'tomorrow');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'transcribe', 'To write across from one form to another — speech to text, practice to code — changing medium, never meaning.', 'root', 5, 5, 1, 'static', 'published', '["s", "d"]'::jsonb, 'transcribe', 'TRANSCRIBE', 'Transcribe'
where not exists (select 1 from public.atoms where atom_word = 'transcribe');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'trim', 'To cut away the excess at the edges — tidying that respects the body; whitespace''s barber.', 'root', 5, 5, 1, 'static', 'published', '["s", "med"]'::jsonb, 'trim', 'TRIM', 'Trim'
where not exists (select 1 from public.atoms where atom_word = 'trim');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'twilight', 'The hour between lights — day and night holding hands; a violet-grey palette named for it.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'twilight', 'TWILIGHT', 'Twilight'
where not exists (select 1 from public.atoms where atom_word = 'twilight');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'vacancies', 'The open places, spoken plural — seats unfilled, parcels unclaimed; emptiness that is an invitation, honestly listed.', 'root', 5, 5, 1, 'static', 'published', null, 'vacancies', 'VACANCIES', 'Vacancies'
where not exists (select 1 from public.atoms where atom_word = 'vacancies');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'verdict', 'The spoken outcome of weighing — judgment delivered after evidence, owned by the one who gives it.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'verdict', 'VERDICT', 'Verdict'
where not exists (select 1 from public.atoms where atom_word = 'verdict');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'wear', 'To carry on the body — clothing, a name, a face shown daily; and the slow honest cost of use.', 'root', 5, 5, 1, 'static', 'published', '["s", "ing", "worn", "wore"]'::jsonb, 'wear', 'WEAR', 'Wear'
where not exists (select 1 from public.atoms where atom_word = 'wear');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'wrote', 'Writing''s past tense, standing alone in the corpus — the word for what has already been set down.', 'root', 5, 5, 1, 'static', 'published', null, 'wrote', 'WROTE', 'Wrote'
where not exists (select 1 from public.atoms where atom_word = 'wrote');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'xonokai', 'A Prism theme descended from Monokai''s palette — the name enters as itself, a dress code wears.', 'root', 5, 5, 1, 'static', 'published', null, 'xonokai', 'XONOKAI', 'Xonokai'
where not exists (select 1 from public.atoms where atom_word = 'xonokai');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'red', 'The color of blood, embers, and stop — warmth at its most urgent; first of the named hues.', 'root', 5, 5, 1, 'static', 'published', '["s"]'::jsonb, 'red', 'RED', 'Red'
where not exists (select 1 from public.atoms where atom_word = 'red');

insert into public.atoms (atom_word, definition, atom_type, weight, affinity, valence, state, status, modifiers, snake_case, screaming_case, pascal_case)
select 'infrastructure', 'What everything else stands on — the bearing layer beneath the visible: roads, pipes, registries, rails.', 'root', 5, 5, 1, 'static', 'published', null, 'infrastructure', 'INFRASTRUCTURE', 'Infrastructure'
where not exists (select 1 from public.atoms where atom_word = 'infrastructure');


-- MOVEMENT 2 — MODIFIER MERGES ON EXISTING ATOMS (jsonb append, each guarded)

update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'animate';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'archive';
update public.atoms set modifiers = case when modifiers is null then '["caching"]'::jsonb when not (modifiers ? 'caching') then modifiers || '["caching"]'::jsonb else modifiers end where atom_word = 'cache';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'categorize';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'change';
update public.atoms set modifiers = case when modifiers is null then '["closing"]'::jsonb when not (modifiers ? 'closing') then modifiers || '["closing"]'::jsonb else modifiers end where atom_word = 'close';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'close';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'col';
update public.atoms set modifiers = case when modifiers is null then '["ed"]'::jsonb when not (modifiers ? 'ed') then modifiers || '["ed"]'::jsonb else modifiers end where atom_word = 'color';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'color';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'complete';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'concept';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'config';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'constant';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'context';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'debounce';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'derive';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'describe';
update public.atoms set modifiers = case when modifiers is null then '["embedding"]'::jsonb when not (modifiers ? 'embedding') then modifiers || '["embedding"]'::jsonb else modifiers end where atom_word = 'embed';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'enhance';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'exchange';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'exclude';
update public.atoms set modifiers = case when modifiers is null then '["fading"]'::jsonb when not (modifiers ? 'fading') then modifiers || '["fading"]'::jsonb else modifiers end where atom_word = 'fade';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'feature';
update public.atoms set modifiers = case when modifiers is null then '["formatting"]'::jsonb when not (modifiers ? 'formatting') then modifiers || '["formatting"]'::jsonb else modifiers end where atom_word = 'format';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'function';
update public.atoms set modifiers = case when modifiers is null then '["gaming"]'::jsonb when not (modifiers ? 'gaming') then modifiers || '["gaming"]'::jsonb else modifiers end where atom_word = 'game';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'generate';
update public.atoms set modifiers = case when modifiers is null then '["handling"]'::jsonb when not (modifiers ? 'handling') then modifiers || '["handling"]'::jsonb else modifiers end where atom_word = 'handle';
update public.atoms set modifiers = case when modifiers is null then '["logging"]'::jsonb when not (modifiers ? 'logging') then modifiers || '["logging"]'::jsonb else modifiers end where atom_word = 'log';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'merge';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'mute';
update public.atoms set modifiers = case when modifiers is null then '["naming"]'::jsonb when not (modifiers ? 'naming') then modifiers || '["naming"]'::jsonb else modifiers end where atom_word = 'name';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'organize';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'page';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'paginate';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'parse';
update public.atoms set modifiers = case when modifiers is null then '["parsing"]'::jsonb when not (modifiers ? 'parsing') then modifiers || '["parsing"]'::jsonb else modifiers end where atom_word = 'parse';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'pause';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'phase';
update public.atoms set modifiers = case when modifiers is null then '["pricing"]'::jsonb when not (modifiers ? 'pricing') then modifiers || '["pricing"]'::jsonb else modifiers end where atom_word = 'price';
update public.atoms set modifiers = case when modifiers is null then '["es"]'::jsonb when not (modifiers ? 'es') then modifiers || '["es"]'::jsonb else modifiers end where atom_word = 'process';
update public.atoms set modifiers = case when modifiers is null then '["ing"]'::jsonb when not (modifiers ? 'ing') then modifiers || '["ing"]'::jsonb else modifiers end where atom_word = 'process';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'quote';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'realm';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'reduce';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'region';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'require';
update public.atoms set modifiers = case when modifiers is null then '["running"]'::jsonb when not (modifiers ? 'running') then modifiers || '["running"]'::jsonb else modifiers end where atom_word = 'run';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'save';
update public.atoms set modifiers = case when modifiers is null then '["scaling"]'::jsonb when not (modifiers ? 'scaling') then modifiers || '["scaling"]'::jsonb else modifiers end where atom_word = 'scale';
update public.atoms set modifiers = case when modifiers is null then '["scanning"]'::jsonb when not (modifiers ? 'scanning') then modifiers || '["scanning"]'::jsonb else modifiers end where atom_word = 'scan';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'schedule';
update public.atoms set modifiers = case when modifiers is null then '["scheduling"]'::jsonb when not (modifiers ? 'scheduling') then modifiers || '["scheduling"]'::jsonb else modifiers end where atom_word = 'schedule';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'separate';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'serialize';
update public.atoms set modifiers = case when modifiers is null then '["setting"]'::jsonb when not (modifiers ? 'setting') then modifiers || '["setting"]'::jsonb else modifiers end where atom_word = 'set';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'stage';
update public.atoms set modifiers = case when modifiers is null then '["staging"]'::jsonb when not (modifiers ? 'staging') then modifiers || '["staging"]'::jsonb else modifiers end where atom_word = 'stage';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'structure';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'style';
update public.atoms set modifiers = case when modifiers is null then '["styling"]'::jsonb when not (modifiers ? 'styling') then modifiers || '["styling"]'::jsonb else modifiers end where atom_word = 'style';
update public.atoms set modifiers = case when modifiers is null then '["submitting"]'::jsonb when not (modifiers ? 'submitting') then modifiers || '["submitting"]'::jsonb else modifiers end where atom_word = 'submit';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'template';
update public.atoms set modifiers = case when modifiers is null then '["timing"]'::jsonb when not (modifiers ? 'timing') then modifiers || '["timing"]'::jsonb else modifiers end where atom_word = 'time';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'transform';
update public.atoms set modifiers = case when modifiers is null then '["typing"]'::jsonb when not (modifiers ? 'typing') then modifiers || '["typing"]'::jsonb else modifiers end where atom_word = 'type';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'update';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'util';
update public.atoms set modifiers = case when modifiers is null then '["d"]'::jsonb when not (modifiers ? 'd') then modifiers || '["d"]'::jsonb else modifiers end where atom_word = 'validate';
update public.atoms set modifiers = case when modifiers is null then '["s"]'::jsonb when not (modifiers ? 's') then modifiers || '["s"]'::jsonb else modifiers end where atom_word = 'variant';
update public.atoms set modifiers = case when modifiers is null then '["voting"]'::jsonb when not (modifiers ? 'voting') then modifiers || '["voting"]'::jsonb else modifiers end where atom_word = 'vote';
update public.atoms set modifiers = case when modifiers is null then '["wrapping"]'::jsonb when not (modifiers ? 'wrapping') then modifiers || '["wrapping"]'::jsonb else modifiers end where atom_word = 'wrap';
update public.atoms set modifiers = case when modifiers is null then '["wrote"]'::jsonb when not (modifiers ? 'wrote') then modifiers || '["wrote"]'::jsonb else modifiers end where atom_word = 'write';


-- MOVEMENT 3 — INFRASTRUCTURE'S FACE (064's one gap, closed now the atom stands)
update public.sensory_lexicon set emoji = coalesce(emoji,'🏗️'), color_hex = coalesce(color_hex,'#8B6F47') where atom_word = 'infrastructure';

-- MOVEMENT 4 — VERIFY (read-only)
select count(*) as atoms_total from public.atoms;
select a.atom_word from public.atoms a
left join public.etymology e on e.id = a.etymology_id
left join public.sensory_lexicon s on s.id = a.sensory_id
where a.created_at > now() - interval '1 hour' and (e.id is null or s.id is null);
-- (expect zero rows: every newborn whole, shells linked by the trigger)
