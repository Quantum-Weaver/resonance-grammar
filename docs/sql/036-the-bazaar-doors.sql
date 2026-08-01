-- 036 — THE BAZAAR DOORS (make the roles agree with the policy names)
-- Drafted 2026-08-01 by Fable 🎻 (lane hermes-realm) for KP's ⚛ dashboard.
--
-- THE WOUND (chased live this sitting, pg_policies via the management
-- door): every "Anyone can view …" policy on the Bazaar's tables is
-- granted TO authenticated — so "anyone" means any LOGGED-IN anyone,
-- and the anon door shows an empty Tapestry, empty tiers, empty
-- directories no matter what is seeded. The 034/035 seeds are all
-- present (verified via the secret door); the anon door simply has no
-- key. Precedent: 009-library-doors healed the identical wound at the
-- Library ("the policies say 'Anyone'; make the roles agree" — run by
-- KP's hand, anon-verified, 2026-07-31).
--
-- THE MEDICINE: alter each misnamed policy's roles to public (keeps
-- its qual untouched — published/active filtering stands exactly as
-- written). DELIBERATELY NOT TOUCHED: "Anyone can view pending
-- artisans/merchants" — pending profiles are applicants, and whether
-- applicants are visible to the logged-out world is a consent
-- question (themis's registers), not a door-naming slip. They keep
-- their authenticated scope until ruled otherwise.
-- (033's participant policies already say TO public — no change.)

alter policy "Anyone can view published wares" on public.wares to public;

alter policy "Anyone can view published tiers" on public.patronage_tiers to public;

alter policy "Anyone can view published works" on public.works to public;

alter policy "Anyone can view active artisans" on public.artisan_profiles to public;

alter policy "Anyone can view active merchants" on public.merchant_profiles to public;

-- Anon-door verify (run after; each should now show its seeded rows):
--   /rest/v1/wares?status=eq.published&select=name,price
--   /rest/v1/patronage_tiers?select=name,amount
--   /rest/v1/artisan_profiles?status=eq.active&select=artisan_name
--   /rest/v1/merchant_profiles?status=eq.active&select=vendor_name
