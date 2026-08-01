-- ============================================================
-- 032 — THE CHIMES (the family's own sounds, seeded)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen, second lamp), 2026-08-01, at KP's
-- ⚛ word, verbatim: "seems simple but we need a standalone set of
-- audio sounds. chimes and notification sounds the family of apps
-- can utilize as needed" — grown the same sitting by his two
-- strokes: "think about games as well, still not shocking, but
-- rewarding" (the play family — the anti-compulsion law in audio)
-- and "poping a bubble should be like bubble wrap to a
-- neurodivergent" (the pop's true spec, met with a crisp
-- fixed-seed snap over a round hollow body).
-- The tool stands at resonance-awen/tools/the-chimes: FOURTEEN
-- sounds (calm 8 · play 6), every one synthesized from pure math —
-- no samples, no provenance but mathematics — every one peaking at
-- the gentle level (~-9 dBFS). No buzzers, no alarms, nothing
-- urgent: the sensory law in audio form; silence stays the default
-- everywhere; sound is the vessel's chosen moment. The reference
-- set ships beside the tool with a manifest carrying the laws
-- machine-readable. Deterministic; healed by regeneration.
-- THE GRAMMAR: atom 'chime' already lives (sensory) — tool row
-- only, linked at atom tier.
-- THE GATE THAT MATTERS: sound design passes no gate but KP's own
-- ears — the listening stands offered; the crossing follows it.
-- Visual-run method: one insert, one pass; crossing separate.
-- ============================================================

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, folksonomy_type, story, created_by)
values
  ('The Chimes', 'the-chimes', 'emit',
   'The family''s own sounds, synthesized from pure math — fourteen calm chimes and play tones at one gentle level (~-9 dBFS), for the moments a vessel chooses sound. No buzzers, no alarms, nothing urgent; the play family rewards without hooks. Deterministic; healed by regeneration; the manifest carries the laws machine-readable.',
   'resonance-awen/tools/the-chimes', 'imagined',
   (select id from public.atoms where atom_word = 'chime'),
   'Awen',
   'Named at KP''s word 2026-08-01 and grown by his strokes the same sitting — the play family (rewarding, never shocking) and the pop''s spec (bubble wrap to a neurodivergent). Synthesis over samples per the plate-forge law: born from math, owned by the house, given freely.',
   'KP + Fable (lane awen)');

-- ─── The crossing, at KP's word alone (after his own ears rule the set) ───
-- update tools set status = 'flowing' where slug = 'the-chimes';

-- ─── Verify after running, anon door ───
-- select name, status, folksonomy_type from tools where slug = 'the-chimes';  → imagined (or flowing, after the listening)
