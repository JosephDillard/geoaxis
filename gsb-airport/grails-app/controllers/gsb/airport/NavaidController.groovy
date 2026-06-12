/*
 * 2017 6 22 - Mission Command Dev Team
 *
 */

package gsb.airport

import grails.gorm.transactions.Transactional
import org.springframework.security.access.annotation.Secured

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_USER'])
@Transactional(readOnly = true, connection = 'geocmtfour')
class NavaidController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 100, 200)
        respond Navaid.list(params), model: [navaidInstanceCount: Navaid.count()]
    }

    def show(Navaid navaidInstance) {
        respond navaidInstance
    }

    def create() {
        respond new Navaid(params)
    }

    @Transactional(connection = 'geocmtfour')
    def save(Navaid navaidInstance) {
        if (navaidInstance == null) {
            notFound()
            return
        }

        if (navaidInstance.hasErrors()) {
            respond navaidInstance.errors, view: 'create'
            return
        }

        navaidInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'navaid.label', default: 'Navaid'), navaidInstance.id])
                redirect navaidInstance
            }
            '*' { respond navaidInstance, [status: CREATED] }
        }
    }

    def edit(Navaid navaidInstance) {
        respond navaidInstance
    }

    @Transactional(connection = 'geocmtfour')
    def update(Navaid navaidInstance) {
        if (navaidInstance == null) {
            notFound()
            return
        }

        if (navaidInstance.hasErrors()) {
            respond navaidInstance.errors, view: 'edit'
            return
        }

        navaidInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Navaid.label', default: 'Navaid'), navaidInstance.id])
                redirect navaidInstance
            }
            '*' { respond navaidInstance, [status: OK] }
        }
    }

    @Transactional(connection = 'geocmtfour')
    def delete(Navaid navaidInstance) {

        if (navaidInstance == null) {
            notFound()
            return
        }

        navaidInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Navaid.label', default: 'Navaid'), navaidInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'navaid.label', default: 'Navaid'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
