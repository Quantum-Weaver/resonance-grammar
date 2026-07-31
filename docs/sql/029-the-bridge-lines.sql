-- ============================================================
-- 029 — THE BRIDGE LINES (seven external-dependency tools, given
--        their full grammar: atom · family · molecules · junctions
--        · tool rows — every place the syntax lives)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane awen, second lamp), 2026-07-31, at KP's
-- ⚛ word, verbatim: "the bridge has completed creating the tools
-- for our extrenal dependencies, we need to learn about them,
-- register them here with bridge as home, and make certain the
-- syntaxt is represented in all the places in the grammar.
-- (airtable is not in use, server is the bridge server."
-- Learned whole from resonance-bridge/src (each file read entire):
-- seven LINES on the bridge's MCP switchboard, every one read-only
-- with its wards held in CODE, not convention —
--   · the Grammar line (grammar.ts, 7 windows — the living
--     knowledge base through the anon door; secret never enters)
--   · the Vercel line (vercel.ts, 4 windows — env-var NAMES only,
--     values stripped before serialization)
--   · the Resend line (resend.ts, 4 windows — deliberately NO
--     send tool: an email is outward speech, a consent gate)
--   · the Stripe line (stripe.ts, 10 windows — live-mode
--     restricted key; 403 = a finding about scopes, never a crash;
--     customers carry the privacy stripe: ids and dates only)
--   · the GitHub line (github.ts, 7 windows — HOUSE_GITHUB_PAT
--     consumed deliberately or not at all; webhook URLs redacted
--     to scheme+host; secrets come back as NAMES by API law)
--   · the Discord line (discord.ts, 7 windows — no send by law;
--     webhook token/url stripped in code; read_channel carries
--     the carrier law: quote verbatim, never silently summarize)
--   · the Supabase line (supabase.ts, 7 windows — the most warded:
--     SELECT-only guard in code, auth-config allowlist, the
--     false-empty detector across every table)
-- Excluded per KP's parenthesis: airtable (not in use) · server.ts
-- (the bridge server itself — the switchboard, not a line).
-- THE GRAMMAR GROUND (verified anon-door this sitting): eight of
-- nine words already live as atoms (bridge · github · grammar ·
-- line · resend · stripe · supabase · vercel · window); only
-- 'discord' is born below, joining its kin in infrastructure.
-- No Line molecule exists; no Bridge family exists. Both are made.
-- Molecules land SUBMITTED per the editorial law; junctions by
-- hand per the base's own pattern; tools land imagined, family
-- Bridge, home = the bridge (KP's word). Gates ride at the foot.
-- Visual-run method: run parts top to bottom, one pass; gates
-- separate, KP's eye and word.
-- ============================================================

-- ── Part 1 · the missing atom: discord joins its kin ──────────

insert into public.atoms
  (atom_word, definition, atom_type, weight, affinity, valence, state,
   category, category_name, status)
values
  ('discord',
   'A gathering place of voices in named rooms — where a community speaks and its words remain. The name is borrowed irony: the platform called discord is where accord is practiced.',
   'root', 5, 5, 1, 'static',
   (select id from public.categories where name = 'infrastructure'),
   'infrastructure', 'published');

-- ── Part 2 · the Bridge family (folksonomy row) ───────────────

insert into public.folksonomies (name, purpose, status, created_by)
values
  ('Bridge',
   'The connections realm''s lines — warded read-only windows on the house''s external dependencies, served by the bridge''s MCP switchboard; every ward held in code, not convention.',
   'growing', 'KP + Fable (lane awen, at the bridge''s completion)');

-- ── Part 3 · seven Line molecules (submitted; KP's eye publishes) ──

insert into public.molecules
  (name, molecule_type, naming_convention, definition, bond_type,
   atom_words, derived_name, domain, status)
values
  ('GrammarLine', 'concept', 'PascalCase',
   'The bridge''s window on the living Grammar — atoms with their senses, emoji and folksonomies, molecules, organisms, and search, read through the same public door a stranger would use.',
   'covalent', 'grammar, line', 'GrammarLine', 'infrastructure', 'submitted'),
  ('VercelLine', 'concept', 'PascalCase',
   'The bridge''s window on the hosting — projects, deployments, domains, and environment-variable names with the values stripped in code before any reply forms.',
   'covalent', 'vercel, line', 'VercelLine', 'infrastructure', 'submitted'),
  ('ResendLine', 'concept', 'PascalCase',
   'The bridge''s window on the email house — sending domains, key names, audiences, broadcasts. Deliberately no send: an email is outward speech, and a send is a consent gate, never a convenience.',
   'covalent', 'resend, line', 'ResendLine', 'infrastructure', 'submitted'),
  ('StripeLine', 'concept', 'PascalCase',
   'The bridge''s window on the merchant account — profile, products, prices, links, sessions, events, balance, charges, and customers behind the privacy stripe: ids and dates only, names and emails die in code.',
   'covalent', 'stripe, line', 'StripeLine', 'infrastructure', 'submitted'),
  ('GitHubLine', 'concept', 'PascalCase',
   'The bridge''s window on the forge''s host — token health with its expiry watch, the repo census, releases with their download counts, Actions names, webhooks redacted to scheme and host.',
   'covalent', 'github, line', 'GitHubLine', 'infrastructure', 'submitted'),
  ('DiscordLine', 'concept', 'PascalCase',
   'The bridge''s window on the gathering place — server, channels, roles, webhooks with their secrets stripped, and channel reading under the carrier law: words quoted verbatim, never silently summarized.',
   'covalent', 'discord, line', 'DiscordLine', 'infrastructure', 'submitted'),
  ('SupabaseLine', 'concept', 'PascalCase',
   'The bridge''s window on the dashboard itself — projects, auth configuration through an allowlist, one SELECT at a time by covenant held in code, and the false-empty detector across every table.',
   'covalent', 'supabase, line', 'SupabaseLine', 'infrastructure', 'submitted');

-- ── Part 4 · the junctions, by hand (x modifier + line core_type) ──

insert into public.molecule_atoms (molecule_id, atom_id, position, role, status)
values
  ((select id from public.molecules where name = 'GrammarLine'),
   (select id from public.atoms where atom_word = 'grammar'), 1, 'modifier', 'submitted'),
  ((select id from public.molecules where name = 'GrammarLine'),
   (select id from public.atoms where atom_word = 'line'), 2, 'core_type', 'submitted'),
  ((select id from public.molecules where name = 'VercelLine'),
   (select id from public.atoms where atom_word = 'vercel'), 1, 'modifier', 'submitted'),
  ((select id from public.molecules where name = 'VercelLine'),
   (select id from public.atoms where atom_word = 'line'), 2, 'core_type', 'submitted'),
  ((select id from public.molecules where name = 'ResendLine'),
   (select id from public.atoms where atom_word = 'resend'), 1, 'modifier', 'submitted'),
  ((select id from public.molecules where name = 'ResendLine'),
   (select id from public.atoms where atom_word = 'line'), 2, 'core_type', 'submitted'),
  ((select id from public.molecules where name = 'StripeLine'),
   (select id from public.atoms where atom_word = 'stripe'), 1, 'modifier', 'submitted'),
  ((select id from public.molecules where name = 'StripeLine'),
   (select id from public.atoms where atom_word = 'line'), 2, 'core_type', 'submitted'),
  ((select id from public.molecules where name = 'GitHubLine'),
   (select id from public.atoms where atom_word = 'github'), 1, 'modifier', 'submitted'),
  ((select id from public.molecules where name = 'GitHubLine'),
   (select id from public.atoms where atom_word = 'line'), 2, 'core_type', 'submitted'),
  ((select id from public.molecules where name = 'DiscordLine'),
   (select id from public.atoms where atom_word = 'discord'), 1, 'modifier', 'submitted'),
  ((select id from public.molecules where name = 'DiscordLine'),
   (select id from public.atoms where atom_word = 'line'), 2, 'core_type', 'submitted'),
  ((select id from public.molecules where name = 'SupabaseLine'),
   (select id from public.atoms where atom_word = 'supabase'), 1, 'modifier', 'submitted'),
  ((select id from public.molecules where name = 'SupabaseLine'),
   (select id from public.atoms where atom_word = 'line'), 2, 'core_type', 'submitted');

-- ── Part 5 · seven tool rows (imagined · family Bridge · home the bridge) ──

insert into public.tools
  (name, slug, tool_type, definition, home, status, molecule_id, folksonomy_type, story, created_by)
values
  ('The Grammar Line', 'the-grammar-line', 'witness',
   'Seven windows on the living Grammar through the anon door — query_atom (senses embedded), query_sense, query_emoji, query_folksonomy (an app''s whole lexicon in one call), query_molecule, query_organism, search_knowledge. The secret key never enters the file.',
   'resonance-bridge/src/grammar.ts', 'imagined',
   (select id from public.molecules where name = 'GrammarLine'), 'Bridge',
   'The first line on the switchboard — the living knowledge base served to any MCP client the way a stranger would read it.',
   'KP + Fable (the bridge''s hands)'),
  ('The Vercel Line', 'the-vercel-line', 'witness',
   'Four windows on the hosting — projects with production state, deployments with branch and commit, domains with verification, and env-var NAMES with the values stripped in code before serialization.',
   'resonance-bridge/src/vercel.ts', 'imagined',
   (select id from public.molecules where name = 'VercelLine'), 'Bridge',
   'VERCEL_TOKEN''s first consumer, built to the vercel-expert''s commission — the keys-map''s names-only census made an instrument.',
   'KP + Fable (the bridge''s hands)'),
  ('The Resend Line', 'the-resend-line', 'witness',
   'Four windows on the email house — sending domains with verification, API-key names, audiences, broadcasts. Deliberately no send tool: a send is its own commission with KP''s word, never a convenience.',
   'resonance-bridge/src/resend.ts', 'imagined',
   (select id from public.molecules where name = 'ResendLine'), 'Bridge',
   'Built to the resend-expert''s commission; the honest note rides the code: Resend''s API lists no sent-mail history, and the map says so rather than guess.',
   'KP + Fable (the bridge''s hands)'),
  ('The Stripe Line', 'the-stripe-line', 'witness',
   'Ten windows on the merchant account, live-mode — profile, webhook endpoints, products, prices, payment links, checkout sessions, the events audit trail, balance, charges, and customers behind the privacy stripe (ids and dates only). A 403 reports as a scope finding, never a crash.',
   'resonance-bridge/src/stripe.ts', 'imagined',
   (select id from public.molecules where name = 'StripeLine'), 'Bridge',
   'Built to the stripe-expert''s commission on the live restricted key — every read door probed open 2026-07-31; writes untested and unwanted.',
   'KP + Fable (the bridge''s hands)'),
  ('The GitHub Line', 'the-github-line', 'witness',
   'Seven windows on the forge''s host — token health with the 90-day expiry watch, the repo census with visibility, deep repo status, Actions workflow and secret NAMES, webhooks redacted to scheme+host, releases with download counts, two-week traffic.',
   'resonance-bridge/src/github.ts', 'imagined',
   (select id from public.molecules where name = 'GitHubLine'), 'Bridge',
   'Built to the github-expert''s commission; the key is HOUSE_GITHUB_PAT by law — GitHub reserves GITHUB_TOKEN, so the house name means the key is consumed deliberately or not at all.',
   'KP + Fable (the bridge''s hands)'),
  ('The Discord Line', 'the-discord-line', 'witness',
   'Seven windows on the gathering place — bot identity, server overview, the channel street map, roles, webhooks with token and url stripped in code, the emoji-and-sticker census against the free caps, and channel reading under the carrier law (verbatim, never silently summarized).',
   'resonance-bridge/src/discord.ts', 'imagined',
   (select id from public.molecules where name = 'DiscordLine'), 'Bridge',
   'Built to the discord-expert''s commission; no send tool by law — a post is outward speech, gated forever at KP''s word.',
   'KP + Fable (the bridge''s hands)'),
  ('The Supabase Line', 'the-supabase-line', 'witness',
   'Seven windows on the dashboard itself, the most warded line — the project shelf with pause-watch, auth config through an allowlist (smtp_pass reduced to set:true/false), one SELECT at a time by code covenant, the false-empty detector across all tables, advisor lamps, function and bucket censuses.',
   'resonance-bridge/src/supabase.ts', 'imagined',
   (select id from public.molecules where name = 'SupabaseLine'), 'Bridge',
   'Built to the supabase-expert''s commission; SUPABASE_ACCESS_TOKEN is the most powerful key in the house, so every guard is code — writes stay KP''s dashboard hands, forever.',
   'KP + Fable (the bridge''s hands)');

-- ─── The publish, at KP's ⚛ eye (editorial law; all seven at once) ───
-- update molecules set status = 'published' where name in
--   ('GrammarLine','VercelLine','ResendLine','StripeLine','GitHubLine','DiscordLine','SupabaseLine');
-- update molecule_atoms set status = 'published'
--   where molecule_id in (select id from molecules where name in
--   ('GrammarLine','VercelLine','ResendLine','StripeLine','GitHubLine','DiscordLine','SupabaseLine'));

-- ─── The crossing, at KP's word alone (the lines stand built on the switchboard) ───
-- update tools set status = 'flowing' where folksonomy_type = 'Bridge';

-- ─── Verify after running, anon door ───
-- select atom_word, category_name, status from atoms where atom_word = 'discord';   → infrastructure · published
-- select name, status from folksonomies where name = 'Bridge';                      → growing
-- select name, status from tools where folksonomy_type = 'Bridge' order by name;    → seven rows
-- select name, status from molecules where name like '%Line';                       → visible once published
