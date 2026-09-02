-- 107 — the-clavis and the-lok, their atoms
--
-- THE FAULT THIS FILE MENDS: two hands wrote 2026-09-02 seeded awen rows for
-- the-clavis and the-lok in one file (then numbered 107) with the atom
-- inserts folded into the SAME file, ahead of the awen inserts but not as
-- their own stratum. The house's order is atom seed before awen row, AND
-- as its own numbered file, in 077-the-promenade-atom.sql's exact shape.
-- This file is that atom stratum, split out; the awen rows now stand as
-- 109-the-clavis-and-the-lok.sql, after this one and after 108.
--
-- THE PAIR. The Clavis is THE KEY; The Lok is THE LOCK IT FITS IN — the exact
-- pair the-signet predicted of itself, in its own README:
--
--     "a seal, not a lock — the signet carries provenance, not cryptography,
--      and makes no tamper-proof claim. If a door ever needs a lock, that is
--      a different tool and it should say so."
--
-- Built 2026-09-02 by a builder of the Caesura lamp (Claude), at KP's ⚛ word:
-- "go … fleet away my friend." Both waters stand built and proved before this
-- seed was drafted: `npm run check` silent in each, 22/22 printing proofs in
-- the-clavis and 35/35 in the-lok, on real Ed25519 across two hosts.
--
-- THREE THINGS WERE SETTLED BEFORE A LINE WAS WRITTEN, and they are recorded
-- here because they are the reason these rows read as they do:
--   · IT IS SIGNING, NOT SECRECY — "a take is not secret; its authorship must
--     be unforgeable." Neither water encrypts or decrypts anything, and the
--     lok's host surface has only `verify` and `digest` so that it *cannot*.
--   · NEVER IMPLEMENT THE PRIMITIVE — DECLARE A HOST SURFACE. Precedent:
--     `the-now` and `the-colophon`. Neither water computes a hash or a
--     signature; WebCrypto's Ed25519 is the reference host, node:crypto the
--     second, and a spring tool hand-rolling a curve would be the most
--     dangerous thing in this house.
--   · THE NAME `the-key` IS UNUSABLE — it is a live library card. The Latin
--     `clavis` stands in its place.
--
-- THE LOK'S SPELLING STANDS AS KP WROTE IT, AND ITS ETYMOLOGY IS HIS ALONE.
-- No etymology is written here or anywhere in either water's source or
-- README. The atoms table's trigger makes an empty `etymology` row on insert;
-- for `lok` that row is to be filled by HIS hand and no other, and the atom's
-- definition below is deliberately a description of the TOOL, carrying no
-- claim about where the word comes from.
--
-- CATEGORY: taken from THE-SIGNET'S OWN ROW, deliberately — these two are
-- its predicted pair, so they stand where it stands. **identity**
-- (47cb9e9a-65da-48b7-aef1-88fced80ca85), the signet's own atom category
-- (seed 055), whose live definition (categories table, sort_order 21) reads:
-- "The marks of being someone — names, handles, signatures, traits. How a
-- self shows up." Clavis and lok are the unforgeable marks of who made a
-- thing — the same ground the-signet and the-sphragis already stand on.
--
-- MOLECULE / ORGANISM — checked, and neither applies. KP's word tonight
-- widened the order to atom → molecule → organism (if any) → awen row, the
-- molecule (not the atom) carrying the awen row's link where one exists.
-- Checked against the live shape before writing this file: `clavis` and
-- `lok` are each ONE WORD, and the house's tools_one_tier constraint (seed
-- 014: `(atom_id is not null)::int + (molecule_id is not null)::int +
-- (organism_id is not null)::int = 1`) lets an awen row cross at exactly one
-- tier — the tier its own name lives at (055's law, walked identically in
-- 060, 061, 105, 106, and this pair's own now-109). A one-word name crosses
-- at the atom tier; there is no molecule row to make and no organism above
-- it, and adding one while also setting atom_id would violate the
-- constraint outright (sum would be 2, not 1). The-promenade and
-- the-sphragis — the two live precedents checked at the anon door's own
-- 2026-08-24 export — both stand exactly this way: atom_id set,
-- molecule_id and organism_id null. So: "if any" resolves to none here.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word each ("clavis",
-- "lok") — each awen row (109) carries atom_id and no molecule. One tier
-- exactly.
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059
-- precedent, and for `lok` it is a ward as well as a precedent — see above).
--
-- THE TABLE IS public.awen (renamed from public.tools 2026-08-15, seed 096;
-- shim view dropped 097). This file only touches public.atoms.
--
-- ── ATOM UUIDS, generated uuid4 and pinned here so this file and 109 name
--    the same two rows without depending on insert order or a subquery ──
--   clavis atom   5290b56d-f07b-42af-92df-fd653c8d1d45
--   lok atom      0941ce5b-14ba-4548-bb12-0fe440777dd7
--
-- Run at KP's ⚛ hand, before 108 and 109. Verify at the anon door after.

insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '5290b56d-f07b-42af-92df-fd653c8d1d45',
  'clavis',
  'Clavis (Latin: the key — the thing cut to fit one lock and no other). The key half of the signing pair: a keypair per entity and a credential per artefact, where a credential carries the alg, the public key, the artefact''s SHA-256 digest, the entity''s signet snapshot, the moment, and an Ed25519 signature taken over the CANONICAL FORM of all of those rather than over the bytes alone — so a re-labelled author or a moved moment breaks the signature and authorship cannot be forged after the fact. It is SIGNING, NOT SECRECY: nothing is encrypted, nothing is hidden, and a take is not secret — only its authorship must be unforgeable. It implements no cryptography at all; ClavisHost declares the machine (generate · sign · digest) and the browser''s own WebCrypto Ed25519 is the reference host. The private key never enters a credential, is never logged, has no serialize path on the surface at all, and is generated non-extractable so the machine itself refuses to hand it out. Key storage is the host''s business and this water holds nothing between calls.',
  'root', 5, 5, 1, 'static',
  '47cb9e9a-65da-48b7-aef1-88fced80ca85',  -- identity: "The marks of being someone — names, handles, signatures, traits. How a self shows up." (the signet's own)
  'identity',
  'published',
  'CLAVIS',
  'clavis',
  'Clavis'
);

-- The definition below describes THE TOOL and makes no claim about the word.
-- The spelling is KP's as written; the etymology row this insert's trigger
-- creates is to be filled by his hand alone.
insert into public.atoms (
  id, atom_word, definition, atom_type, weight, affinity, valence, state,
  category, category_name, status, screaming_case, snake_case, pascal_case
) values (
  '0941ce5b-14ba-4548-bb12-0fe440777dd7',
  'lok',
  'The lock the clavis''s key fits in: a credential verified against an artefact''s own bytes, and a door that names which public keys may open it. A GATE, NEVER A CIPHER — nothing is encrypted and nothing is decrypted, and the declared host surface carries only verify and digest so that it cannot be. Every no is a told no, named in a small fixed set — digest mismatch (the bytes are not the bytes it was claimed over, checked before the signature because it is the more useful sentence) · signature invalid (a foreign key, a re-labelled author, a moved moment and a forgery all answer here, deliberately, because naming which would tell a forger how close they got) · malformed (asked before anything reaches a host, so a host is never fed rubbish) · and, on a fitted door only, key not admitted. A host that throws is a shut door, because a lock that fails open is not a lock. A lok holds keys and nothing else: no identities, no roles, no expiry, no clock, and no revocation register — which it says out loud at every locking rather than implying.',
  'root', 5, 5, 1, 'static',
  '47cb9e9a-65da-48b7-aef1-88fced80ca85',  -- identity: "The marks of being someone — names, handles, signatures, traits. How a self shows up." (the signet's own)
  'identity',
  'published',
  'LOK',
  'lok',
  'Lok'
);

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word in ('clavis', 'lok')
order by atom_word;

-- the companions the triggers should have made, standing empty.
-- `lok`'s etymology row is KP's to fill and nobody else's:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word in ('clavis', 'lok')
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word in ('clavis', 'lok');
