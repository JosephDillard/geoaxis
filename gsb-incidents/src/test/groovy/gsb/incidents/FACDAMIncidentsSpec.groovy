package gsb.incidents

import spock.lang.Specification

class FACDAMIncidentsSpec extends Specification {

    void "FACDAM incident preserves assigned incident details"() {
        when:
        FACDAMIncidents incident = new FACDAMIncidents(
            incidentId: 'FAC-1',
            eventType: 'Damage',
            base: 'Osan',
            repairStatus: 'In Progress'
        )

        then:
        incident.incidentId == 'FAC-1'
        incident.eventType == 'Damage'
        incident.base == 'Osan'
        incident.repairStatus == 'In Progress'
    }
}
