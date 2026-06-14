package geospatial.statusboard

import grails.core.GrailsApplication
import grails.plugin.springsecurity.annotation.Secured
import groovy.json.JsonOutput

@Secured(['ROLE_USER'])
class GeoAiController {

    GrailsApplication grailsApplication

    def options() {
        proxyJson('GET', '/run-options')
    }

    def createRun() {
        proxyJson('POST', '/runs', request.JSON as Map)
    }

    def runStatus(String id) {
        if (!id) {
            response.status = 400
            renderJson([detail: 'Run id is required'])
            return
        }

        proxyJson('GET', "/runs/${encodePathSegment(id)}")
    }

    private void proxyJson(String method, String path, Map body = null) {
        Map geoConfig = asMap(grailsApplication.config.geo)
        Map geoaiConfig = asMap(geoConfig.geoai)
        String apiUrl = geoaiConfig.apiUrl?.toString()?.replaceAll('/+$', '')
        int timeoutMs = asInteger(geoaiConfig.requestTimeoutMs, 5000)

        if (!apiUrl) {
            response.status = 503
            renderJson([detail: 'GeoAI API URL is not configured'])
            return
        }

        HttpURLConnection connection = null
        try {
            connection = new URL("${apiUrl}${path}").openConnection() as HttpURLConnection
            connection.connectTimeout = timeoutMs
            connection.readTimeout = timeoutMs
            connection.requestMethod = method
            connection.setRequestProperty('Accept', 'application/json')

            if (body != null) {
                connection.doOutput = true
                connection.setRequestProperty('Content-Type', 'application/json')
                connection.outputStream.withWriter('UTF-8') { writer ->
                    writer << JsonOutput.toJson(body)
                }
            }

            int code = connection.responseCode
            String text = readResponse(connection, code)
            response.status = code
            render(contentType: 'application/json', text: text ?: '{}')
        } catch (Exception ex) {
            response.status = 503
            renderJson([
                detail : ex.message ?: ex.class.simpleName,
                service: 'GeoAI API'
            ])
        } finally {
            connection?.disconnect()
        }
    }

    private String readResponse(HttpURLConnection connection, int code) {
        InputStream stream = code >= 400 ? connection.errorStream : connection.inputStream
        stream ? stream.getText('UTF-8') : ''
    }

    private String encodePathSegment(String value) {
        URLEncoder.encode(value, 'UTF-8').replace('+', '%20')
    }

    private void renderJson(Map payload) {
        render(contentType: 'application/json', text: JsonOutput.toJson(payload))
    }

    private Map asMap(Object value) {
        if (value instanceof Map) {
            return value.collectEntries { Object key, Object entryValue ->
                [key.toString(), entryValue]
            }
        }

        [:]
    }

    private int asInteger(Object value, int defaultValue) {
        if (value == null) {
            return defaultValue
        }

        if (value instanceof Number) {
            return value as int
        }

        value.toString().isInteger() ? value.toString() as int : defaultValue
    }
}
