-- ============================================================
-- 039 — THE MODULATOR: atom 'modulate' born + the tool row
-- ============================================================
-- Drafted 2026-08-01 by Fable 🎻 (lane awen, third lamp) for KP's ⚛
-- hand — plain SQL per the ritual, no DO blocks, his eye rules.
--
-- THE STORY: born of KP's ask this same evening — "curious how
-- difficult is it to craft a voice modulator for the mic?
-- preferably something with turnable knobs and sliders" — grown by
-- his strokes the same sitting: "should be usable on audio clips or
-- live recording" · "headphone always." Built the same evening
-- (resonance-awen/tools/the-modulator): one rack, two doors — a
-- live mic or a loaded clip through pitch (granular worklet) →
-- ring mod → filter → drive → tremolo → delay → reverb → master,
-- every knob clamped (a position, never a verdict), the reverb's
-- room synthesized from pure math (deterministic by seed, the
-- plate-forge law), recordings landing only in the user's own
-- hands. Mathematics proven 17/17; the see-and-hear door sealed
-- (hear-it.html, headphone law first, KP's words verbatim).
--
-- THE GRAMMAR: no atom said 'modulate' — it is born here, beside
-- its kin 'voice' (communication) and 'tune' (the tuner's coinage).
-- The tool rides tool_type 'transform' — the equalizer's own type.
-- Name proposed in the family's register (recorder · tuner ·
-- equalizer · modulator); the name gate is KP's — if another word
-- is truer, rename before running, and the realm follows.
--
-- Visual-run method: one pass; the crossing separate, at the foot.
-- ============================================================

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence, state,
   category, category_name, status)
values
  ('modulate',
   'To shape one signal by another — a voice through knobs, a wave riding a wave. The turning of a sound into its other selves without losing the throat it came from.',
   'root', 5, 5, 1, 'static',
   (select id from public.categories where name = 'communication'),
   'communication', 'published');

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, folksonomy_type, story, created_by)
values
  ('The Modulator', 'the-modulator', 'transform',
   'A voice (or any sound) through turnable knobs — pitch, ring mod, filter, drive, tremolo, delay, reverb; one rack serving a live mic or a loaded clip alike. Headphone always. Every knob a position, never a verdict; the reverb''s room pure mathematics; recordings land only in the user''s own hands.',
   'resonance-awen/tools/the-modulator', 'imagined',
   (select id from public.atoms where atom_word = 'modulate'),
   'Awen',
   'Born at KP''s ask 2026-08-01 ("voice modulator for the mic… turnable knobs and sliders") and grown by his strokes the same sitting ("usable on audio clips or live recording" · "headphone always."). Built the same evening — the tuner door''s mic law, the chimes'' synthesis law, and the one-file seal, holding knobs.',
   'KP + Fable (lane awen)');

-- ─── The crossing, at KP's word alone (after his own ears at the door) ───
-- update tools set status = 'flowing' where slug = 'the-modulator';

-- ─── Verify after running, anon door ───
-- select atom_word, category_name, status from atoms where atom_word = 'modulate';   → published, communication
-- select name, status, folksonomy_type from tools where slug = 'the-modulator';     → imagined (flowing after the listening)
