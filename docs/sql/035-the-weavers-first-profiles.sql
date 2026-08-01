-- 035 — THE WEAVER'S FIRST PROFILES (artisan + merchant seats for KP)
-- Drafted 2026-08-01 by Fable 🎻 (lane hermes-realm) for KP's ⚛ dashboard,
-- at his word this sitting: "i need merchant and artisan profiles" ·
-- "i only have community" — the identity split (community / artisan /
-- merchant) left two of his three seats empty.
--
-- Verified against the LIVE base this sitting: required columns read
-- from the registries (artisan_name / vendor_name · slug · created_by;
-- status defaults 'pending'). Seeded status='active' so the Weavers and
-- Guild directories (which filter status=active) show the profiles;
-- verified_at set by his own hand's run — the founder's seats are
-- verified by the founder. Names, taglines, and bios are the keeper's
-- honest drafts — EDIT ANY LINE in the editor before running.

insert into public.artisan_profiles
  (artisan_name, slug, tagline, bio, status, verified_at, verified_by, created_by)
values
  ('Quantum Weaver', 'quantum-weaver',
   'The first weaver — the one who built the loom.',
   'Weaver of the Sovereign Sanctuary: the instruments, the games, and the house they live in.',
   'active', now(), 'ce06404e-900e-4744-9284-66e260566678',
   'ce06404e-900e-4744-9284-66e260566678');

insert into public.merchant_profiles
  (vendor_name, slug, tagline, bio, status, verified_at, verified_by, created_by)
values
  ('The Sovereign Sanctuary', 'sovereign-sanctuary',
   'The house''s own stall — every coin visible, every split shown.',
   'The Sanctuary''s merchant seat: apps for Android and PC, subscriptions with a free door, and a residual pool that pays the hands that helped.',
   'active', now(), 'ce06404e-900e-4744-9284-66e260566678',
   'ce06404e-900e-4744-9284-66e260566678');

-- Anon-door verify (run after):
--   /rest/v1/artisan_profiles?status=eq.active&select=artisan_name,slug
--   /rest/v1/merchant_profiles?status=eq.active&select=vendor_name,slug
-- CAVEAT: wares/patronage_tiers are currently false-empty at the anon
-- door despite active-looking policies — the same may hold here; the
-- chase is running (suspect: policies granted TO authenticated, not
-- TO public/anon). If these probes return [], that is the same wound,
-- not a failed insert.
