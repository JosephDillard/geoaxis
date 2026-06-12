<table style="width: 350px">
    <tbody>

<g:if test="${currentSIT?.ceoverall}">
<tr>
        <td id="ceoverall-label" class="h4" style="font-weight: bolder"><g:message code="currentSIT.ceoverall.label" default="CE Overall Assessment"/></td>

        <td class="property-value" aria-labelledby="ceoverall-label">
            <g:if test="${currentSIT.ceoverall == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="120px" height="30px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.ceoverall == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="120px" height="30px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.ceoverall == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="120px" height="30px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.ceoverall == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="120px" height="30px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.ceoverall == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="120px" height="30px"/>
                </a>
            </g:if></td>

    </g:if>
    </tr>
    </tbody>
</table>
<table style="width: 850px">
    <tbody>
    <tr>
    <g:if test="${currentSIT?.runway}">

        <td id="runway-label" class="property-label3"><g:message code="currentSIT.runway.label" default="RWY Pri"/></td>

        <td class="property-value" aria-labelledby="runway-label">
            <g:if test="${currentSIT.runway == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.runway == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.runway == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.runway == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.runway == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    <g:if test="${currentSIT?.runwaytwo}">

        <td id="runwaytwo-label" class="property-label3"><g:message code="currentSIT.runwaytwo.label" default="RWY Sec"/></td>

        <td class="property-value" aria-labelledby="runwaytwo-label">
            <g:if test="${currentSIT.runwaytwo == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.runwaytwo == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.runwaytwo == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.runwaytwo == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.runwaytwo == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    <g:if test="${currentSIT?.airfield}">

        <td id="airfield-label" class="property-label3"><g:message code="currentSIT.airfield.label" default="Airfield"/></td>

        <td class="property-value" aria-labelledby="airfield-label">
            <g:if test="${currentSIT.airfield == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.airfield == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.airfield == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.airfield == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.airfield == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    <g:if test="${currentSIT?.facilities}">

        <td id="facilities-label" class="property-label3"><g:message code="currentSIT.facilities.label" default="Facilities"/></td>

        <td class="property-value" aria-labelledby="facilities-label">
            <g:if test="${currentSIT.facilities == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.facilities == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.facilities == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.facilities == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.facilities == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    <g:if test="${currentSIT?.utilities}">

        <td id="utilities-label" class="property-label3"><g:message code="currentSIT.utilities.label" default="Utilities"/></td>

        <td class="property-value" aria-labelledby="utilities-label">
            <g:if test="${currentSIT.utilities == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.utilities == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.utilities == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.utilities == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.utilities == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    <g:if test="${currentSIT?.emerresp}">

        <td id="emerresp-label" class="property-label3"><g:message code="currentSIT.emerresp.label" default="Emergency Response"/></td>

        <td class="property-value" aria-labelledby="emerresp-label">
            <g:if test="${currentSIT.emerresp == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.emerresp == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.emerresp == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.emerresp == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.emerresp == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>
    </tr>
    </tbody>
</table>
<table style="width: 1000px">
    <tbody>
    </tbody>
</table>
<hr>
<table style="width: 1000px">
    <tbody>
    <td id="engOffAvai-label" class="h4" style="font-weight: bolder"><g:message code="personnel.engOffAvai.label" default="Personnel"/></td>
    </tbody>
</table>
<table>
    <tbody style="width: 1000px">
    <g:if test="${currentSIT?.overpersonnel}">

        <td id="overpersonnel-label" class="property-label3"><g:message code="currentSIT.overpersonnel.label" default="Personnel Overall"/></td>

        <td class="property-value" aria-labelledby="overpersonnel-label">
            <g:if test="${currentSIT.overpersonnel == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="100px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.overpersonnel == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="100px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.overpersonnel == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="100px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.overpersonnel == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="100px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.overpersonnel == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="100px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    <g:if test="${currentSIT?.firepersonnel}">

        <td id="firepersonnel-label" class="property-label3"><g:message code="currentSIT.firepersonnel.label" default="Fire Personnel"/></td>

        <td class="property-value" aria-labelledby="firepersonnel-label">
            <g:if test="${currentSIT.firepersonnel == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.firepersonnel == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.firepersonnel == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.firepersonnel == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.firepersonnel == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    <g:if test="${currentSIT?.eodpersonnel}">

        <td id="eodpersonnel-label" class="property-label3"><g:message code="currentSIT.eodpersonnel.label" default="EOD Personnel"/></td>

        <td class="property-value" aria-labelledby="eodpersonnel-label">
            <g:if test="${currentSIT.eodpersonnel == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.eodpersonnel == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.eodpersonnel == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.eodpersonnel == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.eodpersonnel == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    <g:if test="${currentSIT?.nbcpersonnel}">

        <td id="nbcpersonnel-label" class="property-label3"><g:message code="currentSIT.nbcpersonnel.label" default="CBRN Personnel"/></td>

        <td class="property-value" aria-labelledby="nbcpersonnel-label">
            <g:if test="${currentSIT.nbcpersonnel == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.nbcpersonnel == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.nbcpersonnel == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.nbcpersonnel == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.nbcpersonnel == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    <g:if test="${currentSIT?.engpersonnel}">

        <td id="engpersonnel-label" class="property-label3"><g:message code="currentSIT.engpersonnel.label" default="Engineer Personnel"/></td>

        <td class="property-value" aria-labelledby="engpersonnel-label">
            <g:if test="${currentSIT.engpersonnel == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.engpersonnel == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.engpersonnel == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.engpersonnel == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.engpersonnel == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    </tbody>
