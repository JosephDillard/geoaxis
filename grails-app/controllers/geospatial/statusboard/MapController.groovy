package geospatial.statusboard

import grails.core.GrailsApplication
import grails.plugin.springsecurity.annotation.Secured
import groovy.json.JsonOutput

@Secured(['ROLE_USER'])
class MapController {

    GrailsApplication grailsApplication

    def index() {
        Map geoConfig = asMap(grailsApplication.config.geo)
        Map viewerConfig = asMap(geoConfig.viewer)
        Map geoserverConfig = asMap(geoConfig.geoserver)
        Map layers = normalizeLayers(asMap(geoConfig.layers))
        String selectedLayer = params.layer?.toString()

        if (!selectedLayer || !layers.containsKey(selectedLayer)) {
            selectedLayer = layers.keySet().find()
        }

        Map selectedLayerConfig = selectedLayer ? layers[selectedLayer] as Map : [:]
        String selectedField = params.field?.toString() ?: selectedLayerConfig.idField?.toString()
        String selectedValue = params.value?.toString() ?: params.featureId?.toString()

        Map mapConfig = [
            wfsUrl       : geoserverConfig.wfsUrl?.toString() ?: '',
            defaultSrs   : geoserverConfig.defaultSrs?.toString() ?: 'EPSG:4326',
            osmTilesUrl  : viewerConfig.osmTilesUrl?.toString() ?: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            center       : viewerConfig.center ?: [-106.0, 34.5],
            zoom         : viewerConfig.zoom ?: 6,
            maxFeatures  : viewerConfig.maxFeatures ?: 500,
            selectedLayer: selectedLayer,
            filter       : [
                field: selectedField ?: '',
                value: selectedValue ?: ''
            ],
            layers       : layers
        ]

        [
            mapConfigJson : JsonOutput.toJson(mapConfig),
            layers        : layers,
            selectedLayer : selectedLayer,
            selectedField : selectedField ?: '',
            selectedValue : selectedValue ?: '',
            mapLibreJsUrl : viewerConfig.mapLibreJsUrl?.toString() ?: 'https://unpkg.com/maplibre-gl/dist/maplibre-gl.js',
            mapLibreCssUrl: viewerConfig.mapLibreCssUrl?.toString() ?: 'https://unpkg.com/maplibre-gl/dist/maplibre-gl.css'
        ]
    }

    private Map normalizeLayers(Map rawLayers) {
        rawLayers.collectEntries { Object key, Object value ->
            String layerKey = key.toString()
            Map layer = asMap(value)
            [
                layerKey,
                [
                    title       : layer.title?.toString() ?: layerKey,
                    typeName    : layer.typeName?.toString() ?: layerKey,
                    idField     : layer.idField?.toString() ?: 'id',
                    labelField  : layer.labelField?.toString() ?: layer.idField?.toString() ?: 'id',
                    geometryType: layer.geometryType?.toString() ?: 'Geometry',
                    color       : layer.color?.toString() ?: '#2563eb'
                ]
            ]
        }
    }

    private Map asMap(Object value) {
        if (value instanceof Map) {
            return value.collectEntries { Object key, Object entryValue ->
                [key.toString(), entryValue]
            }
        }

        [:]
    }
}
