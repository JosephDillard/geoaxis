<%@ page import="gsb.incidents.IncidentsarchiveController" %>
<table>
    <thead>
    <tr>

<g:sortableColumn property="incidentId" title="${message(code: 'incidentsarchive.incidentId.label', default: 'Incident ID')}" />

        <g:sortableColumn property="eventType" title="${message(code: 'incidentsarchive.eventType.label', default: 'Event Type')}" />

        <g:sortableColumn property="eventDate" title="${message(code: 'incidentsarchive.eventDate.label', default: 'Event Date')}" />

        <g:sortableColumn property="eventName" title="${message(code: 'incidentsarchive.eventName.label', default: 'Title')}" />

        <g:sortableColumn property="eventDesc" title="${message(code: 'incidentsarchive.eventDesc.label', default: 'Description')}" />

        <g:sortableColumn property="eventDescHan" title="${message(code: 'incidentsarchive.eventDescHan.label', default: '서술')}" />

        <g:sortableColumn property="mgrsCoord" title="${message(code: 'incidentsarchive.mgrsCoord.label', default: 'MGRS')}" />

        <g:sortableColumn property="base" title="${message(code: 'incidentsarchive.base.label', default: 'Location')}" />

        <g:sortableColumn property="sigEvent" title="${message(code: 'incidentsarchive.sigEvent.label', default: 'Sig Event')}" />

        <g:sortableColumn property="airOpsAffected" title="${message(code: 'incidentsarchive.airOpsAffected.label', default: 'Air Ops Affected')}" />

        <g:sortableColumn property="source" title="${message(code: 'incidentsarchive.source.label', default: 'Source')}" />

        <g:sortableColumn property="createdBy" title="${message(code: 'incidentsarchive.createdBy.label', default: 'Created By')}" />

        <g:sortableColumn property="createdDate" title="${message(code: 'incidentsarchive.createdDate.label', default: 'Created')}" />

        <g:sortableColumn property="updatedDate" title="${message(code: 'incidentsarchive.updatedDate.label', default: 'Updated By')}" />

        <g:sortableColumn property="updatedBy" title="${message(code: 'incidentsarchive.updatedBy.label', default: 'Updated')}" />

    </tr>
    </thead>
    <tbody>
    <g:each in="${incidentsList}" status="i" var="incidents">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${incidents.id}">${fieldValue(bean: incidents, field: "incidentId")}</g:link></td>

            <td>${fieldValue(bean: incidents, field: "eventType")}</td>

            <td><g:formatDate timeZone="Asia/Seoul"  date="${incidents.eventDate}" /></td>

            <td>${fieldValue(bean: incidents, field: "eventName")}</td>

            <td>${fieldValue(bean: incidents, field: "eventDesc")}</td>

            <td>${fieldValue(bean: incidents, field: "eventDescHan")}</td>

            <td>${fieldValue(bean: incidents, field: "mgrsCoord")}</td>

            <td>${fieldValue(bean: incidents, field: "base")}</td>

            <td>${fieldValue(bean: incidents, field: "sigEvent")}</td>

            <td>${fieldValue(bean: incidents, field: "airOpsAffected")}</td>

            <td>${fieldValue(bean: incidents, field: "source")}</td>

            <td>${fieldValue(bean: incidents, field: "createdBy")}</td>

            <td><g:formatDate timeZone="Asia/Seoul"  date="${incidents.createdDate}" /></td>

            <td>${fieldValue(bean: incidents, field: "updatedBy")}</td>

            <td><g:formatDate timeZone="Asia/Seoul"  date="${incidents.updatedDate}" /></td>

        </tr>
    </g:each>
    </tbody>
</table>
<div class="pagination">
    <g:paginate total="${incidentsCount ?: 0}" />
</div>