</table>
<hr>
<table>
    <tbody>
    <td id="engOffAvai-label" class="h4" style="font-weight: bolder"><g:message code="personnel.engOffAvai.label" default="Assets "/></td>
    </tbody>
</table>
<table style="width: 350px">
    <tbody>
    <g:if test="${currentSIT?.overassets}">

        <td id="overassets-label" class="property-label3"><g:message code="currentSIT.overassets.label" default="Assets Overall"/></td>

        <td class="property-value" aria-labelledby="overassets-label">
            <g:if test="${currentSIT.overassets == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="100px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.overassets == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="100px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.overassets == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="100px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.overassets == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="100px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.overassets == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="100px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>
    </tbody>
</table>
<table style="width: 650px">
    <tbody>

    <g:if test="${currentSIT?.fireassets}">

        <td id="fireassets-label" class="property-label3"><g:message code="currentSIT.fireassets.label" default="Fire Assets"/></td>

        <td class="property-value" aria-labelledby="fireassets-label">
            <g:if test="${currentSIT.fireassets == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.fireassets == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.fireassets == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.fireassets == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.fireassets == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    <td id="nbcassets-label" class="property-label3"></td>
    <td class="property-label3" aria-labelledby="fireassets-label"><g:link controller="FireFightingAssets" action="index" >Fire Fighting Asset List</g:link></td>

    </tbody>
</table>
<table style="width: 600px">
    <tbody>

    <g:if test="${currentSIT?.eodassets}">

        <td id="eodassets-label" class="property-label3"><g:message code="currentSIT.eodassets.label" default="EOD Assets"/></td>

        <td class="property-value" aria-labelledby="eodassets-label">
            <g:if test="${currentSIT.eodassets == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.eodassets == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.eodassets == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.eodassets == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.eodassets == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    </tbody>
</table>
<table style="width: 600px">
    <tbody>
    <g:if test="${currentSIT?.nbcassets}">

        <td id="nbcassets-label" class="property-label3"><g:message code="currentSIT.nbcassets.label" default="CBRN Assets"/></td>

        <td class="property-value" aria-labelledby="nbcassets-label">
            <g:if test="${currentSIT.nbcassets == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.nbcassets == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.nbcassets == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.nbcassets == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.nbcassets == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>
    </tbody>
</table>
<table style="width: 600px">
    <tbody>

    <g:if test="${currentSIT?.engassets}">

        <td id="engassets-label" class="property-label3"><g:message code="currentSIT.engassets.label" default="Engineer Assets"/></td>

        <td class="property-value" aria-labelledby="engassets-label">
            <g:if test="${currentSIT.engassets == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.engassets == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.engassets == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.engassets == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.engassets == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    <td id="nbcassets-label" class="property-label3"></td>
    <td class="property-label3" aria-labelledby="fireassets-label"><g:link controller="EngineerAssets" action="index" >Engineer Asset List</g:link></td>
    </tr>
    </tbody>
</table>
<table style="width: 600px">
    <tbody>
    <g:if test="${currentSIT?.snowassets}">

        <td id="snowassets-label" class="property-label3"><g:message code="currentSIT.snowassets.label" default="Snow Removal Assets"/></td>

        <td class="property-value" aria-labelledby="snowassets-label">
            <g:if test="${currentSIT.snowassets == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="green_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.snowassets == 'RED - DEGRADED NO WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="red_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.snowassets == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.snowassets == 'BLACK - INCAPACITATED'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="black_j.png" width="75px" height="20px"/>
                </a>
            </g:if>
            <g:if test="${currentSIT.snowassets == 'BLUE'}">
                <a style="cursor:pointer">
                    <g:img dir="images" file="blueua.png" width="75px" height="20px"/>
                </a>
            </g:if></td>

    </g:if>

    </tbody>
</table>
