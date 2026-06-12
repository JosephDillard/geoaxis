package gsb.incidents

import org.springframework.security.access.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.gorm.transactions.Transactional
@Secured(['is_authenticated_anonymously','ROLE_USER'])
@Transactional(readOnly = true, connection = 'geodbthree')
class CurrentIncidentsController {
    def filterPaneService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 50, 300)
        if (params.id) {
            respond CurrentIncidents.findAllByIdIlike(params.id).asList().sort{
                it.createdDate
            }, model: [currentIncidentsCount: CurrentIncidents.countByIncidentIdIlike(params.id)]
        }
        else if (params.eventType) {
            respond CurrentIncidents.findAllByEventTypeIlike(params.eventType).asList().sort {
                it.createdDate
            }, model: [currentIncidentsCount: CurrentIncidents.countByEventTypeIlike(params.eventType)]
        }
        else if (params.createdBy) {
            respond CurrentIncidents.findAllByCreatedByIlike(params.createdBy).asList().sort {
                it.createdDate
            }, model: [currentIncidentsCount: CurrentIncidents.countByCreatedByIlike(params.createdBy)]
        }
        else if (params.eventSourceHan) {
            respond CurrentIncidents.findAllByEventSourceHanIlike(params.eventSourceHan).asList().sort {
                it.createdDate
            }, model: [currentIncidentsCount: CurrentIncidents.countByEventSourceHanIlike(params.eventSourceHan)]
        }
        else if (params.eventCat) {
            respond CurrentIncidents.findAllByEventCatIlike(params.eventCat).asList().sort {
                it.createdDate
            }, model: [currentIncidentsCount: CurrentIncidents.countByEventCatIlike(params.eventCat)]
        }
        else {
            respond CurrentIncidents.list(params), model: [currentIncidentsCount: CurrentIncidents.count()]
        }
    }

    def edit(CurrentIncidents currentIncidents) {
        respond currentIncidents
    }

    def filter = {
        params.max = Math.min(params.max ? params.int('max') : 50, 300)
        render( view: "filterlist",
                model:[	currentIncidentsList: filterPaneService.filter( params, gsb.incidents.CurrentIncidents ),
                           currentIncidentsCount: filterPaneService.count( params, gsb.incidents.CurrentIncidents ),
                           filterParams: org.grails.plugin.filterpane.FilterPaneUtils.extractFilterParams(params),
                           params:params ] )
    }

    def show(CurrentIncidents currentIncidents) {
        respond currentIncidents
    }

    def showArchive(CurrentIncidents currentIncidents) {
        def id = currentIncidents.id
        def list = Incidents.findAllByObjectid_1(id)
        [archiveList: list, currentIncidents: currentIncidents]
        //respond currentIncidents
    }

//    def setHidden(long id) {
//        def test = id
//    }

    def create() {
        respond new CurrentIncidents(params)
    }

    @Transactional(connection = 'geodbthree')
    def save(CurrentIncidents currentIncidents) {
        if (currentIncidents == null) {
            notFound()
            return
        }

        if (currentIncidents.hasErrors()) {
            respond currentIncidents.errors, view: 'create'
            return
        }

        currentIncidents.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'currentIncidents.label', default: 'CurrentIncidents'), currentIncidents.id])
                redirect currentIncidents
            }
            '*' { respond currentIncidents, [status: CREATED] }
        }
    }
    
    @Transactional(connection = 'geodbthree')
    def update(CurrentIncidents currentIncidents) {
        if (currentIncidents == null) {
            notFound()
            return
        }

        if (currentIncidents.hasErrors()) {
            respond currentIncidents.errors, view:'edit'
            return
        }

        currentIncidents.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CurrentIncidents.label', default: 'CurrentIncidents'), currentIncidents.id])
                redirect currentIncidents
            }
            '*'{ respond currentIncidents, [status: OK] }
        }
    }

    @Transactional(connection = 'geodbthree')
    def delete(CurrentIncidents currentIncidents) {

        if (currentIncidents == null) {
            notFound()
            return
        }

        currentIncidents.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CurrentIncidents.label', default: 'CurrentIncidents'), currentIncidents.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'currentIncidents.label', default: 'CurrentIncidents'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
