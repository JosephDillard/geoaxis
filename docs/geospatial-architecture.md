# Geospatial Architecture

The status app uses a split responsibility model for geospatial data:

- Grails and GORM continue to read and write status attributes in the operational tables.
- PostGIS stores geometry in `geom` columns on those same operational tables.
- GeoServer publishes those tables as WFS layers with GeoJSON output.
- MapLibre GL JS renders the GeoJSON layers in the browser at `/GeoStatusBoard/map`.

This keeps the existing Grails domains stable while allowing open source GIS services to own spatial querying and map delivery.

## Recommended Stack

- PostgreSQL with PostGIS for spatial storage.
- GeoServer for OGC services, especially WFS GeoJSON.
- MapLibre GL JS for the in-app 2D map viewer.

CesiumJS can be added later for 3D terrain, 3D Tiles, or globe-focused workflows. For the current dashboard and airport/airfield status use case, MapLibre is the lighter first map surface.

## Database Setup

Run the SQL guide after the operational tables exist:

```powershell
psql -d GeoStatusBoard -f docs/postgis-spatialization.sql
```

The SQL adds a `geom geometry(Geometry, 4326)` column and a GiST spatial index to the operational airport, airfield, asset, utility, and incident tables when those tables exist.

For the bundled development sample records, the SQL also fills approximate New Mexico point and polygon geometries so GeoServer and the map view work immediately in local Docker-based testing. Replace those sample locations with authoritative geometry before using production data.

Geometry population is data-source specific. Examples:

```sql
UPDATE public.navigationalaid
SET geom = ST_SetSRID(ST_MakePoint(longitude, latitude), 4326)
WHERE geom IS NULL
  AND longitude IS NOT NULL
  AND latitude IS NOT NULL;
```

```sql
UPDATE public.index_airfields target
SET geom = source.geom
FROM public.airfield_boundaries source
WHERE target.site_name = source.site_name
  AND target.geom IS NULL;
```

## GeoServer Setup

1. Create a GeoServer workspace named `gsb`.
2. Create a PostGIS store pointed at the status app database.
3. Publish the operational tables listed in `docs/postgis-spatialization.sql`.
4. Confirm WFS GeoJSON works. Example:

```text
http://localhost:8081/geoserver/gsb/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=gsb:index_airfields&outputFormat=application/json
```

5. If GeoServer exposes different layer or attribute names, update `geo.layers` in `grails-app/conf/application.yml`.

## Application Map View

The in-app map view is:

```text
/GeoStatusBoard/map
```

Existing GSP links can open a filtered layer by passing:

```text
/GeoStatusBoard/map?layer=airportStatus&field=site_name&value=Kirtland%20AFB
```

The map page builds a WFS request to GeoServer, loads GeoJSON into MapLibre, adds point, line, and polygon layers, fits to returned features, and displays feature attributes in a popup.

## Configuration

Geospatial configuration lives under `geo` in:

```text
grails-app/conf/application.yml
```

Important keys:

- `geo.geoserver.wfsUrl` - GeoServer WFS endpoint.
- `geo.geoserver.defaultSrs` - Target spatial reference, default `EPSG:4326`.
- `geo.viewer.mapLibreJsUrl` and `geo.viewer.mapLibreCssUrl` - MapLibre assets.
- `geo.viewer.osmTilesUrl` - Raster basemap tile URL.
- `geo.layers` - App layer key to GeoServer feature type and filter fields.
