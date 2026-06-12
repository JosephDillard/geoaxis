<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'incidentId', 'error')}">
    <label for="incidentId"><g:message code="FACDAMIncidents.incidentId.label" default="Incident Id"/></label>
    <g:textField name="incidentId" value="${facdamIncidents?.incidentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'eventType', 'error')}">
    <label for="eventType"><g:message code="FACDAMIncidents.eventType.label" default="Event Type"/></label>
    <g:textField name="eventType" value="${facdamIncidents?.eventType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'eventDate', 'error')}">
    <label for="eventDate"><g:message code="FACDAMIncidents.eventDate.label" default="Event Date"/></label>
    <g:datePicker name="eventDate" value="${facdamIncidents?.eventDate}" precision="day" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'eventName', 'error')}">
    <label for="eventName"><g:message code="FACDAMIncidents.eventName.label" default="Event Name"/></label>
    <g:textField name="eventName" value="${facdamIncidents?.eventName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'eventDesc', 'error')}">
    <label for="eventDesc"><g:message code="FACDAMIncidents.eventDesc.label" default="Event Desc"/></label>
    <g:textArea name="eventDesc" value="${facdamIncidents?.eventDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'eventDescHan', 'error')}">
    <label for="eventDescHan"><g:message code="FACDAMIncidents.eventDescHan.label" default="Event Desc Han"/></label>
    <g:textArea name="eventDescHan" value="${facdamIncidents?.eventDescHan}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'mgrsCoord', 'error')}">
    <label for="mgrsCoord"><g:message code="FACDAMIncidents.mgrsCoord.label" default="Mgrs Coord"/></label>
    <g:textField name="mgrsCoord" value="${facdamIncidents?.mgrsCoord}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'base', 'error')}">
    <label for="base"><g:message code="FACDAMIncidents.base.label" default="Airport"/></label>
    <incidentLookup:select name="base" category="incident.base" value="${facdamIncidents?.base}" valueMessagePrefix="FACDAMIncidents.base" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'sigEvent', 'error')}">
    <label for="sigEvent"><g:message code="FACDAMIncidents.sigEvent.label" default="Sig Event"/></label>
    <incidentLookup:select name="sigEvent" category="incident.yesNoNa" value="${facdamIncidents?.sigEvent}" valueMessagePrefix="FACDAMIncidents.sigEvent" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'airOpsAffected', 'error')}">
    <label for="airOpsAffected"><g:message code="FACDAMIncidents.airOpsAffected.label" default="Air Ops Affected"/></label>
    <incidentLookup:select name="airOpsAffected" category="incident.yesNoNa" value="${facdamIncidents?.airOpsAffected}" valueMessagePrefix="FACDAMIncidents.airOpsAffected" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'source', 'error')}">
    <label for="source"><g:message code="FACDAMIncidents.source.label" default="Source"/></label>
    <g:textField name="source" value="${facdamIncidents?.source}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'entered', 'error')}">
    <label for="entered"><g:message code="FACDAMIncidents.entered.label" default="Entered"/></label>
    <g:datePicker name="entered" value="${facdamIncidents?.entered}" precision="day" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'hiddenBy', 'error')}">
    <label for="hiddenBy"><g:message code="FACDAMIncidents.hiddenBy.label" default="Hidden By"/></label>
    <g:textField name="hiddenBy" value="${facdamIncidents?.hiddenBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'hidden', 'error')}">
    <label for="hidden"><g:message code="FACDAMIncidents.hidden.label" default="Hidden"/></label>
    <g:textField name="hidden" value="${facdamIncidents?.hidden}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'eventSourceHan', 'error')}">
    <label for="eventSourceHan"><g:message code="FACDAMIncidents.eventSourceHan.label" default="Event Source Han"/></label>
    <g:textField name="eventSourceHan" value="${facdamIncidents?.eventSourceHan}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'eventCat', 'error')}">
    <label for="eventCat"><g:message code="FACDAMIncidents.eventCat.label" default="Event Cat"/></label>
    <g:textField name="eventCat" value="${facdamIncidents?.eventCat}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'sector', 'error')}">
    <label for="sector"><g:message code="FACDAMIncidents.sector.label" default="Sector"/></label>
    <g:textField name="sector" value="${facdamIncidents?.sector}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'repairStatus', 'error')}">
    <label for="repairStatus"><g:message code="FACDAMIncidents.repairStatus.label" default="Repair Status"/></label>
    <incidentLookup:select name="repairStatus" category="facdam.repairStatus" value="${facdamIncidents?.repairStatus}" valueMessagePrefix="FACDAMIncidents.repairStatus" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'currentProgress', 'error')}">
    <label for="currentProgress"><g:message code="FACDAMIncidents.currentProgress.label" default="Current Progress"/></label>
    <g:textField name="currentProgress" value="${facdamIncidents?.currentProgress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'repairResponsibility', 'error')}">
    <label for="repairResponsibility"><g:message code="FACDAMIncidents.repairResponsibility.label" default="Repair Responsibility"/></label>
    <g:textField name="repairResponsibility" value="${facdamIncidents?.repairResponsibility}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'repairMethod', 'error')}">
    <label for="repairMethod"><g:message code="FACDAMIncidents.repairMethod.label" default="Repair Method"/></label>
    <g:textField name="repairMethod" value="${facdamIncidents?.repairMethod}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'beNumber', 'error')}">
    <label for="beNumber"><g:message code="FACDAMIncidents.beNumber.label" default="BE Number"/></label>
    <g:textField name="beNumber" value="${facdamIncidents?.beNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'catCode', 'error')}">
    <label for="catCode"><g:message code="FACDAMIncidents.catCode.label" default="Cat Code"/></label>
    <g:textField name="catCode" value="${facdamIncidents?.catCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'remark1', 'error')}">
    <label for="remark1"><g:message code="FACDAMIncidents.remark1.label" default="Remark 1"/></label>
    <g:textArea name="remark1" value="${facdamIncidents?.remark1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'remark2', 'error')}">
    <label for="remark2"><g:message code="FACDAMIncidents.remark2.label" default="Remark 2"/></label>
    <g:textArea name="remark2" value="${facdamIncidents?.remark2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facdamIncidents, field: 'remark3', 'error')}">
    <label for="remark3"><g:message code="FACDAMIncidents.remark3.label" default="Remark 3"/></label>
    <g:textArea name="remark3" value="${facdamIncidents?.remark3}"/>
</div>

<g:hiddenField name="updatedBy" value="${facdamIncidents?.updatedBy ?: sec.loggedInUserInfo(field: 'username')}"/>
<g:hiddenField name="createdBy" value="${facdamIncidents?.createdBy}"/>
