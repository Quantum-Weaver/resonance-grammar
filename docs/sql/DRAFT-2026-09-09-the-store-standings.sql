-- DRAFT ONLY. Nothing here has been run. Runs at KP's hand alone.
-- Register read: public.beacons (table, not the view), 40 rows, anon door, 2026-09-09.
-- Every statement carries WHERE slug =. No DELETE. status, beacon_type, app_id,
-- testing_url, published_* and store_notes untouched.
-- Vocabulary: 043-the-beacons.sql lines 93-106.

-- (A) available_on -- release/ holds MSI + NSIS + APK + AAB; src-tauri/gen/android present
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-echoes';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-compass';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-hearth';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-lantern';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-sirens';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-sistrum';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-bubbles';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-skapa';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-khoros';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-tarocchi';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-cruthu';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-sceal';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-ardan';
update public.beacons set available_on = '{android,windows}' where slug = 'resonance-scribe';

-- (B) Google Play -- closed tracks
-- resonance-echoes/docs/listings/PLAY-TRACK.md lines 14, 175; docs/RELEASE.md line 7
update public.beacons
   set play_status = 'closed_testing',
       play_testing_version = '1.4.1',
       play_price_cents = 0
 where slug = 'resonance-echoes';

-- resonance-sirens/docs/listings/PLAY-TRACK.md line 120
update public.beacons
   set play_status = 'closed_testing',
       play_price_cents = 0
 where slug = 'resonance-sirens';
-- release on the track unconfirmed by the Console; v0.1.1 is the only signed AAB of 2026-08-23
-- update public.beacons set play_testing_version = '0.1.1' where slug = 'resonance-sirens';

-- resonance-bubbles/docs/PLAY-TRACK.md lines 23, 113
update public.beacons
   set play_status = 'closed_testing',
       play_price_cents = 222
 where slug = 'resonance-bubbles';

-- resonance-lantern/docs/PLAY-TRACK.md lines 42, 168; README.md line 77
update public.beacons
   set play_status = 'closed_testing',
       play_price_cents = 111
 where slug = 'resonance-lantern';

-- resonance-compass/docs/GALAXY-LISTING.md lines 7-10
update public.beacons
   set play_status = 'closed_testing'
 where slug = 'resonance-compass';

-- (C) packs drafted, nothing submitted -- 'planned'
-- resonance-echoes/docs/listings/GALAXY-LISTING.md line 142; MSSTORE-LISTING.md line 128;
-- AUDHDITIES-LISTING.md line 120; price: MSSTORE-LISTING.md line 91
update public.beacons
   set galaxy_status = 'planned',
       galaxy_price_cents = 0,
       microsoft_status = 'planned',
       microsoft_price_cents = 0,
       audhdities_status = 'planned'
 where slug = 'resonance-echoes';

-- resonance-lantern/docs/GALAXY-LISTING.md
update public.beacons set galaxy_status = 'planned' where slug = 'resonance-lantern';

-- resonance-compass/docs/GALAXY-LISTING.md
update public.beacons set galaxy_status = 'planned' where slug = 'resonance-compass';

-- resonance-cruthu/docs/PLAY.md line 411
update public.beacons set play_status = 'planned' where slug = 'resonance-cruthu';

-- resonance-hearth/docs/GALAXY-LISTING.md lines 3-6 carry a hold note; left to KP
-- update public.beacons set galaxy_status = 'planned' where slug = 'resonance-hearth';

-- VERIFY
select slug, available_on, play_status, play_testing_version, play_price_cents,
       galaxy_status, galaxy_price_cents, microsoft_status, microsoft_price_cents,
       audhdities_status, audhdities_price_cents
  from public.beacons
 where slug in ('resonance-echoes','resonance-sirens','resonance-bubbles','resonance-lantern',
                'resonance-compass','resonance-cruthu','resonance-hearth')
 order by slug;

select count(*) filter (where play_status = 'closed_testing') as on_closed_track,
       count(*) filter (where cardinality(available_on) > 0)  as with_platforms
  from public.beacons;
-- expect: on_closed_track 5 . with_platforms 14
