package gsb.airport

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.gorm.transactions.Transactional

@Secured(['ROLE_USER'])
@Transactional(readOnly = true, connection = 'geodbfour')
class EngineerAssetsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def index(Integer max) {
        params.max = Math.min(max ?: 500, 500)
        if (params.airportArptName) {
            respond EngineerAssets.findAllByAirfieldNameLike(params.airportArptName).asList().sort {
                it.itemName
            }, model: [engineerAssetsCount: EngineerAssets.count()]
        } else {
            respond EngineerAssets.list(params), model: [engineerAssetsCount: EngineerAssets.count()]
        }
    }

    def show(Long id) {
        def engineerAssets
        if (params.airportArptName) {
            engineerAssets = EngineerAssets.findByAirportArptName(params.airportArptName)
        } else {
            engineerAssets = EngineerAssets.get(id)
        }
        if (!engineerAssets) {
            if (params.airportArptName) {
                flash.message = "Nothing found with name ${params.airportArptName}"
            } else {
                flash.message = "gsb.airport.EngineerAssets not found with id $id"
            }
            redirect(action: "index")
            return
        }
        [engineerAssets: engineerAssets]
    }

    def create() {
        respond new EngineerAssets(params)
    }

    @Transactional(connection = 'geodbfour')
    def save(EngineerAssets engineerAssets) {
        if (engineerAssets == null) {
            notFound()
            return
        }

        if (engineerAssets.hasErrors()) {
            respond engineerAssets.errors, view: 'create'
            return
        }

        engineerAssets.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'engineerAssets.label', default: 'gsb.airport.EngineerAssets'), engineerAssets.id])
                redirect engineerAssets
            }
            '*' { respond engineerAssets, [status: org.springframework.http.HttpStatus.CREATED] }
        }
    }

    def edit(EngineerAssets engineerAssets) {
        respond engineerAssets
    }

    @Transactional(connection = 'geodbfour')
    def update(EngineerAssets engineerAssets) {
        if (engineerAssets == null) {
            notFound()
            return
        }

        if (engineerAssets.hasErrors()) {
            respond engineerAssets.errors, view: 'edit'
            return
        }

        engineerAssets.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'gsb.airport.EngineerAssets.label', default: 'gsb.airport.EngineerAssets'), engineerAssets.id])
                redirect engineerAssets
            }
            '*' { respond engineerAssets, [status: org.springframework.http.HttpStatus.OK] }
        }
    }

    @Transactional(connection = 'geodbfour')
    def delete(EngineerAssets engineerAssets) {

        if (engineerAssets == null) {
            notFound()
            return
        }

        engineerAssets.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'gsb.airport.EngineerAssets.label', default: 'gsb.airport.EngineerAssets'), engineerAssets.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: org.springframework.http.HttpStatus.NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'engineerAssets.label', default: 'gsb.airport.EngineerAssets'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: org.springframework.http.HttpStatus.NOT_FOUND }
        }
    }
}
