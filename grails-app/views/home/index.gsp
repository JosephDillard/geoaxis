<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>GeoAxis Home</title>
</head>
<body>
<main class="geoaxis-page" role="main">
    <section class="geoaxis-hero">
        <div>
            <p class="geoaxis-kicker">Signed in as ${username}</p>
            <h1>GeoAxis</h1>
            <p class="geoaxis-subtitle">Mission data, airfield posture, and incident tracking in one authenticated workspace.</p>
        </div>
        <div class="geoaxis-session">
            <span>Session active</span>
            <strong>${roles ? roles.join(', ') : 'ROLE_USER'}</strong>
        </div>
    </section>

    <section class="geoaxis-section">
        <div class="geoaxis-section-title">
            <h2>Available Work Areas</h2>
        </div>

        <g:set var="excludedControllers" value="${['home', 'login', 'logout']}"/>
        <g:set var="workControllers" value="${grailsApplication.controllerClasses.findAll { !(it.logicalPropertyName in excludedControllers) }.sort { it.fullName }}"/>

        <g:if test="${workControllers}">
            <div class="geoaxis-module-grid">
                <g:each var="controllerClass" in="${workControllers}">
                    <g:link class="geoaxis-module" controller="${controllerClass.logicalPropertyName}">
                        <span>${controllerClass.name}</span>
                        <small>${controllerClass.fullName}</small>
                    </g:link>
                </g:each>
            </div>
        </g:if>
        <g:else>
            <div class="geoaxis-empty-state">
                <h3>No operational modules registered</h3>
                <p>The authenticated shell is ready for GeoAxis modules as they are added to this application.</p>
            </div>
        </g:else>
    </section>
</main>
</body>
</html>
