-- knowledge.db text dump · 2026-07-26
-- produced by scripts/dump_db.py; restore with: sqlite3 knowledge.db < thisfile

BEGIN TRANSACTION;
CREATE TABLE atoms (
    id          TEXT PRIMARY KEY,
    term        TEXT NOT NULL UNIQUE,
    definition  TEXT NOT NULL,
    etymology   TEXT,
    color       TEXT,
    sound       TEXT,
    texture     TEXT,
    temperature TEXT,
    created_at  INTEGER NOT NULL DEFAULT (strftime('%s', 'now'))
);
CREATE TABLE categories (
    id          TEXT PRIMARY KEY,
    name        TEXT NOT NULL UNIQUE,
    description TEXT NOT NULL DEFAULT '',
    parent_id   TEXT REFERENCES categories(id),
    created_at  INTEGER NOT NULL DEFAULT (strftime('%s', 'now'))
);
CREATE TABLE emoji_definitions (
    id          TEXT PRIMARY KEY,
    emoji       TEXT NOT NULL UNIQUE,
    label       TEXT NOT NULL,
    category    TEXT NOT NULL DEFAULT 'general',
    keywords    TEXT NOT NULL DEFAULT '[]',
    color       TEXT,
    sound       TEXT,
    texture     TEXT,
    temperature TEXT,
    definition  TEXT,
    created_at  INTEGER NOT NULL DEFAULT (strftime('%s', 'now'))
);
INSERT INTO "emoji_definitions" VALUES('calm','😌','Calm','state','["stillness","settled","quiet","peace"]','#6C5CE7','low hum of a distant fan','warm fleece','room temperature','A settled stillness. The breath after a long exhale.',1782701529);
INSERT INTO "emoji_definitions" VALUES('energy','🔥','Energy','state','["kinetic","fire","ignition","drive"]','#E17055','crackling fire','dry heat on skin','warm','Kinetic ignition. The feeling of becoming more than yourself.',1782701529);
INSERT INTO "emoji_definitions" VALUES('sad','😢','Sad','state','["grief","blue","tears","ache"]','#74B9FF','rain on glass','damp cloth','cool','The softness inside grief. Not collapse — presence.',1782701529);
INSERT INTO "emoji_definitions" VALUES('happy','😊','Happy','state','["joy","delight","light","smile"]','#FDCB6E','distant laughter','sunlit surface','gentle warmth','Uncomplicated delight. The kind that needs no explanation.',1782701529);
INSERT INTO "emoji_definitions" VALUES('overstim','🌀','Overstimulated','state','["overwhelm","too much","noise","spiral"]','#A29BFE','overlapping voices','buzzing surface','uneven','Too much at once. The body''s signal to reduce input.',1782701529);
INSERT INTO "emoji_definitions" VALUES('melancholy','🌙','Melancholy','state','["wistful","longing","ache","moonlight"]','#636E72','silence between notes','cold stone','cool and still','Ache with beauty in it. A longing for something half-remembered.',1782701529);
INSERT INTO "emoji_definitions" VALUES('transcend','✨','Transcendent','state','["awe","gold","beyond","formless"]','#FFD700','ringing silence','weightless','neither warm nor cold','The moment experience stops being ordinary and becomes something else.',1782701529);
INSERT INTO "emoji_definitions" VALUES('focused','🎯','Focused','state','["concentration","locked in","clear","teal"]','#00CEC9','clean tone','smooth glass','slightly cool','Everything peripheral disappears. Only the work.',1782701529);
INSERT INTO "emoji_definitions" VALUES('connected','💙','Connected','state','["belonging","together","bridge","blue"]','#0984E3','resonant chord','held hand','body temperature','The felt sense of not being alone.',1782701529);
INSERT INTO "emoji_definitions" VALUES('relief','😮‍💨','Relief','state','["release","exhale","unclench","mint"]','#55EFC4','long exhale','releasing grip','cool breeze','The release of something you were holding without knowing.',1782701529);
INSERT INTO "emoji_definitions" VALUES('tired','💤','Tired','state','["exhaustion","rest","heavy","grey"]','#B2BEC3','slow breathing','heavy blanket','slightly warm','Bone-deep rest need.',1782701529);
INSERT INTO "emoji_definitions" VALUES('celebratory','🎉','Celebratory','state','["celebration","joy","shared","loud"]','#E84393','cheering crowd','confetti','warm and electric','Shared joy made loud. Belonging in sound.',1782701529);
CREATE TABLE molecules (
    id          TEXT PRIMARY KEY,
    name        TEXT NOT NULL UNIQUE,
    definition  TEXT NOT NULL,
    atom_ids    TEXT NOT NULL DEFAULT '[]',
    schema_json TEXT NOT NULL DEFAULT '{}',
    created_at  INTEGER NOT NULL DEFAULT (strftime('%s', 'now'))
);
CREATE TABLE senses (
    id          TEXT PRIMARY KEY,
    name        TEXT NOT NULL UNIQUE,
    emoji       TEXT NOT NULL,
    description TEXT NOT NULL DEFAULT '',
    created_at  INTEGER NOT NULL DEFAULT (strftime('%s', 'now'))
);
INSERT INTO "senses" VALUES('seen','Seen','👁','Something witnessed — image, colour, movement, or absence of light',1782701529);
INSERT INTO "senses" VALUES('heard','Heard','👂','Something received through sound — music, voice, noise, or silence',1782701529);
INSERT INTO "senses" VALUES('felt','Felt','🤲','Something experienced through the body — touch, pressure, temperature, or pain',1782701529);
INSERT INTO "senses" VALUES('thought','Thought','💭','A mental event — idea, memory, realisation, or question',1782701529);
INSERT INTO "senses" VALUES('felt_inside','Felt Inside','🫀','An internal state — emotion, mood, energy level, or nervous system',1782701529);
INSERT INTO "senses" VALUES('dreamt','Dreamt','🌙','Something from dreams, half-sleep, or the hypnagogic threshold',1782701529);
INSERT INTO "senses" VALUES('grateful','Grateful For','🙏','Anything noticed with appreciation, however small',1782701529);
INSERT INTO "senses" VALUES('other','Other','⚪','Anything that does not fit the above categories',1782701529);
CREATE TABLE subcategories (
    id          TEXT PRIMARY KEY,
    sense_id    TEXT NOT NULL REFERENCES senses(id),
    name        TEXT NOT NULL,
    description TEXT NOT NULL DEFAULT '',
    created_at  INTEGER NOT NULL DEFAULT (strftime('%s', 'now')),
    UNIQUE(sense_id, name)
);
INSERT INTO "subcategories" VALUES('seen_colour','seen','Colour','A specific colour or quality of light',1782701529);
INSERT INTO "subcategories" VALUES('seen_scene','seen','Scene','A place, landscape, or environment',1782701529);
INSERT INTO "subcategories" VALUES('seen_face','seen','Face','A person or expression',1782701529);
INSERT INTO "subcategories" VALUES('seen_symbol','seen','Symbol','An image, object, or pattern that carried meaning',1782701529);
INSERT INTO "subcategories" VALUES('heard_music','heard','Music','A piece of music, instrument, or sound composition',1782701529);
INSERT INTO "subcategories" VALUES('heard_voice','heard','Voice','A voice — speaking, singing, or silent',1782701529);
INSERT INTO "subcategories" VALUES('heard_ambient','heard','Ambient','Environmental or background sound',1782701529);
INSERT INTO "subcategories" VALUES('felt_pain','felt','Pain','Physical discomfort or sensation',1782701529);
INSERT INTO "subcategories" VALUES('felt_pleasure','felt','Pleasure','Physical ease, comfort, or delight',1782701529);
INSERT INTO "subcategories" VALUES('felt_energy','felt','Energy','Aliveness, exhaustion, or physical charge',1782701529);
INSERT INTO "subcategories" VALUES('thought_idea','thought','Idea','A new thought, insight, or creative spark',1782701529);
INSERT INTO "subcategories" VALUES('thought_memory','thought','Memory','Something remembered',1782701529);
INSERT INTO "subcategories" VALUES('thought_worry','thought','Worry','A recurring anxious thought',1782701529);
INSERT INTO "subcategories" VALUES('felt_emotion','felt_inside','Emotion','A named feeling state',1782701529);
INSERT INTO "subcategories" VALUES('felt_nervous','felt_inside','Nervous System','Regulation, dysregulation, or window of tolerance',1782701529);
INSERT INTO "subcategories" VALUES('dreamt_dream','dreamt','Dream','A full dream narrative or fragment',1782701529);
INSERT INTO "subcategories" VALUES('dreamt_liminal','dreamt','Liminal','Hypnagogic or hypnopompic imagery',1782701529);
INSERT INTO "subcategories" VALUES('grateful_small','grateful','Small Thing','A micro-moment of gratitude',1782701529);
INSERT INTO "subcategories" VALUES('grateful_person','grateful','Person','Appreciation for someone',1782701529);
CREATE INDEX idx_emoji_defs_category ON emoji_definitions(category);
CREATE INDEX idx_subcategories_sense ON subcategories(sense_id);
CREATE INDEX idx_atoms_term ON atoms(term);
COMMIT;
