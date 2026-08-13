-- 092 — the two new lights
--
-- The coast census, 2026-08-12 evening: the resonance_beacons register
-- holds 26 lights; the shore holds 28 non-dot folders. The two unlit
-- are the five days' own children, both born 2026-08-12:
--
--   RESONANCE SISTRUM — the Compass split in two at KP's ⚛ ruling; the
--   boundary is rights, not taste: "does this create NEW sound, or
--   work with sound you already own?" Recording, takes and the
--   four-track went to Sistrum; body mirrored from Echoes (154 files,
--   25 verified replacements, 0.1.0 by the shipwright, icons from
--   KP's own art), desktop shell verified opening clean BY HIS OWN
--   HANDS. svelte-check 329/0/0 · cargo check exit 0.
--
--   RESONANCE ARDAN — cloned in, empty, awaiting its founding: the
--   stage where the stories get told. the-effects-engine's law A0 is
--   the whole design — store the token, derive the animation, no
--   keyframes ever.
--
-- Idiom is seed 044's own (the first beacons). Statuses honestly:
-- sistrum has a working body opened by his hands — flowing by the
-- standing ruling; ardan awaits founding — imagined. Both are his
-- strokes to change before running. Ardan's definition below is
-- drafted from the helm handoff's words; HIS chat-drafted description
-- outranks it — paste his words over this draft at will.
--
-- Run at KP's ⚛ hand. Verify at the anon door after. THEN the
-- post-seed ritual: the bond tender, and the gaia-sync (both bases'
-- portraits re-signed) — his word, this sitting.

insert into public.resonance_beacons
  (name, slug, beacon_type, definition, home, repo_url, status, created_by)
values

  ('Resonance Sistrum', 'resonance-sistrum', 'app',
   'The recorder — works · takes · feelings. Every musician in a band or orchestra records their part sovereignly, an engineer finishes the project, and all credentials combine so everyone involved is paid no matter how small the role — opt-in always, no force or deceptive theft. Creates NEW sound; the Compass keeps working with sound you already own: the boundary is rights, not taste. takes.provenance stands as a held place for the collaboration layer, nothing writes it yet, and nothing may drop it.',
   'resonance-sistrum', 'https://github.com/Quantum-Weaver/resonance-sistrum',
   'flowing', 'KP + Opus (Claude)'),

  ('Resonance Ardan', 'resonance-ardan', 'app',
   'The stage where the stories get told. Founded on the-effects-engine''s law A0 — store the token, derive the animation, no keyframes ever — which is why a stage can exist without the heaviest surface in animation tooling. Ardán, Irish: the raised place, the platform. Awaiting its founding.',
   'resonance-ardan', 'https://github.com/Quantum-Weaver/resonance-ardan',
   'imagined', 'KP + Opus (Claude)');

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, beacon_type, status, home
from public.resonance_beacons
where slug in ('resonance-sistrum', 'resonance-ardan')
order by name;

-- and the coast count, which should now read 28:
select count(*) as beacons from public.resonance_beacons;
