-- PostGIS spatialization for the status app.
--
-- Grails continues to read and write business/status fields through GORM.
-- GeoServer reads the same tables and publishes the geom column to the map API.
--
-- Run this against the PostgreSQL database that backs the operational tables.
-- The table names match the suggested GeoServer layer names in application.yml.

CREATE EXTENSION IF NOT EXISTS postgis;

DO $$
BEGIN
    IF to_regclass('public.index_airfields') IS NOT NULL THEN
        ALTER TABLE public.index_airfields
            ADD COLUMN IF NOT EXISTS geom geometry(Geometry, 4326);
        CREATE INDEX IF NOT EXISTS index_airfields_geom_gix
            ON public.index_airfields USING GIST (geom);
    END IF;

    IF to_regclass('public.runwaydamagepolys') IS NOT NULL THEN
        ALTER TABLE public.runwaydamagepolys
            ADD COLUMN IF NOT EXISTS geom geometry(Geometry, 4326);
        CREATE INDEX IF NOT EXISTS runwaydamagepolys_geom_gix
            ON public.runwaydamagepolys USING GIST (geom);
    END IF;

    IF to_regclass('public.navigationalaid') IS NOT NULL THEN
        ALTER TABLE public.navigationalaid
            ADD COLUMN IF NOT EXISTS geom geometry(Geometry, 4326);
        CREATE INDEX IF NOT EXISTS navigationalaid_geom_gix
            ON public.navigationalaid USING GIST (geom);
    END IF;

    IF to_regclass('public.engineer_assets') IS NOT NULL THEN
        ALTER TABLE public.engineer_assets
            ADD COLUMN IF NOT EXISTS geom geometry(Geometry, 4326);
        CREATE INDEX IF NOT EXISTS engineer_assets_geom_gix
            ON public.engineer_assets USING GIST (geom);
    END IF;

    IF to_regclass('public.fire_fighting_assets') IS NOT NULL THEN
        ALTER TABLE public.fire_fighting_assets
            ADD COLUMN IF NOT EXISTS geom geometry(Geometry, 4326);
        CREATE INDEX IF NOT EXISTS fire_fighting_assets_geom_gix
            ON public.fire_fighting_assets USING GIST (geom);
    END IF;

    IF to_regclass('public.utility_status') IS NOT NULL THEN
        ALTER TABLE public.utility_status
            ADD COLUMN IF NOT EXISTS geom geometry(Geometry, 4326);
        CREATE INDEX IF NOT EXISTS utility_status_geom_gix
            ON public.utility_status USING GIST (geom);
    END IF;

    IF to_regclass('public.afim_event_point_bm0914') IS NOT NULL THEN
        ALTER TABLE public.afim_event_point_bm0914
            ADD COLUMN IF NOT EXISTS geom geometry(Geometry, 4326);
        CREATE INDEX IF NOT EXISTS afim_event_point_bm0914_geom_gix
            ON public.afim_event_point_bm0914 USING GIST (geom);
    END IF;

    IF to_regclass('public.afim_event_archive') IS NOT NULL THEN
        ALTER TABLE public.afim_event_archive
            ADD COLUMN IF NOT EXISTS geom geometry(Geometry, 4326);
        CREATE INDEX IF NOT EXISTS afim_event_archive_geom_gix
            ON public.afim_event_archive USING GIST (geom);
    END IF;
END $$;

-- After geometry is populated, publish these tables in GeoServer under the
-- configured workspace, then verify WFS returns GeoJSON:
--
-- /geoserver/gsb/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=gsb:index_airfields&outputFormat=application/json
--
-- If GeoServer advertises different attribute names, update geo.layers.*.idField
-- and geo.layers.*.labelField in grails-app/conf/application.yml.
