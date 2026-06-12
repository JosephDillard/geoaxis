package geoaxis

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
class HomeController {

    def springSecurityService

    def index() {
        def authentication = springSecurityService.authentication
        [
            username: authentication?.name,
            roles: authentication?.authorities*.authority?.sort() ?: []
        ]
    }
}
