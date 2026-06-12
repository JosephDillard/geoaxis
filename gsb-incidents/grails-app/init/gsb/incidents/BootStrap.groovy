package gsb.incidents

class BootStrap {

    def init = { servletContext ->
        TimeZone.setDefault(TimeZone.getTimeZone("UTC")
        )
        seedLookupCategory('incident.base', [
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
        seedLookupCategory('incident.yesNoNa', [
            'Yes',
            'No',
            'N/A'
        ])
        seedLookupCategory('facdam.repairStatus', [
            'Not Assessed',
            'In Progress',
            'Complete'
        ])
    }

    def destroy = {
    }

    private void seedLookupCategory(String category, List<String> values) {
        IncidentLookupOption.withTransaction {
            if (IncidentLookupOption.countByCategory(category) > 0) {
                return
            }

            values.eachWithIndex { String value, int index ->
                new IncidentLookupOption(
                    category: category,
                    value: value,
                    sortOrder: index + 1,
                    active: true
                ).save(failOnError: true)
            }
        }
    }
}
