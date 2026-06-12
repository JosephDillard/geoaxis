
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="gsb.incidents.IncidentsarchiveController" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <meta http-equiv="Refresh" content="300"/>
    <g:set var="entityName" value="${message(code: 'incidentsarchive.label', default: 'incidentsarchive')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-incidentsarchive" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>

<div id="list-incidentsarchive" class="content scaffold-list" role="main">
    <h1>Incident List</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <g:form url="[resource: incidents, action: 'update']" method="PUT">
        <g:hiddenField name="version" value="${incidents?.version}"/>
        <fieldset class="indexform">
            <g:render template="indexform"/>
        </fieldset>
    </g:form>

</div>
</body>
</html>
