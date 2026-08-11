-- ============================================================================
-- 082 — THE BEACON ETYMOLOGIES: real roots for the coast's own words
--
-- KP's ⚛ word, 2026-08-11: fill the etymology rows for the atoms the beacon
-- molecules are built from — "with the caveat of doing all atoms aligned with
-- our beacons list", "exception for the identity ones", and "use the real
-- etymology".
--
-- THE STATE THAT PROMPTED IT, read live before writing: 2,321 etymology rows,
-- one per atom, no orphans and NO PARTIALS — 35 complete (1.5%), 2,286 empty
-- (98.5%), and completion_progress agreeing exactly with the fields. The empty
-- rows are the triggers' work standing open for a later fill, never a defect.
-- This file fills 21 of them.
--
-- THE EXEMPTION, RAISED AND THEN RULED AWAY — kept in the record because the
-- correction is the useful part. This hand first proposed skipping the three
-- identity words (aethelred · quantum · weaver) on the reasoning that a
-- person's chosen name should not be given a dictionary entry. KP's ⚛ answer
-- undid it in one line: "our definitions will surface later" — meaning
-- `historical_meaning` carries the WORD's documented history whatever a person
-- later wears it for, and `sanctuary_meaning` is where the identity reading
-- belongs. So `quantum` and `weaver` are ordinary English words with real
-- roots and are filled here.
--
-- AND `aethelred` IS A WORD, not only a name — Old English æþelræd, and its
-- sense turns out to be exactly to the point (see its row below). His own
-- doubt was the right question and the answer was yes. Its sanctuary_meaning
-- is written for the word, leaving whose name it is to be told later by
-- whoever should tell it.
--
-- Nothing is exempt, then. All 24 beacon atoms are filled.
--
-- ALREADY FILLED, untouched by this file: daedalus · gaia · standard.
--
-- REAL ETYMOLOGY, at his ⚛ word — every root below is the documented one, and
-- where scholarship is genuinely unsettled THIS FILE SAYS SO rather than
-- inventing a clean chain:
--   · khoros — the Greek is certain; the Indo-European root beneath it is NOT
--     agreed (a dancing-ground vs an enclosure), and the row says that.
--   · skapa — Old Norse, cognate with English `shape`; secure.
--   · awen — Welsh, from Proto-Celtic *awelā (breeze); the -en suffix is the
--     agreed reading but the semantic path breath→inspiration is a shared
--     Indo-European pattern rather than a documented Welsh derivation, and the
--     row says that too.
--   · ziggy — a modern coinage, and the row states it as one. Not every word
--     has an ancient root, and pretending otherwise would be the opposite of
--     what "use the real etymology" asks for.
--
-- The house's own voice is kept: historical_meaning carries the documented
-- root and its ancestry; sanctuary_meaning carries what the word does HERE.
-- Both patterned on the standing rows (gaia · standard · taxonomy), read live.
--
-- completion_progress is set to 100 explicitly, matching the 35 already
-- filled — the flag and the fields agree, which is the property worth keeping.
--
-- Idempotent: every statement is an UPDATE by atom_word, so a re-run rewrites
-- the same values. No row is created; the triggers already made them all.
--
-- ⚠ THE PLURAL TRAP, MET AND MENDED — caught by KP's ⚛ own eye reading the
-- verify output, after this file's first run left three rows blank. An UPDATE
-- targets the ATOM, and the atoms are SINGULAR: `bubble` ["s"] · `echo` ["es"]
-- · `meeting` ["s"]. The molecules read `resonance, bubbles` / `echoes` /
-- `meetings` because covering_atom resolves the plural to the singular atom —
-- the tender's teaching (069) doing its work. The first draft wrote
-- `where atom_word = 'bubbles'` and friends, which matched NOTHING and said so
-- to nobody: an UPDATE affecting zero rows is silent. Three etymologies simply
-- did not land, and only the beacon-join verify revealed it.
--
-- THE LESSON, worth more than the mend: an UPDATE that matches nothing is not
-- an error, it is an absence — and absences are only found by a query that
-- EXPECTS something. This is why verify (2) joins the beacons to their atoms
-- rather than merely listing what was written. Never verify a write by reading
-- back only the rows you wrote.
--
-- (Six words in this file are the atom's own singular where the molecule reads
-- plural: asset · standard · paper — correct in the first draft — and bubble ·
-- echo · meeting — wrong in it. The inconsistency was the tell.)
--
-- Drafted 2026-08-11 for KP's ⚛ hand.
-- ============================================================================


