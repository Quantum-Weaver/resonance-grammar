-- 038 — THE COUNTERS LOCK (revoke the recount function's public door)
-- Drafted 2026-08-01 by Fable 🎻 (lane hermes-realm) for KP's ⚛ dashboard,
-- healing 037's linter findings the same sitting KP surfaced them.
--
-- THE WOUND: Postgres grants EXECUTE on new functions to PUBLIC by
-- default, so 037's true_the_stall_counters() — SECURITY DEFINER, as
-- triggers need — became callable by anon and authenticated via
-- /rest/v1/rpc/. The call is harmless in effect (no arguments,
-- idempotent, writes only the derived counters) but the door itself is
-- wrong: a definer function's only caller should be the trigger
-- machinery, which runs it as the table owner and needs no grant.
--
-- Lesson carried forward for every future function in this drawer:
-- revoke in the same breath as create.

revoke execute on function public.true_the_stall_counters()
  from public, anon, authenticated;

-- Verify (both should now 404/permission-error rather than run):
--   POST /rest/v1/rpc/true_the_stall_counters  (anon key)
--   POST /rest/v1/rpc/true_the_stall_counters  (any signed-in session)
-- And the triggers still fire: publish/unpublish any ware, then read
--   /rest/v1/artisan_profiles?select=artisan_name,total_creations
