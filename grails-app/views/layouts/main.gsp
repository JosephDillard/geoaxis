<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Geospatial Status Board"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
    <div class="container-fluid">
        <g:link class="navbar-brand geospatial-status-board-brand" uri="/"><gsb:bannerText slot="brandSubtitle" defaultText="Geospatial Status Board"/></g:link>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="nav navbar-nav ml-auto">
                <g:pageProperty name="page.nav"/>
                <sec:ifAnyGranted roles="ROLE_ADMIN">
                    <li class="nav-item">
                        <g:link controller="appAdmin" action="index" class="nav-link">App Admin</g:link>
                    </li>
                </sec:ifAnyGranted>
                <sec:ifLoggedIn>
                    <li class="nav-item">
                        <span class="navbar-text geospatial-status-board-user"><sec:username/></span>
                    </li>
                    <li class="nav-item">
                        <g:form controller="logout" action="index" method="POST" class="geospatial-status-board-logout-form">
                            <button type="submit" class="btn btn-outline-light btn-sm">Logout</button>
                        </g:form>
                    </li>
                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <li class="nav-item">
                        <g:link controller="login" action="auth" class="nav-link">Login</g:link>
                    </li>
                </sec:ifNotLoggedIn>
            </ul>
        </div>
    </div>
</nav>
<gsb:quickLinks/>

<g:layoutBody/>

<footer class="geospatial-status-board-footer" role="contentinfo">
    <div class="container-fluid">
        <span>Geospatial Status Board</span>
    </div>
</footer>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