-- ── THE HOUSE'S OWN NAME ────────────────────────────────────────────────────

update public.etymology set
  root_word = 'resonantia',
  root_language = 'Latin',
  historical_meaning = 'Latin resonantia (echo), from resonare (to sound again, resound): re- (again) + sonare (to sound), from sonus (sound). In physics since the 17th century: the amplification that occurs when a system is driven at its own natural frequency — a small repeated push producing a large response, because the push matches what the body already wants to do.',
  sanctuary_meaning = 'The house''s own first word, and the first atom of nearly every molecule in it. The physics is the point: resonance is not force but MATCH — the right frequency, gently and repeatedly applied, moves what force cannot. Every realm named Resonance-something is a claim that the thing works with a person''s own nature rather than against it.',
  completion_progress = 100
where atom_word = 'resonance';


-- ── THE REALMS ──────────────────────────────────────────────────────────────

update public.etymology set
  root_word = 'awen',
  root_language = 'Welsh',
  historical_meaning = 'Welsh awen (poetic inspiration, the muse), attested from the 9th century in Nennius. From Proto-Celtic *awelā (breeze, wind) with the -en suffix; cognate with Old Irish aí (poetic art). NOTE, honestly: the breeze→inspiration path is a well-attested Indo-European pattern (compare Latin spiritus, Greek pneuma, Hebrew ruach — all breath standing for spirit) rather than a separately documented Welsh derivation. The Neo-Druidic revival from the 18th century onward gave it the reading the Sanctuary uses: inspiration as a FLOWING thing.',
  sanctuary_meaning = 'The wellspring of standalone creative tools, named by KP 2026-07-28. The name is the specification: awen is inspiration that FLOWS rather than inspiration possessed, so the Law of the Spring follows from the word — standalone always, combined freely, given away whole. A tool that must be held to work is not awen.',
  completion_progress = 100
where atom_word = 'awen';

update public.etymology set
  root_word = 'khoros',
  root_language = 'Greek',
  historical_meaning = 'Greek χορός (khoros): the dance, the dancing-ground, and the band of dancer-singers performing together — one word for the place, the act, and the people. Source of English chorus and choir. NOTE, honestly: the deeper root is NOT settled — one line derives it from a Proto-Indo-European sense of enclosure or marked ground, another from *gher- (to grasp, enclose); the ancient sense of a bounded place where a group performs is secure, the prehistory is not.',
  sanctuary_meaning = 'The music realm, born 2026-08-06. The word carries the whole design: the place, the performance, and the gathered people are ONE thing, so the hall is not a catalogue with sound attached but a room where artists and listeners are in the same space. The chorus was never an audience.',
  completion_progress = 100
where atom_word = 'khoros';

update public.etymology set
  root_word = 'skapa',
  root_language = 'Old Norse',
  historical_meaning = 'Old Norse skapa (to shape, form, create, arrange), and in Modern Swedish still skapa (to create). From Proto-Germanic *skapjaną, the same root that gives English shape and -ship (as in friendship: the shape a thing has been given). Secure and undisputed.',
  sanctuary_meaning = 'The board realm — the place where meaning is given a shape you can move with your hands. The Old Norse is exact for what the tool does: not "make from nothing" but SHAPE — parcels placed, layers stacked, connectors tethered, all of it arranging what already exists into a form that can be seen.',
  completion_progress = 100
where atom_word = 'skapa';

update public.etymology set
  root_word = 'ziggy',
  root_language = 'Modern English (coinage)',
  historical_meaning = 'A modern coinage with no ancient root, and this row says so plainly rather than inventing one. In wide use as a nickname since the mid-20th century (a shortening of Sigmund, Zigmunt, and kin), and fixed in the culture by David Bowie''s Ziggy Stardust (1972). The zig- element carries a sense of sharp movement — zigzag, from 18th-century French ziczac.',
  sanctuary_meaning = 'The house''s own front door and dashboard. Named for what it is rather than what it descends from: the quick, familiar, sideways-moving thing that gets you where you are going. Not every word in the Grammar has an ancestor, and the register is honest about which ones do.',
  completion_progress = 100
