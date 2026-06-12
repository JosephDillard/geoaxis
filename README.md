# Status App

This repository contains a status app linkable to geospatial data for dashboard and geospatial view of airport and airfield status. The app brings airport status, airfield condition, support asset, and incident data into one Grails application that can be built and deployed as a single WAR file.

## Features

- Airport and airfield status dashboards.
- Geospatial links from status records for map-based airport and airfield views.
- In-app MapLibre map view backed by GeoServer WFS/GeoJSON layers.
- Editable lookup tables for dropdown text used by airport and incident workflows.
- Incident and facility damage tracking.
- Single deployable WAR with the application served from `/GeoStatusBoard`.

## Technology

- Grails 5.3.3
- Groovy 3.0.11
- GORM 7.3.3
- Gradle 7.6.6 wrapper
- Java 18 runtime
- Spring Security
- H2 development and test databases
- PostGIS and GeoServer for open source GIS deployment

## Project Layout

- `grails-app/` - Root status app configuration, security, home page, and shared application setup.
- `gsb-airport/` - Airport and airfield status module.
- `gsb-incidents/` - Incident and facility damage module.
- `build.gradle` - Root build, WAR packaging, and module dependencies.
- `settings.gradle` - Includes the airport and incident modules.

## Run Locally

Use the Gradle wrapper from the repository root:

```powershell
.\gradlew.bat :bootRun
```

The app loads at:

```text
http://localhost:8080/GeoStatusBoard
```

For development, the default seeded admin account is:

```text
username: admin
password: admin123
```

## Build

Build the full project:

```powershell
.\gradlew.bat clean build
```

The deployable WAR is created at:

```text
build/libs/GeoStatusBoard.war
```

## Deployment Context

The app is configured to run under:

```text
/GeoStatusBoard
```

For example:

```text
http://localhost:8080/GeoStatusBoard
```

## Lookup Data

Dropdown values are managed through editable lookup tables so an administrator can update display text without changing domain constraints or GSP files.

Useful admin routes include:

```text
/GeoStatusBoard/airportLookupOption
/GeoStatusBoard/incidentLookupOption
```

Airport and incident lookup bootstrapping seeds New Mexico airfields and airbases for development data.

## Geospatial View

The app includes a MapLibre-based geospatial view at:

```text
/GeoStatusBoard/map
```

GSP links can open the map with a selected layer and feature filter, for example:

```text
/GeoStatusBoard/map?layer=airportStatus&field=site_name&value=Kirtland%20AFB
```

The recommended open source GIS stack is:

- PostGIS for geospatial columns and spatial indexes in the operational database.
- GeoServer for publishing those tables as WFS GeoJSON layers.
- MapLibre GL JS for the browser map view.

The Grails domains continue to read and write regular status fields through GORM. GeoServer reads geometry from PostGIS and supplies the map API.

See:

- `docs/postgis-spatialization.sql`
- `docs/geospatial-architecture.md`

## Data Sources

The root app configures the default datasource plus named datasources used by the included modules:

- `dataSource` - Root app data.
- `geocmtfour` - Airport and airfield status data.
- `geocmtthree` - Incident data.

Development and test environments use H2 databases by default.
