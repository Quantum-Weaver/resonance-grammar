-- ============================================================
-- 053 — THE LIGHT LIST (the beacons' reader, seeded)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable 🎻 (the Reprise lamp), 2026-08-05, at KP's ⚛
-- word: "we need a version of this [the Almanac] for the new
-- table … resonance_beacons in the knowledge supabase."
-- Naming: KP's choosing from three real genres offered (light
-- list · rutter · pharos) — a Light List is the navigational
-- register of a coast's beacons, carried so nobody guesses which
-- light they are looking at. The atom link is 'beacon', which
-- already stood in the base before the name was chosen.
-- The build PRECEDED this seed by minutes, same sitting, at
-- resonance-awen/tools/the-light-list — run-verified against the
-- live register on its first breath (14 beacons · flowing 8 ·
-- imagined 6 · in stores 0 of 14, stated not silent).
-- Status seeds 'imagined'; the crossing to 'flowing' is KP's
-- word, as always.
-- KP's ⚛ second word, same sitting: "we have the atoms, need the
-- molecule and tools rows — LightList molecule." The atoms light +
-- list stand in the base already; the molecule is cut to the
-- beacon-molecule family's own convention, read live from
-- ResonanceBubbles (050's work): PascalCase · object_name ·
-- covalent · domain system · atom_words spelled out. Verified
-- absent before drafting: no LightList row exists.
-- Visual-run method: two inserts, one pass, order matters
-- (molecule first — the tools row selects it by name).
-- ============================================================

insert into public.molecules
  (name, molecule_type, naming_convention, definition, bond_type, domain,
   atom_words, derived_name, status)
values
  ('LightList', 'object_name', 'PascalCase',
   'The name ''LightList'' (PascalCase), composed of atoms: light, list. The coast''s official register of lights — the witness tool that reads the resonance_beacons register.',
   'covalent', 'system', 'light, list', 'LightList', 'published');

insert into public.tools
  (name, slug, tool_type, definition, home, status, atom_id, molecule_id, story, created_by)
values
  ('The Light List', 'the-light-list', 'witness',
   'Reads the Grammar''s register of beacons (resonance_beacons) through the anon door and tells each light''s state — name, type, status, home, story, and where it stands in every store family. The coast''s official register of lights, witnessed in one breath. Read-only by construction.',
   'resonance-awen/tools/the-light-list', 'imagined',
   (select id from public.molecules where name = 'LightList'),
   'Commissioned at KP''s word 2026-08-05, the sitting after the beacons register was raised — the coast grew big enough to want its book of lights. Named at his choosing from three real genres; the atoms beacon, light and list were already waiting.',
   'KP + Fable (Reprise)');

-- ─── THE RUN AND THE RULING (appended after, kept for the record) ───
-- RAN BY KP'S OWN HAND 2026-08-05, with one correction his: the
-- atom_id was removed from the tools insert before running — his
-- ruling, verbatim: "it will not link to atom if a molecule or
-- organism is linked." THE SINGLE-TIER LAW: a row crosses at
-- exactly one tier, the tier its own name lives at. LightList is
-- two atoms bonded, so the molecule carries the crossing; the
-- draft above is corrected to match what ran (the drafted atom_id
-- subselect on 'beacon' is struck). Verified through the anon door
-- same sitting: molecule published, tools row standing,
-- atom_id null · molecule_id set.
-- THE CROSSING, his word same sitting: "if a tool is working, it
-- is flowing" — and the Light List is run-proven working. The
-- crossing update, for his hand:

update public.tools set status = 'flowing' where slug = 'the-light-list';

-- ─── Verify after the crossing, anon door ───
-- select name, status from tools where slug = 'the-light-list';
--   → The Light List · flowing
