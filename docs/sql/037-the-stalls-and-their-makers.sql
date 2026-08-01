-- 037 — THE STALLS AND THEIR MAKERS (link wares/works to profiles; true the counters)
-- Drafted 2026-08-01 by Fable 🎻 (lane hermes-realm) for KP's ⚛ dashboard,
-- at his word this sitting: "we will need to link the products to the
-- profiles somehow" · "numbers still say 0."
--
-- THE WOUND, verified live: wares and works carry NO profile link —
-- makers are known only by user id (created_by), which cannot say which
-- HAT the user wore (artisan or merchant). And total_creations /
-- total_products are counter columns with no machinery — nothing has
-- ever written them.
--
-- THE SHAPE: a ware stands at a stall — made by an artisan, sold by a
-- merchant, either or both. A work belongs to its artisan (works are
-- the making; hermes-social's own cleave). Counters become TRUE and
-- STAY true via one recount function + statement-level triggers (full
-- recount per change — free at Bazaar scale; revisit if the Guild ever
-- holds thousands).

-- 1 · The link columns
alter table public.wares
  add column artisan_profile_id uuid references public.artisan_profiles(id),
  add column merchant_profile_id uuid references public.merchant_profiles(id);

alter table public.works
  add column artisan_profile_id uuid references public.artisan_profiles(id);

-- 2 · The four apps take their places: made by Quantum Weaver (artisan),
--     sold at The Sovereign Sanctuary (merchant)
update public.wares
set artisan_profile_id  = (select id from public.artisan_profiles  where slug = 'quantum-weaver'),
    merchant_profile_id = (select id from public.merchant_profiles where slug = 'sovereign-sanctuary')
where slug in ('bubble-game', 'resonance-echoes', 'resonance-compass', 'resonance-lantern');

-- 3 · The counter machinery: one recount, triggered by any change
create or replace function public.true_the_stall_counters()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  update public.artisan_profiles ap
  set total_creations =
      (select count(*) from public.wares w
        where w.artisan_profile_id = ap.id and w.status = 'published')
    + (select count(*) from public.works k
        where k.artisan_profile_id = ap.id and k.status = 'published');

  update public.merchant_profiles mp
  set total_products =
      (select count(*) from public.wares w
        where w.merchant_profile_id = mp.id and w.status = 'published');

  return null;
end;
$$;

create trigger true_stall_counters_on_wares
  after insert or update or delete on public.wares
  for each statement execute function public.true_the_stall_counters();

create trigger true_stall_counters_on_works
  after insert or update or delete on public.works
  for each statement execute function public.true_the_stall_counters();

-- 4 · True the numbers once, now (the triggers keep them true after)
update public.artisan_profiles ap
set total_creations =
    (select count(*) from public.wares w
      where w.artisan_profile_id = ap.id and w.status = 'published')
  + (select count(*) from public.works k
      where k.artisan_profile_id = ap.id and k.status = 'published');

update public.merchant_profiles mp
set total_products =
    (select count(*) from public.wares w
      where w.merchant_profile_id = mp.id and w.status = 'published');

-- Anon-door verify (run after; expects 4 and 4):
--   /rest/v1/artisan_profiles?select=artisan_name,total_creations
--   /rest/v1/merchant_profiles?select=vendor_name,total_products
