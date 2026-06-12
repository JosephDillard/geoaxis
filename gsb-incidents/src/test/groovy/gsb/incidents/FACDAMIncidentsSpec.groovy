package gsb.incidents

import spock.lang.Specification

class FACDAMIncidentsSpec extends Specification {

    void "FACDAM incident preserves assigned incident details"() {
        when:
        FACDAMIncidents incident = new FACDAMIncidents(
            incidentId: 'FAC-1',
            eventType: 'Damage',
            base: 'Kirtland AFB',
            repairStatus: 'In Progress'
        )

        then:
        incident.incidentId == 'FAC-1'
        incident.eventType == 'Damage'
        incident.base == 'Kirtland AFB'
        incident.repairStatus == 'In Progress'
    }
}
