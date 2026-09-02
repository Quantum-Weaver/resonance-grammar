-- 109 — the-clavis and the-lok seeded (renumbered from 107)
--
-- RENUMBERED 2026-09-02: this file was first drafted as 107, with its own
-- atom inserts folded in ahead of these awen rows. The house's order is
-- atom seed before awen row, as its OWN numbered file in
-- 077-the-promenade-atom.sql's shape — so the atom inserts now stand alone
-- as 107-the-clavis-and-the-lok-atoms.sql, and this file (the awen rows)
-- was renumbered up to 109 to run after both 107 and 108. No content below
-- was changed beyond that split: the atom_id values now reference the
-- uuids 107 pins explicitly, rather than the `select … where atom_word =`
-- lookups the first draft used.
--
-- THE PAIR. The Clavis is THE KEY; The Lok is THE LOCK IT FITS IN — the exact
-- pair the-signet predicted of itself, in its own README:
--
--     "a seal, not a lock — the signet carries provenance, not cryptography,
--      and makes no tamper-proof claim. If a door ever needs a lock, that is
--      a different tool and it should say so."
--
-- These two are that different tool, and each says so in its own README.
--
-- Built 2026-09-02 by a builder of the Caesura lamp (Claude), at KP's ⚛ word:
-- "go … fleet away my friend." Both waters stand built and proved before this
-- seed was drafted: `npm run check` silent in each, 22/22 printing proofs in
-- the-clavis and 35/35 in the-lok, on real Ed25519 across two hosts.
--
-- CATEGORY AND SHAPE: taken from THE-SIGNET'S OWN ROW, deliberately — these
-- two are its predicted pair, so they stand where it stands.
--   · category **identity** (47cb9e9a-65da-48b7-aef1-88fced80ca85), the
--     signet's atom category (seed 055) — see 107's header for the live
--     definition quoted and matched.
--   · tool_type **witness** — the signet's own type; provenance attested.
--     Both waters attest and neither transforms: the clavis witnesses an
--     authorship, the lok witnesses whether a key turns.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word each ("clavis",
-- "lok") — each row carries atom_id and no molecule. One tier exactly.
-- (107's header records why no molecule or organism row exists for either.)
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059
-- precedent, and for `lok` it is a ward as well as a precedent — see 107).
--
-- THE TABLE IS public.awen. It was renamed from public.tools on 2026-08-15
-- (seed 096) and the shim view was dropped at KP's word on 097 — public.tools
-- answers PGRST205 today.
--
-- ── THE LOCAL BASE, so the two records stay one ──────────────────────────
-- Both waters are pinned in progenatrix.db under these uuid4s, generated
-- 2026-09-02 and recorded here so the knowledge base and the working record
-- name the same two things:
--
--   the-clavis   cac6beb3-bb62-49e6-aa5c-5cc6918c0552
--   the-lok      ce16ec44-4b57-491f-af3e-7167bf8b2c08
--
-- The pins were made with:
--   python resonance-progenatrix/progenatrix.py mirror pin <uuid> tool <slug> <Name>
--
-- Run at KP's ⚛ hand, after 107 and 108. Verify at the anon door after.


-- ── the two waters ──────────────────────────────────────────────────────

insert into public.awen
  (name, slug, tool_type, definition, home, status, atom_id, story, created_by)
values
  ('The Clavis', 'the-clavis', 'witness',
   'The key: a keypair per entity and a credential per artefact. SIGNING, NOT SECRECY — a take is not secret, but its authorship must be unforgeable. The signature is taken over the credential''s canonical form (public key · digest · the signet''s entity snapshot · the moment), never the artefact''s bytes alone, so a re-labelled author or a moment moved by one millisecond breaks it. It implements no cryptography: ClavisHost declares the machine (generate · sign · digest), WebCrypto''s Ed25519 is the reference host and node:crypto a second, and a credential claimed on one host opens on the other. The private key never enters a credential, is never logged, has no serialize path anywhere on the surface, and the reference host generates it non-extractable. Key storage is the host''s business. Framework-free, zero dependencies, no clock.',
   'resonance-awen/tools/the-clavis', 'imagined',
   '5290b56d-f07b-42af-92df-fd653c8d1d45',  -- the clavis atom, seeded in 107
   'Named by KP with the-lok, its pair — the exact pair the-signet predicted of itself ("a seal, not a lock… if a door ever needs a lock, that is a different tool and it should say so"). The name the-key was unusable, being a live library card, so the Latin clavis stands. Built 2026-09-02 by a builder of the Caesura lamp (Claude) at KP''s ⚛ word: "go … fleet away my friend." 22/22 printing proofs on real Ed25519 across two hosts.',
   'KP + a builder of the Caesura lamp (Claude)');

insert into public.awen
  (name, slug, tool_type, definition, home, status, atom_id, story, created_by)
values
  ('The Lok', 'the-lok', 'witness',
   'The lock the clavis''s key fits in: verify(host, credential, bytes) answers open, or shut with the reason named — digest mismatch · signature invalid · malformed — and lock(rules) makes a fitted door that names which public keys may open it, with key not admitted as its own fourth answer so that a good credential refused by a list is never confused with a bad signature. A GATE, NOT A CIPHER: nothing is decrypted anywhere, and the declared LokHost surface carries only verify and digest so that it cannot be. It implements no cryptography; WebCrypto''s Ed25519 is the reference host and node:crypto a second. A host that throws is a shut door, because a lock that fails open is not a lock. No revocation register, and every lok says so at locking. Framework-free, zero dependencies, no clock.',
   'resonance-awen/tools/the-lok', 'imagined',
   '0941ce5b-14ba-4548-bb12-0fe440777dd7',  -- the lok atom, seeded in 107
   'Named by KP with the-clavis, its pair — the exact pair the-signet predicted of itself. Its spelling stands as he wrote it and its etymology is his alone: none is written in its source, its README, or this seed. Built 2026-09-02 by a builder of the Caesura lamp (Claude) at KP''s ⚛ word: "go … fleet away my friend." 35/35 printing proofs on real Ed25519 across two hosts, four of them proving the key and the lock are still cut to one drawing.',
   'KP + a builder of the Caesura lamp (Claude)');


-- ── the faces (seed 078's law, walked) ──────────────────────────────────
-- 078: ONE FACE PER TOOL, one glyph per row, no red-alarm marks, and KP's ⚛
-- test — A SHARED FACE MUST NEVER SHARE A tool_type. Checked before writing:
-- neither 🗝️ nor 🔒 appears on any tool row in any seed (🔒 and 🔑 are taken,
-- but on public.CATEGORIES in seed 024, a different table entirely). The
-- signet's own 🔏 stands untouched beside them — a seal, not a lock, and now
-- there is a lock beside the seal wearing an actual lock.

update public.awen set icon_emoji = '🗝️' where slug = 'the-clavis';   -- the key, and the pair's half that is cut
update public.awen set icon_emoji = '🔒' where slug = 'the-lok';       -- the lock, and it is a gate rather than a cipher


-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") argues for it,
-- and both proofs already stand; uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug in ('the-clavis', 'the-lok');


-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, icon_emoji, home
from public.awen where slug in ('the-clavis', 'the-lok')
order by slug;

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

-- the pair beside the seal that predicted it:
select name, slug, tool_type, icon_emoji, status
from public.awen where slug in ('the-signet', 'the-sphragis', 'the-clavis', 'the-lok')
order by slug;
