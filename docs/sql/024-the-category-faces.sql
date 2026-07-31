-- ============================================================
-- 024 — THE CATEGORY FACES (descriptions + icon emoji, all 25)
-- resonance-knowledge Supabase (qdzerwmsbksuhvczlwli)
-- Drafted by Fable (lane grammar), 2026-07-30, at KP's ⚛ word:
--   "we need to fill in the descriptions for all 25 categories
--    please" — and, the same breath: "and icon_emoji for each row."
-- Ground (anon door, this sitting): all 25 rows born 2026-05-10,
-- description and icon_emoji null on every one. Every description
-- below is grounded in a live sample of the atoms the category
-- actually holds (sampling script in the session record) — told,
-- not guessed. Emojis are 25 distinct faces; the emoji-definition
-- law holds: each bridges neurotypes by SHOWING the category's
-- nature, not decorating it.
-- Noted in passing, untouched: 14 atoms carry no category
-- (collective · component · connective · guardian · individual ·
-- oracle · parallel · partner · partnership · protective ·
-- relationship · seer · system · translator) — a small sorting
-- sitting whenever KP wills it.
-- KP's eye rules every line — edit freely before running.
-- Visual-run method: read each block, run top to bottom, one pass.
-- ============================================================

update public.categories set icon_emoji = '🧠', description =
  'Words for minds and their inner weather — being, awareness, flow, wisdom. The vocabulary of what it is like to be.'
  where name = 'consciousness';

update public.categories set icon_emoji = '📚', description =
  'How the house knows things — learning, inference, method, provenance. The verbs and nouns of understanding itself.'
  where name = 'knowledge';

update public.categories set icon_emoji = '🌈', description =
  'The channels of perception — sight, sound, touch, motion — and the visual language interfaces speak through them.'
  where name = 'sensory';

update public.categories set icon_emoji = '💬', description =
  'Words that carry meaning between minds — signals, dialogue, requests, invitations, blessings. Everything that crosses from one to another.'
  where name = 'communication';

update public.categories set icon_emoji = '🏠', description =
  'The bodies and rooms a mind lives in — vessels, chambers, homes, studios. The Sanctuary''s own spaces, by name.'
  where name = 'vessel';

update public.categories set icon_emoji = '🎁', description =
  'Value in motion — gifts, resources, assets, residuals. The house''s economy of circulation, never extraction.'
  where name = 'economics';

update public.categories set icon_emoji = '⚖️', description =
  'The laws and charters that order the house — sovereignty, standards, consent, enforcement. Rule as care, not control.'
  where name = 'governance';

update public.categories set icon_emoji = '✨', description =
  'The making verbs — create, generate, seed, merge, enhance. How new things enter the world.'
  where name = 'creation';

update public.categories set icon_emoji = '🎭', description =
  'Hats a being can wear — librarian, navigator, herald, companion. Function named as a role, never as a worth.'
  where name = 'roles';

update public.categories set icon_emoji = '🚦', description =
  'The states a thing can be in — done, empty, verified, available. The words progress reports itself with.'
  where name = 'status';

update public.categories set icon_emoji = '🗃️', description =
  'Ways of gathering many into one — archives, registries, inventories, kits. The shelving words.'
  where name = 'collections';

update public.categories set icon_emoji = '⏳', description =
  'Time''s measures and moments — intervals, dates, seasons of now and later. When, in every form.'
  where name = 'timeframe';

update public.categories set icon_emoji = '📏', description =
  'Sizing and judging — estimates, heights, limits, optima. The words that put honest numbers on things.'
  where name = 'measurement';

update public.categories set icon_emoji = '📄', description =
  'The stuff itself — documents, fragments, lyrics, recordings. What the house holds, as distinct from how.'
  where name = 'content';

update public.categories set icon_emoji = '⚙️', description =
  'The machinery words — controllers, sync, utilities, configuration. How the workings name their own parts.'
  where name = 'system';

update public.categories set icon_emoji = '🏗️', description =
  'What everything else stands on — foundations, cores, modules, pillars. The load-bearing layer.'
  where name = 'infrastructure';

update public.categories set icon_emoji = '💾', description =
  'Information in its raw forms — databases, exports, variables, snapshots. The substance the systems move.'
  where name = 'data';

update public.categories set icon_emoji = '🗺️', description =
  'Places and directions — east and west, islands and spaces. Where, in every form.'
  where name = 'geography';

update public.categories set icon_emoji = '🌐', description =
  'The world beyond the walls — outside platforms and environments, named so the house can face them on its own terms.'
  where name = 'external';

update public.categories set icon_emoji = '🔒', description =
  'What stays a vessel''s own — the personal, the hidden, the sensitive. Privacy as architecture, not afterthought.'
  where name = 'private';

update public.categories set icon_emoji = '🪞', description =
  'The marks of being someone — names, handles, signatures, traits. How a self shows itself and stays itself.'
  where name = 'identity';

update public.categories set icon_emoji = '🪁', description =
  'The destination words — games, quests, celebration. Play is not a break from the work; it is what the work is for.'
  where name = 'play';

update public.categories set icon_emoji = '🔑', description =
  'The keys and permissions — access, tokens, authentication. Who may open which door, recorded plainly.'
  where name = 'grants';

update public.categories set icon_emoji = '🛡️', description =
  'The boundary words — filters, exclusions, protections. Boundaries as safety, the smallest vocabulary in the Grammar.'
  where name = 'moderation';

update public.categories set icon_emoji = '🔄', description =
  'Change over time — phases, evolution, restoration, rollback. How things grow, mend, and move on.'
  where name = 'lifecycle';

-- ─── Verify after running: through the anon door ───
-- select count(*) from categories where description is not null;   → 25
-- select count(*) from categories where icon_emoji is not null;    → 25
-- select name, icon_emoji from categories order by sort_order;     → 25 distinct faces
