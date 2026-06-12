<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Map View</title>
    <link rel="stylesheet" href="${mapLibreCssUrl}"/>
</head>
<body>
<main class="geo-map-page" role="main">
    <section class="geo-map-toolbar" aria-label="Map controls">
        <div>
            <h1>Map View</h1>
            <p>Geospatial view of airport, airfield, and incident status layers.</p>
        </div>
        <g:form controller="map" action="index" method="GET" class="geo-map-form">
            <label for="layer">Layer</label>
            <select id="layer" name="layer">
                <g:each in="${layers}" var="entry">
                    <option value="${entry.key}" <g:if test="${entry.key == selectedLayer}">selected="selected"</g:if>>${entry.value.title}</option>
                </g:each>
            </select>

            <label for="field">Filter field</label>
            <input id="field" name="field" type="text" value="${selectedField}"/>

            <label for="value">Filter value</label>
            <input id="value" name="value" type="text" value="${selectedValue}"/>

            <button type="submit" class="btn btn-primary">Load</button>
        </g:form>
    </section>

    <section class="geo-map-shell" aria-label="Geospatial map">
        <div id="geo-map-status" class="geo-map-status">Loading map...</div>
        <div id="geo-map" class="geo-map-canvas"></div>
    </section>
</main>

<script src="${mapLibreJsUrl}"></script>
<script>
(function () {
    var config = ${raw(mapConfigJson)};
    var statusEl = document.getElementById('geo-map-status');
    var sourceId = 'status-features';
    var layerIds = ['status-polygons', 'status-lines', 'status-points'];

    function setStatus(message, isError) {
        statusEl.textContent = message;
        statusEl.className = isError ? 'geo-map-status geo-map-status-error' : 'geo-map-status';
    }

    function rasterStyle() {
        return {
            version: 8,
            sources: {
                osm: {
                    type: 'raster',
                    tiles: [config.osmTilesUrl],
                    tileSize: 256,
                    attribution: '(c) OpenStreetMap contributors'
                }
            },
            layers: [
                {
                    id: 'osm',
                    type: 'raster',
                    source: 'osm'
                }
            ]
        };
    }

    function cqlEquals(field, value) {
        return field + "='" + String(value).replace(/'/g, "''") + "'";
    }

    function buildWfsUrl(layer) {
        var url = new URL(config.wfsUrl, window.location.origin);
        url.searchParams.set('service', 'WFS');
        url.searchParams.set('version', '1.0.0');
        url.searchParams.set('request', 'GetFeature');
        url.searchParams.set('typeName', layer.typeName);
        url.searchParams.set('outputFormat', 'application/json');
        url.searchParams.set('srsName', config.defaultSrs || 'EPSG:4326');
        url.searchParams.set('maxFeatures', config.maxFeatures || 500);

        if (config.filter && config.filter.field && config.filter.value) {
            url.searchParams.set('CQL_FILTER', cqlEquals(config.filter.field, config.filter.value));
        }

        return url.toString();
    }

    function escapeHtml(value) {
        return String(value == null ? '' : value)
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/"/g, '&quot;')
            .replace(/'/g, '&#039;');
    }

    function popupHtml(feature, layer) {
        var properties = feature.properties || {};
        var title = properties[layer.labelField] || properties[layer.idField] || layer.title;
        var rows = Object.keys(properties).slice(0, 12).map(function (key) {
            return '<dt>' + escapeHtml(key) + '</dt><dd>' + escapeHtml(properties[key]) + '</dd>';
        }).join('');

        return '<strong>' + escapeHtml(title) + '</strong><dl class="geo-map-popup">' + rows + '</dl>';
    }

    function extendBounds(bounds, coordinates, count) {
        if (!coordinates) {
            return count;
        }
        if (typeof coordinates[0] === 'number') {
            bounds.extend(coordinates);
            return count + 1;
        }
        coordinates.forEach(function (entry) {
            count = extendBounds(bounds, entry, count);
        });
        return count;
    }

    if (!window.maplibregl) {
        setStatus('MapLibre GL JS could not be loaded. Check geo.viewer.mapLibreJsUrl.', true);
        return;
    }

    var selectedLayer = config.layers[config.selectedLayer];
    if (!selectedLayer) {
        setStatus('No geospatial layer is configured.', true);
        return;
    }
    if (!config.wfsUrl) {
        setStatus('GeoServer WFS URL is not configured.', true);
        return;
    }

    var map = new maplibregl.Map({
        container: 'geo-map',
        style: rasterStyle(),
        center: config.center || [-106.0, 34.5],
        zoom: config.zoom || 6
    });

    map.addControl(new maplibregl.NavigationControl(), 'top-right');

    map.on('load', function () {
        var wfsUrl = buildWfsUrl(selectedLayer);
        setStatus('Loading ' + selectedLayer.title + ' from GeoServer...');

        fetch(wfsUrl, { credentials: 'same-origin' })
            .then(function (response) {
                if (!response.ok) {
                    throw new Error('GeoServer returned HTTP ' + response.status);
                }
                return response.json();
            })
            .then(function (geojson) {
                layerIds.forEach(function (id) {
                    if (map.getLayer(id)) {
                        map.removeLayer(id);
                    }
                });
                if (map.getSource(sourceId)) {
                    map.removeSource(sourceId);
                }

                map.addSource(sourceId, {
                    type: 'geojson',
                    data: geojson
                });

                map.addLayer({
                    id: 'status-polygons',
                    type: 'fill',
                    source: sourceId,
                    filter: ['==', '$type', 'Polygon'],
                    paint: {
                        'fill-color': selectedLayer.color,
                        'fill-opacity': 0.35
                    }
                });

                map.addLayer({
                    id: 'status-lines',
                    type: 'line',
                    source: sourceId,
                    filter: ['==', '$type', 'LineString'],
                    paint: {
                        'line-color': selectedLayer.color,
                        'line-width': 3
                    }
                });

                map.addLayer({
                    id: 'status-points',
                    type: 'circle',
                    source: sourceId,
                    filter: ['==', '$type', 'Point'],
                    paint: {
                        'circle-color': selectedLayer.color,
                        'circle-radius': 7,
                        'circle-stroke-color': '#ffffff',
                        'circle-stroke-width': 2
                    }
                });

                var features = geojson.features || [];
                var bounds = new maplibregl.LngLatBounds();
                var coordinateCount = 0;
                features.forEach(function (feature) {
                    if (feature.geometry) {
                        coordinateCount = extendBounds(bounds, feature.geometry.coordinates, coordinateCount);
                    }
                });
                if (coordinateCount > 0) {
                    map.fitBounds(bounds, { padding: 60, maxZoom: 15 });
                }

                layerIds.forEach(function (id) {
                    map.on('click', id, function (event) {
                        var feature = event.features && event.features[0];
                        if (!feature) {
                            return;
                        }
                        new maplibregl.Popup()
                            .setLngLat(event.lngLat)
                            .setHTML(popupHtml(feature, selectedLayer))
                            .addTo(map);
                    });

                    map.on('mouseenter', id, function () {
                        map.getCanvas().style.cursor = 'pointer';
                    });
                    map.on('mouseleave', id, function () {
                        map.getCanvas().style.cursor = '';
                    });
                });

                setStatus(features.length + ' feature(s) loaded from ' + selectedLayer.typeName + '.');
            })
            .catch(function (error) {
                setStatus(error.message + '. Check GeoServer, CORS, layer names, and WFS outputFormat.', true);
            });
    });
})();
</script>
</body>
</html>