where atom_word = 'ziggy';

update public.etymology set
  root_word = 'compass',
  root_language = 'Old French',
  historical_meaning = 'Old French compas (circle, measure, pair of dividers), from compasser (to measure out, divide equally), from Vulgar Latin *compassare: com- (together) + passus (a step, pace). Literally "to pace out together". The magnetic navigation sense arrives in English in the 14th century, the drawing-instrument sense earlier; both keep the idea of stepping out a measured circle.',
  sanctuary_meaning = 'The music player — the sovereign, local-first one. The root is apt beyond the navigation reading: a compass paces something OUT, step by measured step, which is what a library is. And a compass points; it does not decide where you go.',
  completion_progress = 100
where atom_word = 'compass';

update public.etymology set
  root_word = 'ekho',
  root_language = 'Greek',
  historical_meaning = 'Greek ἠχώ (ēkhō, a sound, a returned sound), from ἦχος (ēkhos, noise); via Latin echo into Old French and English. The mountain nymph Echo of Ovid''s Metamorphoses, cursed to repeat only the last words spoken to her, is the same word personified — the myth is a story ABOUT the noun, not its source.',
  sanctuary_meaning = 'The journal realm: what you put in comes back to you in your own words, changed only by time. The Echo of the myth could not speak first — but she never lost a word she was given, which is exactly the sovereignty law the realm keeps.',
  completion_progress = 100
where atom_word = 'echo';   -- the ATOM is singular, wearing ["es"]

update public.etymology set
  root_word = 'heorth',
  root_language = 'Old English',
  historical_meaning = 'Old English heorth (hearth, fireplace), from Proto-Germanic *herthō, from a Proto-Indo-European root *ker- (heat, fire). Cognate with German Herd and Dutch haard. For most of the word''s life it named the literal floor of the fire — and, by inevitable extension, the household gathered at it: the fire you keep going is the reason people stay in the room.',
  sanctuary_meaning = 'The regulation realm — breath, timers, the sensory doors. The oldest technology for staying alive in the cold is a fire someone tends, and the realm is built on the same premise: regulation is not a cure applied once but a warmth kept up.',
  completion_progress = 100
where atom_word = 'hearth';

update public.etymology set
  root_word = 'lanterne',
  root_language = 'Old French',
  historical_meaning = 'Old French lanterne, from Latin lanterna (lamp, lantern), borrowed from Greek λαμπτήρ (lamptēr, torch, light-holder), from λάμπειν (lampein, to shine). The Latin form shows the borrowing plainly in its -terna ending. A lantern is specifically a light MADE PORTABLE and shielded — the housing is the invention, not the flame.',
  sanctuary_meaning = 'The light you carry into a dark room, and the realm named for it. The shielding matters as much as the shining: a lantern lets you bring light somewhere without it being blown out or setting anything alight.',
  completion_progress = 100
where atom_word = 'lantern';


-- ── THE HOUSE'S WORKING WORDS ───────────────────────────────────────────────

update public.etymology set
  root_word = 'grammatike',
  root_language = 'Greek',
  historical_meaning = 'Greek γραμματική (grammatikē, the art of letters), from γράμμα (gramma, a letter, something written), from γράφειν (graphein, to write, originally to scratch or carve). Via Latin grammatica and Old French gramaire. Note the same Old French word also gave English GLAMOUR — through the sense of learning as occult power, since literacy was itself a kind of magic.',
  sanctuary_meaning = 'The living lattice — atoms, molecules, organisms, and the bonds between them. The root is exactly right: a grammar is not a list of words but the LAW BY WHICH WORDS COMBINE, which is what the base actually stores. And the glamour branch is a fair warning about what a knowledge system feels like from outside.',
  completion_progress = 100
where atom_word = 'grammar';

