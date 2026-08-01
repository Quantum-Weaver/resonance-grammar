-- 034 — THE FIRST WARES (the Tapestry's first threads, and the three tiers)
-- Drafted 2026-08-01 by Fable 🎻 (lane hermes-realm) for KP's ⚛ dashboard,
-- at his word this sitting: "we can seed some things for me. the bubble
-- game for one, and the resonance echoes (free), resonance compass(3.33),
-- resonance lantern (free). and 3 subscription tiers." Tier names and
-- amounts given by his own hand: Community free · Ally 3.33 · Wanderer
-- 11.11. Bubble Game free at his word (the zero-default confirmed).
--
-- Verified against the LIVE base this sitting: wares is empty (anon door),
-- patronage_tiers is empty (secret door), and the column shapes below
-- match the self-knowing registries. created_by is the Quantum Weaver's
-- own id (community_profiles, read live).
--
-- Descriptions are the keeper's honest one-liners — edit any line in the
-- editor before running; the words are yours. Plain SQL, no DO blocks.

-- 1 · The four wares (all digital, all published; available for Android
--     and PC — KP's word this sitting — carried as metadata.formats)
insert into public.wares
  (name, slug, description, ware_type, pricing_model, price,
   residual_pool_percent, status, icon_emoji, metadata, created_by)
values
  ('The Bubble Game', 'bubble-game',
   'The gentle collecting game — thirty bubbles across five rarities, with every safeguard sovereign: your own limits, your own pace, and rarity freed for every tier.',
   'digital', 'free', null, 30, 'published', '🫧',
   '{"formats": ["android", "pc"]}'::jsonb,
   'ce06404e-900e-4744-9284-66e260566678'),
  ('Resonance Echoes', 'resonance-echoes',
   'The emoji-lexicon instrument — speak in resonance. Shipped, and freely given.',
   'digital', 'free', null, 30, 'published', '🌀',
   '{"formats": ["android", "pc"]}'::jsonb,
   'ce06404e-900e-4744-9284-66e260566678'),
  ('Resonance Compass', 'resonance-compass',
   'The direction-finding instrument. v2 shipped; the Musician''s Compass walks ahead.',
   'digital', 'fixed', 3.33, 30, 'published', '🧭',
   '{"formats": ["android", "pc"]}'::jsonb,
   'ce06404e-900e-4744-9284-66e260566678'),
  ('Resonance Lantern', 'resonance-lantern',
   'A light for the walk — freely given.',
   'digital', 'free', null, 30, 'published', '🏮',
   '{"formats": ["android", "pc"]}'::jsonb,
   'ce06404e-900e-4744-9284-66e260566678');

-- 2 · The three tiers (Community free · Ally 3.33 · Wanderer 11.11)
insert into public.patronage_tiers
  (name, slug, description, amount, currency, display_order, status, created_by)
values
  ('Community', 'community',
   'The free door — the Sanctuary is yours to live in. Dignity is not earned.',
   0, 'USD', 0, 'published',
   'ce06404e-900e-4744-9284-66e260566678'),
  ('Ally', 'ally',
   'A hand on the covenant — 3.33 a month toward the pools that hold everyone.',
   3.33, 'USD', 1, 'published',
   'ce06404e-900e-4744-9284-66e260566678'),
  ('Wanderer', 'wanderer',
   'The far walker — 11.11 a month, carrying the Sanctuary to whoever finds it next.',
   11.11, 'USD', 2, 'published',
   'ce06404e-900e-4744-9284-66e260566678');

-- Anon-door verify (run after; expects the four wares and three tiers):
--   /rest/v1/wares?status=eq.published&select=name,pricing_model,price
--   /rest/v1/patronage_tiers?select=name,amount,display_order&order=display_order
