package gsb.incidents

import static org.springframework.http.HttpStatus.*
import grails.gorm.transactions.Transactional

@Transactional(readOnly = true, connection = 'geocmtthree')
class FACDAMIncidentsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 200, 500)
        respond FACDAMIncidents.list(params), model:[FACDAMIncidentsCount: FACDAMIncidents.count()]
    }

    def show(FACDAMIncidents FACDAMIncidents) {
        respond FACDAMIncidents
    }

    def create() {
        respond new FACDAMIncidents(params)
    }

    @Transactional(connection = 'geocmtthree')
    def save(FACDAMIncidents FACDAMIncidents) {
        if (FACDAMIncidents == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (FACDAMIncidents.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond FACDAMIncidents.errors, view:'create'
            return
        }

        FACDAMIncidents.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'FACDAMIncidents.label', default: 'FACDAMIncidents'), FACDAMIncidents.id])
                redirect FACDAMIncidents
            }
            '*' { respond FACDAMIncidents, [status: CREATED] }
        }
    }

    def edit(FACDAMIncidents FACDAMIncidents) {
        respond FACDAMIncidents
    }

    @Transactional(connection = 'geocmtthree')
    def update(FACDAMIncidents FACDAMIncidents) {
        if (FACDAMIncidents == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (FACDAMIncidents.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond FACDAMIncidents.errors, view:'edit'
            return
        }

        FACDAMIncidents.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FACDAMIncidents.label', default: 'FACDAMIncidents'), FACDAMIncidents.id])
                redirect FACDAMIncidents
            }
            '*'{ respond FACDAMIncidents, [status: OK] }
        }
    }

    @Transactional(connection = 'geocmtthree')
    def delete(FACDAMIncidents FACDAMIncidents) {

        if (FACDAMIncidents == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        FACDAMIncidents.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FACDAMIncidents.label', default: 'FACDAMIncidents'), FACDAMIncidents.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'FACDAMIncidents.label', default: 'FACDAMIncidents'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