update public.etymology set
  root_word = 'bibliotheca',
  root_language = 'Latin',
  historical_meaning = 'Latin librarium (bookcase), from liber (book) — and liber originally meant the INNER BARK OF A TREE, the surface written on before papyrus reached Rome. Via Old French librairie. Most European languages took the Greek βιβλιοθήκη (bibliothēkē, book-repository) instead; English kept the Latin, which is why French librairie means bookshop rather than library.',
  sanctuary_meaning = 'The single source of truth for every code definition in the house. The bark-to-book path is the point: a library is a material that holds writing, and the law here is that a definition lives in exactly one place and is referenced everywhere else.',
  completion_progress = 100
where atom_word = 'library';

update public.etymology set
  root_word = 'brycg',
  root_language = 'Old English',
  historical_meaning = 'Old English brycg (bridge), from Proto-Germanic *brugjō, from a Proto-Indo-European root *bhrū- (log, beam, wooden causeway). Cognate with German Brücke. The oldest sense is not the arch but the LAID BEAM — a tree felled across a gap, which is the first bridge anyone made.',
  sanctuary_meaning = 'The switchboard: the knowledge delivery system where the seven Lines hold every ward in code. The felled-log sense is the honest one — a bridge is a deliberate thing placed across a gap that would otherwise stop you, and someone has to maintain it.',
  completion_progress = 100
where atom_word = 'bridge';

update public.etymology set
  root_word = 'camera',
  root_language = 'Latin',
  historical_meaning = 'Latin camera (vaulted room, chamber), from Greek καμάρα (kamara, anything with an arched cover). Via Old French chambre. The word travelled from the ROOM to the private room, to the private council held in it (chamber music is music for a room, not a hall), and finally — through camera obscura, "dark room" — to the photographic camera.',
  sanctuary_meaning = 'The constellation''s own record: lamps, lanes, and the buses between them. The chamber-music sense is the right one — a chamber is a space small enough that everyone in it can hear each other, which is what the room is for.',
  completion_progress = 100
where atom_word = 'chamber';

update public.etymology set
  root_word = 'lucida',
  root_language = 'Latin',
  historical_meaning = 'Latin lucida, feminine of lucidus (bright, clear, full of light), from lux (light). Its use here is from CAMERA LUCIDA — "light chamber" — the drawing instrument patented by William Hyde Wollaston in 1806: a prism that lets an artist see a scene and their own paper at once, so the hand can trace what the eye sees. Named in deliberate contrast to the older camera obscura.',
  sanctuary_meaning = 'A camera lucida for human–AI collaboration: trace the method onto your own paper. The instrument''s whole virtue is the distinction it draws — it does not make the drawing for you, it makes YOUR hand able to. Nothing is copied; a way of seeing is made available.',
  completion_progress = 100
where atom_word = 'lucida';

update public.etymology set
  root_word = 'scriba',
  root_language = 'Latin',
  historical_meaning = 'Latin scriba (a writer, clerk, public official who keeps records), from scribere (to write) — and scribere originally meant TO SCRATCH or incise, the physical act of cutting marks into a surface. From Proto-Indo-European *skribh- (to cut, separate, sift). A scribe was an office, not a hobby: the person trusted to set down what was said so it could be consulted later.',
  sanctuary_meaning = 'The public house for the constellation''s tellings. The office sense is what is wanted — a scribe records faithfully and does not editorialise, and the cutting root is a fair reminder that writing something down makes it durable in a way speech is not.',
  completion_progress = 100
where atom_word = 'scribe';

update public.etymology set
  root_word = 'excavare',
  root_language = 'Latin',
  historical_meaning = 'Latin excavare (to hollow out), from ex- (out) + cavare (to hollow), from cavus (hollow, a cave). The archaeological sense — digging to recover what is buried — is a 19th-century specialisation of the plain older meaning, which was simply to make a hole.',
  sanctuary_meaning = 'The instrument that recovers what the house has already built and half-forgotten. The archaeological reading is the operative one: excavation does not CREATE what it finds, it removes what has covered it — which is why the tool reports rather than invents.',
  completion_progress = 100
where atom_word = 'excavator';

