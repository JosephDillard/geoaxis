/*
 * 2017 6 23 - Mission Command Dev Team
 *
 */

package gsb.airport

import org.springframework.security.access.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.gorm.transactions.Transactional

@Secured(['ROLE_USER'])
@Transactional(readOnly = true, connection = 'geocmtfour')
class CurrentSITController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        //params.max = Math.min(max ?: 100, 100)
        respond CurrentSIT.findAllByActiveIsNotNull([max:100, sort:"sort", order:"asc"]), model: [CurrentSITCount: CurrentSIT.count()]

        //respond CurrentSIT.findAllByActiveIlike("YES", params), model: [CurrentSITCount: CurrentSIT.countByActiveIlike("YES")]

        //respond AirportStatus.findAllByActiveIsNotNull([max:50, sort:"sort", order:"asc"]), model: [airportStatusCount: AirportStatus.count()]
    }

    def show(Long id) {
        def currentSIT
        if (params.airfieldName) {
            currentSIT = CurrentSIT.findByAirfieldName('airFieldName')
        } else {
            currentSIT = CurrentSIT.get(id)
        }
        if (!currentSIT) {
            if (params.airfieldName) {
                flash.message = "Nothing found with name ${params.airfieldName}"
            } else {
                flash.message = "CurrentSIT not found with id $id"
            }
            redirect(action: "index")
            return
        }
        [currentSIT: currentSIT]
    }

    def create() {
        respond new CurrentSIT(params)
    }

    @Transactional(connection = 'geocmtfour')
    def save(CurrentSIT currentSIT) {
        if (currentSIT == null) {
            notFound()
            return
        }

        if (currentSIT.hasErrors()) {
            respond currentSIT.errors, view: 'create'
            return
        }

        currentSIT.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'currentSIT.label', default: 'CurrentSIT'), currentSIT.id])
                redirect currentSIT
            }
            '*' { respond currentSIT, [status: CREATED] }
        }
    }

    def edit(CurrentSIT currentSIT) {
        respond currentSIT
    }

    @Transactional(connection = 'geocmtfour')
    def update(CurrentSIT currentSIT) {
        if (currentSIT == null) {
            notFound()
            return
        }

        if (currentSIT.hasErrors()) {
            respond currentSIT.errors, view: 'edit'
            return
        }

        currentSIT.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CurrentSIT.label', default: 'CurrentSIT'), currentSIT.id])
                redirect currentSIT
            }
            '*' { respond currentSIT, [status: OK] }
        }
    }

    @Transactional(connection = 'geocmtfour')
    def delete(CurrentSIT currentSIT) {

        if (currentSIT == null) {
            notFound()
            return
        }

        currentSIT.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CurrentSIT.label', default: 'CurrentSIT'), currentSIT.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'currentSIT.label', default: 'CurrentSIT'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
