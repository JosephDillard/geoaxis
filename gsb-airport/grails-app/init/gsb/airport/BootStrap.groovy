package gsb.airport

class BootStrap {

    def init = { servletContext ->
        seedLookupCategory('airport.overallStatus', [
            'ALARM BLUE AIR ATTACK',
            'ALARM BLUE MISSILE ATTACK',
            'ALARM BLUE INDIRECT FIRE ATTACK',
            'ALARM BLUE GROUND ATTACK',
            'ALARM BLACK INITIAL RELEASE',
            'ALARM BLACK LIMITED RELEASE',
            'ALARM BLACK PAR RELEASE',
            'ALARM BLACK GENERAL RELEASE',
            'ALARM YELLOW ATTACK PROBABLE IN LESS THAN 30 MINS',
            'GREEN - NO SIGNIFICANT DEGRADATION',
            'YELLOW - DEGRADED WITH WORK-AROUND',
            'RED - DEGRADED NO WORK-AROUND',
            'BLACK - INCAPACITATED',
            'NA'
        ])
        seedLookupCategory('airport.operationalStatus', [
            'GREEN - NO SIGNIFICANT DEGRADATION',
            'YELLOW - DEGRADED WITH WORK-AROUND',
            'RED - DEGRADED NO WORK-AROUND',
            'BLACK - INCAPACITATED',
            'NA'
        ])
        seedLookupCategory('currentSit.status', [
            'GREEN - NO SIGNIFICANT DEGRADATION',
            'YELLOW - DEGRADED WITH WORK-AROUND',
            'RED - DEGRADED NO WORK-AROUND',
            'BLACK - INCAPACITATED',
            'N/A'
        ])
        seedLookupCategory('airfieldSurface.condition', [
            'Construction',
            'Damaged',
            'Destroyed',
            'Patched FFM',
            'Patched Other',
            'Not Damaged'
        ])
        seedLookupCategory('navaid.status', [
            'GREEN',
            'YELLOW',
            'RED',
            'UNKNOWN',
            'NA'
        ])
        seedLookupCategory('asset.airfieldName', [
            'Albuquerque International Sunport',
            'Kirtland AFB',
            'Holloman AFB',
            'Cannon AFB',
            'Santa Fe Regional Airport',
            'Roswell Air Center',
            'Las Cruces International Airport',
            'Lea County Regional Airport',
            'Four Corners Regional Airport',
            'Grant County Airport'
        ])
        seedLookupCategory('asset.serviceOwner', [
            'USAF',
            'USA',
            'USMC',
            'USN',
            'JSDAF',
            'JGSDF',
            'JMSDF',
            'Other',
            'ROKAF',
            'ROKA',
            'ROKMC',
            'ROKN'
        ])
    }

    def destroy = {
    }

    private void seedLookupCategory(String category, List<String> values) {
        AirportLookupOption.withTransaction {
            if (AirportLookupOption.countByCategory(category) > 0) {
                return
            }

            values.eachWithIndex { String value, int index ->
                new AirportLookupOption(
                    category: category,
                    value: value,
                    sortOrder: index + 1,
                    active: true
                ).save(failOnError: true)
            }
        }
    }
}
