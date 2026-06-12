package gsb.incidents

import spock.lang.Specification

class FACDAMIncidentsControllerSpec extends Specification {

    void "controller protects mutating actions with HTTP methods"() {
        expect:
        FACDAMIncidentsController.allowedMethods == [save: 'POST', update: 'PUT', delete: 'DELETE']
    }
}