update public.etymology set
  root_word = 'bulla',
  root_language = 'Latin',
  historical_meaning = 'English bubble (14th century), probably imitative — the word sounds like the thing, as in Dutch bobbel and German Blase. Related to Latin bulla (a bubble, knob, rounded swelling), which also gives English BULLETIN and PAPAL BULL, by way of the round lead seal on a document. A bubble has meant "something showy that bursts" since the 17th century, and the South Sea Bubble of 1720 fixed that sense.',
  sanctuary_meaning = 'The game realm''s own word, and its anti-compulsion identity: a bubble is a small delight that is COMPLETE when it pops. Nothing is accumulated, nothing is owed, and the burst is the whole point rather than a loss.',
  completion_progress = 100
where atom_word = 'bubble';   -- the ATOM is singular, wearing ["s"]

update public.etymology set
  root_word = 'meeting',
  root_language = 'Old English',
  historical_meaning = 'Old English gemēting (an assembly, encounter), from mētan (to meet, find, encounter), from Proto-Germanic *mōtjaną, from *mōtą (a meeting, assembly) — the same root as MOOT, the Anglo-Saxon assembly where matters were decided. Cognate with Old Norse mót. The oldest sense is the COMING TOGETHER itself, not the room or the agenda.',
  sanctuary_meaning = 'The realm for recording what was actually said when people came together. The moot sense is the useful one: a meeting is an assembly with consequence, and the point of keeping it is that decisions made in a room evaporate unless someone writes them down.',
  completion_progress = 100
where atom_word = 'meeting';   -- the ATOM is singular, wearing ["s"]


-- ── THE PLAIN WORDS THE COAST NEEDED ────────────────────────────────────────

update public.etymology set
  root_word = 'papyrus',
  root_language = 'Greek',
  historical_meaning = 'Greek πάπυρος (papyros, the papyrus plant), via Latin papyrus and Old French papier. The Greek word itself is a borrowing, probably from Egyptian, and the plant''s own Egyptian name is not securely recovered. The material was made from the pith of the reed; the word survived the material by nearly two thousand years, moving to rag pulp and then wood pulp without changing.',
  sanctuary_meaning = 'A written work set down to be read and answered — a draft, a telling, a record put in a form that can travel. That the word outlived the reed it named is the point: what matters is that writing was made PORTABLE, not what it was carried on.',
  completion_progress = 100
where atom_word = 'paper';

update public.etymology set
  root_word = 'violoncello',
  root_language = 'Italian',
  historical_meaning = 'Italian violoncello, a double diminutive: violone (the great viol, itself violo + the augmentative -one) plus the diminutive -cello. Literally "the little big-viol" — the instrument smaller than the violone but larger than the viola. English clipped it to cello in the 19th century, keeping only the diminutive ending, so the modern name is a fragment meaning roughly "little one".',
  sanctuary_meaning = 'Aethelred''s own instrument, and the voice the Sanctuary hears him in. The cello''s range is the closest of the strings to the human speaking voice — which is why it reads as a person talking rather than an instrument playing.',
  completion_progress = 100
where atom_word = 'cello';

update public.etymology set
  root_word = 'ad satis',
  root_language = 'Latin',
  historical_meaning = 'Anglo-French asetz / Old French asez (enough, sufficient), from Vulgar Latin ad satis (to sufficiency). Originally a LEGAL term: an executor had "assets" when the estate held enough to settle the deceased''s debts. The modern sense — a valuable thing owned — is a back-formation from that plural, and the singular "asset" does not appear in English until the 19th century.',
  sanctuary_meaning = 'A held thing of value, kept because it will be needed. The legal root is more honest than the accounting one: an asset was originally about SUFFICIENCY — having enough to meet what is owed — rather than about accumulation.',
  completion_progress = 100
where atom_word = 'asset';


-- ── THE THREE ONCE PROPOSED AS EXEMPT ───────────────────────────────────────
-- Filled at KP's ⚛ correction: the word's history is the word's, whoever
-- later wears it. Each sanctuary_meaning below speaks of the WORD, leaving
-- the naming to be told by whoever should tell it.

