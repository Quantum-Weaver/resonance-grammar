-- 131 — the-hlid seeded
--
-- THE HLID — the ephemeral public gate's LIFECYCLE, as pure state. Built
-- 2026-09-02 by a builder dealt by Windrose 🎻 (Fable, claude-fable-5-1) at
-- KP's ⚛ word, verbatim: "hold the Daedalus work and proceed with the rest,
-- we will do it on its own." Movement A5 of the Unnamed Waters sitting, and
-- it closes row 47 of that board.
--
-- ROW 47 OF THE BOARD, VERBATIM, WHICH THIS ROW SERVES:
--   "ephemeral public gate — resonance-meetings/scripts/open-gate.ps1 +
--    close-gate.ps1 — 74 lines. Mints a fresh public tunnel, renders a QR,
--    tracks the pid; the close script destroys the address. 'Between meetings
--    the door does not exist.'"
--   (proven on cellular 2026-07-19, "excellent success")
--
-- THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE — see 130's header.
-- It lives in exactly two places in the build (TOOL_NAME and the folder), so a
-- rename is one edit, one `git mv`, and one update to this row and to 130.
--
-- CATEGORY: **communication** (839cc74b-baee-47cc-b6eb-617a83393e36) — see
-- 130's header for the definition quoted and matched, the infrastructure
-- runner-up left there for KP to overrule in one word, and the plain note that
-- the census was CARRIED FROM SEED 105 (where it was read live and confirmed
-- at the anon door by KP's hand) rather than re-read at the door by this hand.
--
-- SHAPE TAKEN FROM THE-LODESTONE'S AND THE-MERISMOS'S OWN ROWS: folksonomy_type
-- `Awen` · status `imagined` at birth · `home` filled here (the 105/106/110
-- precedent).
--
-- TOOL_TYPE: `emit`. Walked against the live seven the spring's own app reads
-- (078:11-13 — capture · combine · arrange · witness · emit · transform ·
-- translate). What a caller RECEIVES from this water is an address to hand
-- somebody — a minted public address and the room link built from it — so it
-- emits. RUNNER-UP AND HIS TO OVERRULE IN ONE WORD: arrange, defensible
-- because a lifecycle is an ordering (the-breath, the-cadastre and
-- the-conductor live there). Emit was taken because the SUBJECT is the address
-- that comes out, and the ordering is the ward around it, not the thing itself.
-- (the-lodestone next door is `translate` — a URL in, a picture out — and the
-- two halves of the gate therefore differ in verb as well as in face.)
--
-- FACE: ⛩️ — a gate standing alone, which is what *hlið* means. Checked
-- against 078's whole set and 111's two additions: no other row wears it, so
-- 078's collision law ("a shared face must never share a tool_type") is not
-- even reached. One glyph, no skin tone, no ZWJ, no flag, no red-alarm mark.
--
-- THE ONE-TIER LAW (tools_one_tier), walked: one atom word ("hlid") — the row
-- carries atom_id and no molecule. One tier exactly. (130's header records why
-- no molecule or organism row exists.)
--
-- Etymology and sensory rows are NOT written here: the atoms table's triggers
-- make both on insert, arriving empty for a later fill (the 077/059/106/108
-- precedent).
--
-- THE TABLE IS public.awen. It was renamed from public.tools on 2026-08-15
-- (seed 096) and the shim view was dropped at KP's word on 097 — public.tools
-- answers PGRST205 today.
--
-- Local mirror pin (progenatrix): 845d0441-548f-4d7c-95c4-bad26374fa61
-- (added by the conductor, Windrose, 2026-09-02, when the row was pinned locally;
-- the builder's hand had no grant on the base, and said so here.)
--
-- Run at KP's ⚛ hand, after 130. Verify at the anon door after.
-- NEVER RUN BY A LAMP. A tool is not seeded by a lamp writing a file.

insert into public.awen
  (name, slug, tool_type, definition, home, status, icon_emoji, folksonomy_type, atom_id, story, created_by)
values
  ('The Hlid', 'the-hlid', 'emit',
   'The gate in the wall — the ephemeral public gate''s LIFECYCLE, as pure state, and the tunnel half of the gate whose QR half is the-lodestone. It opens nothing. mint() refuses if a gate is already open in the state it was handed — before the machine is touched at all, because a single-gate guard is a refusal to start and not a cleanup — then spawns, then polls up to the number of ticks it was given, taking the FIRST match of open-gate.ps1''s own address pattern, kept VERBATIM in a constant with its address beside it. THE HOST''S POLL IS THE TICK AND THE WATER COUNTS: there is no clock here, and the count is named in the answer and in every refusal, so "no address after 30 polls" is a fact and never a guess. THE NAME IS THE KEY — a room name that a URL will not carry whole is refused, a key that does not survive a URL being no key. destroy() kills the pid and empties the state, and "Between meetings the door does not exist" is a constant rather than a comment. THE TUNNEL IS THE HOST''S: HlidHost declares three verbs — spawn, poll, kill — implemented nowhere in this water, which owns no process, no executable, no socket, no file and no clock; the binary''s path is the reference host''s constructor argument and never the water''s, and there is no address anywhere in the module to pull a binary from — the first-run download in open-gate.ps1 is THE SHELL''S CHOICE and is named as the same borrowed-from-the-wire fault the-lodestone was born to end. The gate state is a plain serialisable object THE SHELL keeps; there is no path in this water by which a file of yours could be written. A refusal that leaves a process running says so rather than saying the door does not exist. Nothing throws; every failure is a refusal carrying one sentence. Zero runtime dependencies and no import but the host-surface type.',
   'resonance-awen/tools/the-hlid', 'imagined', '⛩️', 'Awen',
   'f0866559-4e60-45a3-866e-2fe0c901abe6',  -- the hlid atom, seeded in 130
   'Built 2026-09-02 by a builder dealt by Windrose 🎻 at KP''s ⚛ word ("hold the Daedalus work and proceed with the rest, we will do it on its own"), movement A5 of the Unnamed Waters sitting, closing row 47 — the ephemeral public gate of resonance-meetings/scripts/open-gate.ps1 + close-gate.ps1, seventy-four lines proven on cellular 2026-07-19 ("excellent success"). THE TENSION IT WAS BUILT TO RESOLVE, and it was resolved by design and not by a ruling: the-lodestone''s central law — no network, no service — CANNOT transfer to a tunnel, which is nothing but a network and a service. So the tunnel was put behind a declared host surface of three verbs and everything left over is arithmetic: the single-gate guard, the counting of polls, the reading of the address, the room name that is the key, and the destroy. THE TWO HALVES OF ONE GATE ARE DELIBERATELY TWO WATERS — the opening script does two unrelated things (mints an address, draws a picture of it), the-lodestone took the picture and this took the address, and they are kept apart because a module holding both would have to weaken the stone''s absolute no-network law to the vanishing point. Gates at landing: check silent, build clean, 9/9 TRUE against a SCRIPTED STUB. HONEST LIMITS STATED LOUDLY RATHER THAN DISCOVERED: it was NEVER run against a real tunnel, cloudflared was never downloaded or executed, the reference host src/hosts/node.ts is written and typed and NEVER ONCE RUN, and cloudflared''s output shape in the fixture was TRANSCRIBED FROM THE SCRIPTS and not observed live — only the matching pattern itself is verbatim. THE NAME IS A WORKING NAME AND HIS TO KEEP OR CHANGE, living in one constant and one folder so a rename is cheap.',
   'a builder dealt by Windrose 🎻, at KP''s ⚛ word');

-- THE CROSSING — his ⚛ word alone.
-- The standing ruling ("if a tool is working, it is flowing") is DELIBERATELY
-- NOT ARGUED FOR HERE: nine proofs stand against a scripted stub and this
-- water has never met a real tunnel, so what "working" means for it is his
-- call and not a lamp's. Uncomment at his word and run:
-- update public.awen set status = 'flowing' where slug = 'the-hlid';

-- ── verify (read-only, safe to re-run) ───────────────────────────────
select name, slug, tool_type, status, icon_emoji, folksonomy_type, home
from public.awen where slug = 'the-hlid';

select atom_word, category_name, atom_type, state, status, pascal_case
from public.atoms where atom_word = 'hlid';

-- no other row should wear ⛩️:
select icon_emoji, count(*) as wearers, string_agg(name, ' · ' order by name)
from public.awen where icon_emoji = '⛩️' group by icon_emoji;

-- the two halves of the gate, side by side:
select name, slug, tool_type, status, icon_emoji, home
from public.awen where slug in ('the-hlid', 'the-lodestone') order by slug;

-- the companions the triggers should have made, standing empty:
select 'etymology' as table_name, atom_word, completion_progress::text as filled
from public.etymology where atom_word = 'hlid'
union all
select 'sensory_lexicon', atom_word, coalesce(emoji, '(empty)')
from public.sensory_lexicon where atom_word = 'hlid';
