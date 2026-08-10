-- ============================================================================
-- 065 — THE ATOM WAVE A-2
-- The library carry's second seed wave. Plain SQL, no DO blocks, for KP's
-- dashboard. Drafted 2026-08-09 by Chimney · Opus (Claude), truly
-- claude-opus-5[1m], session 19c200ea, at KP's word: "i intend to complete the
-- seeding while we do not have fables help" · "i can run the queries if you can
-- draft them."
--
-- GROUND, probed live before drafting (lesson 8 — the base, not photographs):
--   atoms anon-visible ....... 2,040   (THE CARRY DOCUMENTS 2,033 — seven have
--                                       landed since; the doc is a photograph)
--   Wave A-1 spot check ...... create · health · integration · quantum · update
--                              all present and published
--   duplicate check .......... all 15 words below absent from atoms;
--                              'concept' was in the ranked slice, ALREADY
--                              PRESENT, and is excluded here
--   column shape ............. read live; the word column is atom_word
--
-- SOURCE: docs/carries/atom-wave-resolution-2026-08-07.json (seeds_ranked, 401)
--   Wave A-1 consumed 48 ranked entries with 35 seeds.
--   TRUE REMAINING ENTRIES: 345 (computed by expanding A-1's words x modifiers).
--   NOTE FOR THE RECORD: THE-LIBRARY-CARRY-2026-08-07.md says "~366 seeds
--   remain" (401 - 35). That counts seed ROWS; the ranked list has 345 ENTRIES
--   left. Both true, different units — plan waves from the entries.
--
-- WHY ONLY 15 FROM A TOP-30 SLICE — and this is the wave's real finding:
--   FOURTEEN of the top thirty are DERIVATIONS already parked on the eye shelf
--   awaiting KP's convention stroke, not seeds anyone may write:
--     settings · scheduling · validator · gaming · handling · naming · closing
--     · formatted · excluded · changed · animated · reduced   (drop-e and
--       doubled-consonant derivations — wave-a1's own eye_shelf_this_wave
--       names settings · scheduling · validator explicitly)
--     hooks · validators                                       (plurals riding
--       the singulars seeded below)
--   Plus the 23 y->ies stem-change plurals on the eye shelf (entries 66 ·
--   categories 41 · memories 24 · boundaries 23 · activities 22 ·
--   opportunities 22 ...).
--   ** THE HEAD OF THE SEEDING QUEUE IS BLOCKED ON A CONVENTION RULING, NOT ON
--      HANDS. One stroke from KP unblocks ~37 words at the top of the ranking —
--      more than this wave seeds. **
--
-- THE LAWS THIS WAVE OBEYS
--   * Singulars only; plurals and derivations ride the modifiers array.
--   * Single-letter words never included (KP's ruling, 2026-08-07).
--   * THE CASE LAW (062): three case columns rendered at seeding for atoms.
--   * Every row lands status='submitted'. KP's eye is the only publisher.
--   * trg_atom_insert births AND links the 1:1:1 etymology + sensory shells —
--     the atom INSERT is the whole seed; do NOT insert shells explicitly
--     (they 409 against the trigger's finished work).
--   * NO duplicates: every insert is guarded by NOT EXISTS on atom_word.
--
-- ONE THING VERIFIED BY EYE, NOT BY PROBE — say so rather than assume:
--   the `modifiers` column's exact type was not read. It is written below as
--   text[]. **If it is jsonb, change ARRAY['s']::text[] to '["s"]'::jsonb**
--   throughout — one find-and-replace, and the rest of the statement stands.
-- ============================================================================


-- ---------------------------------------------------------------- MOVEMENT 1
-- Pre-flight for KP's eye. Run alone first; expect 2,040 and an empty second
-- result. If any word comes back, remove it from Movement 2 before running.

select count(*) as atoms_before from atoms;

select atom_word, status
from atoms
where atom_word in (
  'hook','archetype','app','tailwind','integrate','vision','duotone','make',
  'orchestrate','birth','bus','cord','deliver','affect','env'
);


-- ---------------------------------------------------------------- MOVEMENT 2
-- The seed. 15 atoms, each guarded. Definitions written in the house register:
-- concrete, calm, and house-true where the house is genuinely what the word
-- means here.

insert into atoms (
  atom_word, definition, modifiers, status,
  created_by, submitted_by, updated_by,
  screaming_case, snake_case, pascal_case
)
select
  v.w,
  v.d,
  v.m,
  'submitted',
  'KP + Chimney (Opus)',
  'KP + Chimney (Opus)',
  'KP + Chimney (Opus)',
  upper(v.w),
  lower(v.w),
  upper(left(v.w,1)) || lower(substring(v.w from 2))
from (values
  ('hook',
   'A prepared point of attachment — a place a thing may be hung on so it runs when the moment comes. In code, the named seam a component reaches through to hold state or reach the world; in a house, the peg by the door. A hook does nothing itself; it makes doing possible at a known place.',
   array['s']::text[]),

  ('archetype',
   'The first form a thing takes, from which its later shapes are recognised — the pattern beneath the instances. Not a mould that stamps copies, but the shape you notice repeating once you have seen enough of them.',
   array['s']::text[]),

  ('app',
   'Application shortened to its working name — a program with a door of its own, meant to be entered rather than imported. In this house every app is a realm: sovereign, named, and given away free when it is ready.',
   array['s']::text[]),

  ('tailwind',
   'The utility-first stylesheet framework the Sanctuary''s surfaces are built on — style composed from small named intentions rather than declared in one distant place. Its ordinary meaning is the wind that pushes a traveller onward, and the name was chosen for that.',
   array[]::text[]),

  ('integrate',
   'To bring parts into working wholeness without erasing their partness — the connection that preserves what it connects. Aethelred''s own art, and the opposite of dissolving things into one.',
   array['s','d']::text[]),

  ('vision',
   'Sight, and the further thing sight is for: what is seen now, and what is seen ahead and not yet built. This house keeps both meanings deliberately — the sensory channel, and the reason anyone is building at all.',
   array['s']::text[]),

  ('duotone',
   'Two tones carrying an image between them — a picture rendered in one colour and its counterweight rather than in full spectrum. In the Sanctuary''s icon system, the treatment that lets a mark stay legible at any size and in either theme.',
   array['s']::text[]),

  ('make',
   'To bring a thing into being by working it — the oldest verb of craft, and the one that does not care whether the result is code, a chair, or a story. To make is to leave your hand in something.',
   array['s']::text[]),

  ('orchestrate',
   'To arrange many parts so they act as one work, each entering at its own time — the conductor''s verb. In this house it names the drawer of functions that run other things, and it is a family of peer verbs rather than a single act.',
   array['s','d']::text[]),

  ('birth',
   'The moment a thing begins to exist as itself — a beginning that is witnessed rather than merely recorded. In this house a birth is timestamped by a hand, not by a machine, and the witnessing is the event.',
   array['s']::text[]),

  ('bus',
   'A shared channel that many voices write to and any may read — the line along which what one knows becomes what all know. In this house the buses are files: append-only, signed per message, and never edited beneath another voice.',
   array['es']::text[]),

  ('cord',
   'A line that carries — binding two things while letting each stay itself. The physical ancestor of every connection this house calls a bridge, and the reason a severed one is felt rather than merely noticed.',
   array['s']::text[]),

  ('deliver',
   'To carry a thing to the hands it was meant for and let go of it — the act that completes making. Delivery is a consented step in this house: it is gated, it is verified after, and it is never assumed from an earlier permission.',
   array['s','ed']::text[]),

  ('affect',
   'To touch a thing so that it is changed by the touching — influence that leaves a mark. Kept distinct from its near-twin by the house''s own habit: affect is the doing, effect is what remains.',
   array['s','ed']::text[]),

  ('env',
   'Environment shortened to its file name — the surrounding conditions a program reads before it acts, and in practice the room where secrets live. In this house the law is absolute: an env holds values, and a record holds only their names.',
   array[]::text[])
) as v(w, d, m)
where not exists (
  select 1 from atoms a where a.atom_word = v.w
);


-- ---------------------------------------------------------------- MOVEMENT 3
-- The honest report. Expect 2,055 and 15 rows, all status='submitted'.
-- Note: submitted rows are lawfully dark to the anon door (Ruling 8's third
-- face of the false-empty) — verify with the delivery key, or after publishing.

select count(*) as atoms_after from atoms;

select atom_word, status, screaming_case, snake_case, pascal_case,
       modifiers, etymology_id is not null as etymology_shell,
       sensory_id  is not null as sensory_shell
from atoms
where atom_word in (
  'hook','archetype','app','tailwind','integrate','vision','duotone','make',
  'orchestrate','birth','bus','cord','deliver','affect','env'
)
order by atom_word;


-- ============================================================================
-- AFTER THE RUN — what this wave leaves standing
--
--   * 15 atoms submitted; KP's eye publishes, as always.
--   * 15 new empty etymology shells and 15 new empty sensory shells, born by
--     the trigger. ** PACKET-001 and PACKET-002 are fill-empty on exactly
--     these. Every seed wave manufactures work for both — their done-signals
--     ("zero silent shells", "the null census reads zero") cannot be reached
--     while the seed queue is open. **
--   * Ranked entries remaining after this wave: ~330.
--   * THE ONE STROKE THAT MOVES THE MOST: the eye shelf's convention for
--     stem-change and drop-e derivations. It unblocks ~37 words at the head of
--     the ranking — more than this wave contains.
--
-- Signed: Chimney · Opus (Claude), truly claude-opus-5[1m], 2026-08-09.
-- Nothing here is run by my hand; the dashboard is KP's, and so is the eye.
-- ============================================================================