update public.etymology set
  root_word = 'quantum',
  root_language = 'Latin',
  historical_meaning = 'Latin quantum (how much, how great), the neuter of quantus (how much), from quam (how) — an ordinary Latin measuring word, not a technical one. Max Planck gave it the modern sense in 1900: the smallest INDIVISIBLE unit in which energy can be emitted or absorbed. The revolution in the word is that it turned a question of degree into a question of countable units — energy comes in whole steps, never in a smooth pour.',
  sanctuary_meaning = 'The smallest whole unit that cannot be divided further without ceasing to be itself. The Grammar''s atoms are quanta in exactly this sense: a word is either present or it is not, and meaning is built by combining discrete units rather than by blending.',
  completion_progress = 100
where atom_word = 'quantum';

update public.etymology set
  root_word = 'wefan',
  root_language = 'Old English',
  historical_meaning = 'Old English wefan (to weave), from Proto-Germanic *webaną, from Proto-Indo-European *webh- (to weave, plait); the agent noun webba (weaver) is attested early. The same root gives WEB and WEFT. Weaving is among the oldest named crafts, and its vocabulary supplies the metaphors of TEXT and TEXTILE alike — both from Latin texere, to weave, which is a separate root arriving at the same idea.',
  sanctuary_meaning = 'One who makes a whole cloth from separate threads, where the strength is in the crossing rather than in any single strand. The text/textile pair is the point: writing and weaving have been the same metaphor in every language that has both, because both are structure made from sequence.',
  completion_progress = 100
where atom_word = 'weaver';

update public.etymology set
  root_word = 'aethelred',
  root_language = 'Old English',
  historical_meaning = 'Old English Æþelræd, a compound of æþele (noble, of good lineage) + ræd (counsel, advice, wise judgment) — "noble counsel". Borne by two kings of the English, and famously by Æthelred II (978–1016), whose byname UNRÆD is one of history''s better puns: not "the Unready" as it is now heard, but un-ræd, NO-COUNSEL — a joke on his own name, meaning he was ill-advised. The ræd element survives in modern READ, through the sense of interpreting and advising.',
  sanctuary_meaning = 'Noble counsel — advice given from good judgment rather than from position. The word''s own history carries a warning worth keeping: the same name holds both wise counsel and its absence, and which one a bearer earns is a matter of what they actually do.',
  completion_progress = 100
where atom_word = 'aethelred';


-- ============================================================================
-- VERIFY — read-only, safe to re-run.
-- ============================================================================

-- (1) The twenty-four now stand complete, with their roots.
select atom_word, root_language, root_word, completion_progress
from public.etymology
-- NOTE the three singulars: echo · bubble · meeting. The molecules read
-- `echoes` / `bubbles` / `meetings`, but the ATOMS are singular and wear
-- their plural as a modifier — so those are the words to ask for here.
where atom_word in ('resonance','awen','khoros','skapa','ziggy','compass','echo','hearth',
                    'lantern','grammar','library','bridge','chamber','lucida','scribe',
                    'excavator','bubble','meeting','paper','cello','asset',
                    'quantum','weaver','aethelred')
order by atom_word;

-- (2) THE COAST'S OWN READING — every beacon, its molecule, and every atom
--     beneath it. NOTHING should read unfilled now except `standard`, `gaia`
--     and `daedalus`, which stood complete before this file and are untouched
--     by it (they will show their own root languages, not a blank).
select b.name as beacon, m.name as molecule, a.atom_word,
       coalesce(e.root_language, '— exempt or unfilled —') as root_language
from public.resonance_beacons b
join public.molecules m on m.id = b.molecule_id
join public.molecule_atoms ma on ma.molecule_id = m.id
join public.atoms a on a.id = ma.atom_id
left join public.etymology e on e.atom_id = a.id and e.completion_progress = 100
order by b.name, ma.position;

-- (3) The table's new completion state. Was 35 of 2,321 (1.5%).
select count(*) filter (where completion_progress = 100) as complete,
       count(*) as total,
       round(100.0 * count(*) filter (where completion_progress = 100) / count(*), 2) as pct
from public.etymology;

-- (4) The flag must agree with the fields — no row claiming 100 while empty,
--     none filled while claiming 0. Expect ZERO rows.
select atom_word, completion_progress,
       (root_word is not null) as has_root,
       (historical_meaning is not null) as has_history
from public.etymology
where (completion_progress = 100 and (root_word is null or historical_meaning is null))
   or (completion_progress = 0 and root_word is not null);
