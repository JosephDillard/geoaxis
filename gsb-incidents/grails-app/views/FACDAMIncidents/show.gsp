<%@ page import="gsb.incidents.FACDAMIncidentsController" %>
<!DOCTYPE html>
<html>
<head>

    <head>
        <meta name="layout" content="main">
        <meta http-equiv="Refresh" content="300"/>
        <g:set var="entityName" value="${message(code: 'FACDAMIncidents.label', default: 'FACDAM Incidents')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
<body>
<a href="#show-FACDAMIncidents" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><a class="list" href="${createLink(url: '../../../GeoBaseMC/#/facdamIncidents')}">FACDAM Incident List</a></li>
    </ul>
</div>
<div id="show-FACDAMIncidents" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list FACDAMIncidents">

        <g:if test="${FACDAMIncidents?.id}">
            <li class="fieldcontain">
                <span id="id-label" class="property-label"><g:message code="FACDAMIncidents.id.label" default="Incident Id" /></span>

                <span class="property-value" aria-labelledby="id-label"><g:fieldValue bean="${FACDAMIncidents}" field="id"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.eventType}">
            <li class="fieldcontain">
                <span id="eventType-label" class="property-label"><g:message code="FACDAMIncidents.eventType.label" default="Event Type" /></span>

                <span class="property-value" aria-labelledby="eventType-label"><g:fieldValue bean="${FACDAMIncidents}" field="eventType"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.eventCat}">
            <li class="fieldcontain">
                <span id="eventCat-label" class="property-label"><g:message code="FACDAMIncidents.eventCat.label" default="Category" /></span>

                <span class="property-value" aria-labelledby="eventCat-label"><g:fieldValue bean="${FACDAMIncidents}" field="eventCat"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.eventDate}">
            <li class="fieldcontain">
                <span id="eventDate-label" class="property-label"><g:message code="FACDAMIncidents.eventDate.label" default="Event Date" /></span>

                <span class="property-value" aria-labelledby="eventDate-label"><g:formatDate timeZone="Asia/Seoul"  date="${FACDAMIncidents?.eventDate}" /></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.eventName}">
            <li class="fieldcontain">
                <span id="eventName-label" class="property-label"><g:message code="FACDAMIncidents.eventName.label" default="Event Name" /></span>

                <span class="property-value" aria-labelledby="eventName-label"><g:fieldValue bean="${FACDAMIncidents}" field="eventName"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.eventDesc}">
            <li class="fieldcontain">
                <span id="eventDesc-label" class="property-label"><g:message code="FACDAMIncidents.eventDesc.label" default="Event Desc" /></span>

                <span class="property-value" aria-labelledby="eventDesc-label"><g:fieldValue bean="${FACDAMIncidents}" field="eventDesc"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.eventDescHan}">
            <li class="fieldcontain">
                <span id="eventDescHan-label" class="property-label"><g:message code="FACDAMIncidents.eventDescHan.label" default="서술" /></span>

                <span class="property-value" aria-labelledby="eventDescHan-label"><g:fieldValue bean="${FACDAMIncidents}" field="eventDescHan"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.mgrsCoord}">
            <li class="fieldcontain">
                <span id="mgrsCoord-label" class="property-label"><g:message code="FACDAMIncidents.mgrsCoord.label" default="MGRS" /></span>

                <span class="property-value" aria-labelledby="mgrsCoord-label"><g:fieldValue bean="${FACDAMIncidents}" field="mgrsCoord"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.base}">
            <li class="fieldcontain">
                <span id="base-label" class="property-label"><g:message code="FACDAMIncidents.base.label" default="Location" /></span>

                <span class="property-value" aria-labelledby="base-label"><g:fieldValue bean="${FACDAMIncidents}" field="base"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.sigEvent}">
            <li class="fieldcontain">
                <span id="sigEvent-label" class="property-label"><g:message code="FACDAMIncidents.sigEvent.label" default="Sig Event" /></span>

                <span class="property-value" aria-labelledby="sigEvent-label"><g:fieldValue bean="${FACDAMIncidents}" field="sigEvent"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.airOpsAffected}">
            <li class="fieldcontain">
                <span id="airOpsAffected-label" class="property-label"><g:message code="FACDAMIncidents.airOpsAffected.label" default="Air Ops Affected" /></span>

                <span class="property-value" aria-labelledby="airOpsAffected-label"><g:fieldValue bean="${FACDAMIncidents}" field="airOpsAffected"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.source}">
            <li class="fieldcontain">
                <span id="source-label" class="property-label"><g:message code="FACDAMIncidents.source.label" default="Source" /></span>

                <span class="property-value" aria-labelledby="source-label"><g:fieldValue bean="${FACDAMIncidents}" field="source"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.sector}">
            <li class="fieldcontain">
                <span id="sector-label" class="property-label"><g:message code="FACDAMIncidents.sector.label" default="Sector" /></span>

                <span class="property-value" aria-labelledby="sector-label"><g:fieldValue bean="${FACDAMIncidents}" field="sector"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.repairStatus}">
            <li class="fieldcontain">
                <span id="repairStatus-label" class="property-label"><g:message code="FACDAMIncidents.repairStatus.label" default="Repair Status" /></span>

                <span class="property-value" aria-labelledby="repairStatus-label"><g:fieldValue bean="${FACDAMIncidents}" field="repairStatus"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.currentProgress}">
            <li class="fieldcontain">
                <span id="currentProgress-label" class="property-label"><g:message code="FACDAMIncidents.currentProgress.label" default="Current Progress" /></span>

                <span class="property-value" aria-labelledby="currentProgress-label"><g:fieldValue bean="${FACDAMIncidents}" field="currentProgress"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.repairResponsibility}">
            <li class="fieldcontain">
                <span id="repairResponsibility-label" class="property-label"><g:message code="FACDAMIncidents.repairResponsibility.label" default="Repair Responsibility" /></span>

                <span class="property-value" aria-labelledby="repairResponsibility-label"><g:fieldValue bean="${FACDAMIncidents}" field="repairResponsibility"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.repairMethod}">
            <li class="fieldcontain">
                <span id="repairMethod-label" class="property-label"><g:message code="FACDAMIncidents.repairMethod.label" default="Repair Method" /></span>

                <span class="property-value" aria-labelledby="repairMethod-label"><g:fieldValue bean="${FACDAMIncidents}" field="repairMethod"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.beNumber}">
            <li class="fieldcontain">
                <span id="beNumber-label" class="property-label"><g:message code="FACDAMIncidents.beNumber.label" default="BE Number" /></span>

                <span class="property-value" aria-labelledby="beNumber-label"><g:fieldValue bean="${FACDAMIncidents}" field="beNumber"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.catCode}">
            <li class="fieldcontain">
                <span id="catCode-label" class="property-label"><g:message code="FACDAMIncidents.catCode.label" default="Cat Code" /></span>

                <span class="property-value" aria-labelledby="catCode-label"><g:fieldValue bean="${FACDAMIncidents}" field="catCode"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.remark1}">
            <li class="fieldcontain">
                <span id="remark1-label" class="property-label"><g:message code="FACDAMIncidents.remark1.label" default="Remark 1" /></span>

                <span class="property-value" aria-labelledby="remark1-label"><g:fieldValue bean="${FACDAMIncidents}" field="remark1"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.remark2}">
            <li class="fieldcontain">
                <span id="remark2-label" class="property-label"><g:message code="FACDAMIncidents.remark2.label" default="Remark 2" /></span>

                <span class="property-value" aria-labelledby="remark2-label"><g:fieldValue bean="${FACDAMIncidents}" field="remark2"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.remark3}">
            <li class="fieldcontain">
                <span id="remark3-label" class="property-label"><g:message code="FACDAMIncidents.remark3.label" default="Remark 3" /></span>

                <span class="property-value" aria-labelledby="remark3-label"><g:fieldValue bean="${FACDAMIncidents}" field="remark3"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.createdBy}">
            <li class="fieldcontain">
                <span id="entered-label" class="property-label"><g:message code="FACDAMIncidents.entered.label" default="Created By" /></span>

                <span class="property-value" aria-labelledby="entered-label"><g:fieldValue bean="${FACDAMIncidents}" field="createdBy"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.createdDate}">
            <li class="fieldcontain">
                <span id="createdDate-label" class="property-label"><g:message code="FACDAMIncidents.createdDate.label" default="Created" /></span>

                <span class="property-value" aria-labelledby="createdDate-label"><g:fieldValue bean="${FACDAMIncidents}" field="createdDate"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.updatedBy}">
            <li class="fieldcontain">
                <span id="updatedBy-label" class="property-label"><g:message code="FACDAMIncidents.updatedBy.label"
                                                                             default="Updated By"/></span>

                <span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue
                        bean="${FACDAMIncidents}" field="updatedBy"/></span>
            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.updatedDate}">
            <li class="fieldcontain">
                <span id="updatedDate-label" class="property-label"><g:message code="FACDAMIncidents.updatedDate.label" default="Updated" /></span>

                <span class="property-value" aria-labelledby="updatedDate-label"><g:fieldValue bean="${FACDAMIncidents}" field="updatedDate"/></span>

            </li>
        </g:if>

        <g:if test="${FACDAMIncidents?.entered}">
            <li class="fieldcontain">
                <span id="eventSourceHan-label" class="property-label"><g:message code="FACDAMIncidents.eventSourceHan.label" default="App" /></span>

                <span class="property-value" aria-labelledby="eventSourceHan-label"><g:fieldValue bean="${FACDAMIncidents}" field="eventSourceHan"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource:FACDAMIncidents, action:'delete']" method="DELETE">
        <fieldset class="buttons current-incident-show-buttons">
            %{--<g:link class="edit" action="edit" resource="${FACDAMIncidents}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
        </fieldset>
    </g:form>
</div>

</body>

</html>
