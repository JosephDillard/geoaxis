
<%@ page import="gsb.airport.CurrentSITController" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <meta http-equiv="Refresh" content="300"/>
    <g:set var="entityName" value="${message(code: 'currentSIT.label', default: 'CurrentSIT')}"/>
    <title>CE STATUS <g:fieldValue bean="${currentSIT}" field="airfieldName"/></title>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <gsb:renderNavLinks/>
    </ul>
</div>

<a href="#list-currentSIT" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>

    </ul>
</div>

<div id="list-currentSIT" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
%{--        <tr>

            <g:sortableColumn property="airfieldName" title="${message(code: 'currentSIT.airfieldName.label', default: 'Airport')}"/>

            <g:sortableColumn property="korean" title="${message(code: 'currentSIT.korean.label', default: ' ')}"/>

            <g:sortableColumn property="ceoverall" title="${message(code: 'currentSIT.ceoverall.label', default: '전체</br>CE Overall')}"/>

            <g:sortableColumn property="runway" title="${message(code: 'currentSIT.runway.label', default: '주활주로</br> RW Pri')}"/>

            <g:sortableColumn property="runwaytwo" title="${message(code: 'currentSIT.runwaytwo.label', default: '보조활주로</br> RW Sec')}"/>

            <g:sortableColumn property="airfield" title="${message(code: 'currentSIT.airfield.label', default: ' 비행장</br>Airfield')}"/>

            <g:sortableColumn property="facilities" title="${message(code: 'currentSIT.facilities.label', default: '시설</br>Facilities')}"/>

            <g:sortableColumn property="utilities" title="${message(code: 'currentSIT.utilities.label', default: '기반시설</br>Utilities')}"/>

            <g:sortableColumn property="emerresp" title="${message(code: 'currentSIT.emerresp.label', default: '긴급대응</br>Emergency Response')}"/>

            <g:sortableColumn property="overpersonnel" title="${message(code: 'currentSIT.overpersonnel.label', default: '인원</br>Personnel')}"/>

            <g:sortableColumn property="overassets" title="${message(code: 'currentSIT.overassets.label', default: '자원</br>Assets')}"/>

            <g:sortableColumn property="lastUpdated" title="${message(code: 'currentSIT.lastUpdated.label', default: 'Updated (KST)')}"/>

            <g:sortableColumn property="mapit" title="${message(code: 'currentSIT.mapit.label', default: 'Map')}"/>

        </tr>--}%
        <tr>

            <g:sortableColumn property="airfieldName" title="${message(code: 'currentSIT.airfieldName.label', default: 'Airport')}"/>

            <g:sortableColumn property="korean" title="${message(code: 'currentSIT.korean.label', default: ' ')}"/>

            <g:sortableColumn property="ceoverall" title="${message(code: 'currentSIT.ceoverall.label', default: 'CE Overall')}"/>

            <g:sortableColumn property="runway" title="${message(code: 'currentSIT.runway.label', default: 'RW Pri')}"/>

            <g:sortableColumn property="runwaytwo" title="${message(code: 'currentSIT.runwaytwo.label', default: 'RW Sec')}"/>

            <g:sortableColumn property="airfield" title="${message(code: 'currentSIT.airfield.label', default: 'Airfield')}"/>

            <g:sortableColumn property="facilities" title="${message(code: 'currentSIT.facilities.label', default: 'Facilities')}"/>

            <g:sortableColumn property="utilities" title="${message(code: 'currentSIT.utilities.label', default: 'Utilities')}"/>

            <g:sortableColumn property="emerresp" title="${message(code: 'currentSIT.emerresp.label', default: 'Emergency Response')}"/>

            <g:sortableColumn property="overpersonnel" title="${message(code: 'currentSIT.overpersonnel.label', default: 'Personnel')}"/>

            <g:sortableColumn property="overassets" title="${message(code: 'currentSIT.overassets.label', default: 'Assets')}"/>

            <g:sortableColumn property="lastUpdated" title="${message(code: 'currentSIT.lastUpdated.label', default: 'Updated')}"/>

            <g:sortableColumn property="mapit" title="${message(code: 'currentSIT.mapit.label', default: 'Map')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${currentSITList}" status="i" var="currentSIT">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">${fieldValue(bean: currentSIT, field: "airfieldName")}</g:link></td>

                <td>${fieldValue(bean: currentSIT, field: "korean")}</td>

                <td>
                    <g:if test="${currentSIT.ceoverall == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="green_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.ceoverall == 'RED - DEGRADED NO WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="red_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.ceoverall == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.ceoverall == 'BLACK - INCAPACITATED'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="black_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.ceoverall == 'BLUE'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="blueua.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                </td>


                <td>
                    <g:if test="${currentSIT.runway == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="green_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.runway == 'RED - DEGRADED NO WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="red_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.runway == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.runway == 'BLACK - INCAPACITATED'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="black_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.runway == 'BLUE'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="blueua.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                </td>

                <td>
                    <g:if test="${currentSIT.runwaytwo == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="green_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.runwaytwo == 'RED - DEGRADED NO WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="red_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.runwaytwo == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.runwaytwo == 'BLACK - INCAPACITATED'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="black_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.runwaytwo == 'BLUE'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="blueua.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                </td>

                <td>
                    <g:if test="${currentSIT.airfield == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="green_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.airfield == 'RED - DEGRADED NO WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="red_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.airfield == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.airfield == 'BLACK - INCAPACITATED'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="black_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.airfield == 'BLUE'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="blueua.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                </td>

                <td>
                    <g:if test="${currentSIT.facilities == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="green_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.facilities == 'RED - DEGRADED NO WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="red_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.facilities == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.facilities == 'BLACK - INCAPACITATED'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="black_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.facilities == 'BLUE'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="blueua.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                </td>

                <td>
                    <g:if test="${currentSIT.utilities == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="green_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.utilities == 'RED - DEGRADED NO WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="red_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.utilities == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.utilities == 'BLACK - INCAPACITATED'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="black_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.utilities == 'BLUE'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="blueua.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                </td>

                <td>
                    <g:if test="${currentSIT.emerresp == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="green_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.emerresp == 'RED - DEGRADED NO WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="red_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.emerresp == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.emerresp == 'BLACK - INCAPACITATED'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="black_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.emerresp == 'BLUE'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="blueua.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                </td>

                <td>
                    <g:if test="${currentSIT.overpersonnel == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="green_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.overpersonnel == 'RED - DEGRADED NO WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="red_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.overpersonnel == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.overpersonnel == 'BLACK - INCAPACITATED'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="black_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.overpersonnel == 'BLUE'}">
                        <g:link controller="CurrentSIT" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="blueua.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                </td>

                <td>
                    <g:if test="${currentSIT.overassets == 'GREEN - NO SIGNIFICANT DEGRADATION'}">
                        <g:link controller="FireFightingAssets" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="green_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.overassets == 'RED - DEGRADED NO WORK-AROUND'}">
                        <g:link controller="FireFightingAssets" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="red_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.overassets == 'YELLOW - DEGRADED WITH WORK-AROUND'}">
                        <g:link controller="FireFightingAssets" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.overassets == 'BLACK - INCAPACITATED'}">
                        <g:link controller="FireFightingAssets" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="black_j.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                    <g:if test="${currentSIT.overassets == 'BLUE'}">
                        <g:link controller="FireFightingAssets" action="show" id="${currentSIT.id}">
                            <g:img dir="images" file="blueua.png" width="60px" height="20px"/>
                        </g:link>
                    </g:if>
                </td>


                <td><g:formatDate timeZone="Asia/Seoul"  format="dd MMM HH:mm" date="${currentSIT.lastUpdated}"/></td>

                <td><g:link controller="map"
                            action="index"
                            params="[layer: 'currentSIT', field: 'site_name', value: currentSIT.airfieldName]"
                            target="_blank"
                            rel="noopener"
                            title="Open map view"><g:img dir="images" file="map_icon.png" width="18" height="18"/></g:link></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${currentSITCount ?: 0}"/>
    </div>

    <p><br/></p>


    <table>

%{--        <tr>
            <td>Status Legend 상황 범례</td>
            <td>
                <g:img dir="images" file="green_legend.png" width="200px" height="40px"/>
            </td>
            <td>
                <g:img dir="images" file="yellow_legend.png" width="200px" height="40px"/>
            </td>
            <td>
                <g:img dir="images" file="red_legend.png" width="200px" height="40px"/>
            </td>
            <td>
                <g:img dir="images" file="black_legend.png" width="200px" height="40px"/>
            </td>
            <td>

            </td>
        </tr>--}%
        <tr>
            <td>Status Legend</td>
            <td>
                <g:img dir="images" file="green_legend_noK.png" width="200px" height="40px"/>
            </td>
            <td>
                <g:img dir="images" file="yellow_legend_noK.png" width="200px" height="40px"/>
            </td>
            <td>
                <g:img dir="images" file="red_legend_noK.png" width="200px" height="40px"/>
            </td>
            <td>
                <g:img dir="images" file="black_legend_noK.png" width="200px" height="40px"/>
            </td>
            <td>

            </td>
        </tr>

    </table>
</div>
</body>
</html>
