package geospatial.statusboard

class UrlMappings {

    static mappings = {
        "/geoAi/options"(controller: 'geoAi', action: 'options', method: 'GET')
        "/geoAi/jobs"(controller: 'geoAi', action: 'jobs', method: 'GET')
        "/geoAi/runs"(controller: 'geoAi', action: 'createRun', method: 'POST')
        "/geoAi/runs/$id"(controller: 'geoAi', action: 'runStatus', method: 'GET')

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'home', action: 'index')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
