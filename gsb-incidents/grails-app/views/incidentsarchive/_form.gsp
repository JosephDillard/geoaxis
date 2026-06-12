<%@ page import="gsb.incidents.IncidentsarchiveController" %>

<div class="fieldcontain ${hasErrors(bean: incidents, field: 'incidentId', 'error')} ">
	<label for="incidentId">
		<g:message code="incidentsarchive.incidentId.label" default="Incident Id" />
		
	</label>
	<g:textField name="incidentId" value="${incidents?.incidentId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidents, field: 'eventType', 'error')} ">
	<label for="eventType">
		<g:message code="incidentsarchive.eventType.label" default="Event Type" />
		
	</label>
	<g:textField name="eventType" value="${incidents?.eventType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidents, field: 'eventName', 'error')} ">
	<label for="eventName">
		<g:message code="incidentsarchive.eventName.label" default="Event Name" />
		
	</label>
	<g:textField name="eventName" value="${incidents?.eventName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidents, field: 'eventDesc', 'error')} ">
	<label for="eventDesc">
		<g:message code="incidentsarchive.eventDesc.label" default="Event Desc" />
		
	</label>
	<g:textArea name="eventDesc" value="${incidents?.eventDesc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidents, field: 'mgrsCoord', 'error')} ">
	<label for="mgrsCoord">
		<g:message code="incidentsarchive.mgrsCoord.label" default="Mgrs Coordinates" />
		
	</label>
	<g:textField name="mgrsCoord" value="${incidents?.mgrsCoord}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidents, field: 'base', 'error')} ">
	<label for="base">
		<g:message code="incidentsarchive.base.label" default="Airport" />
		
	</label>
	<incidentLookup:select name="base" category="incident.base" value="${incidents?.base}" valueMessagePrefix="incidentsarchive.base" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidents, field: 'sigEvent', 'error')} ">
	<label for="sigEvent">
		<g:message code="incidentsarchive.sigEvent.label" default="Sig Event" />
		
	</label>
	<incidentLookup:select name="sigEvent" category="incident.yesNoNa" value="${incidents?.sigEvent}" valueMessagePrefix="incidentsarchive.sigEvent" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidents, field: 'airOpsAffected', 'error')} ">
	<label for="airOpsAffected">
		<g:message code="incidentsarchive.airOpsAffected.label" default="Air Ops Affected" />
		
	</label>
	<incidentLookup:select name="airOpsAffected" category="incident.yesNoNa" value="${incidents?.airOpsAffected}" valueMessagePrefix="incidentsarchive.airOpsAffected" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidents, field: 'source', 'error')} ">
	<label for="source">
		<g:message code="incidentsarchive.source.label" default="Source" />
		
	</label>
	<g:textField name="source" value="${incidents?.source}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: incidents, field: 'updatedBy', 'error')} required">

	<g:hiddenField name="updatedBy" value="${sec.loggedInUserInfo(field: 'username')} "/>

</div>
