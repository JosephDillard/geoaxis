<%@ page import="gsb.airport.AirportStatusController" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="abs_layout">
    <meta http-equiv="Refresh" content="300"/>
    <g:set var="entityName" value="${message(code: 'airportStatus.label', default: 'Airport Status')}"/>
    <r:layoutResources/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
    %{--<ul>--}%
        %{--<gsb:renderNavLinks/>--}%
    %{--</ul>--}%
</div>
<a href="#list-airportStatus" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                    default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>

    </ul>
</div>

<div id="list-airportStatus" class="content scaffold-list" role="main">

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <table>

        <thead>
        <tr>
            <th>Airport</th>


            <th>Overall</th>

            <th class="tdl">Ops</th>

            <th>Mx</th>

            <th>Muns</th>

            <th>POL</th>

            <th class="tdl">RW Pri</th>

            <th>RW Sec</th>

            <th>Airfield</th>

            <th class="tdl">Infra</th>

            <th class="tdl">NAVAIDS</th>

            <th>C4I</th>

            <th>Cyber</th>

            <th class="tdl">Base Defense</th>

            <th>Updated </th>

            <th>Map</th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${airportStatusList}" status="i" var="airportStatus">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${airportStatus.id}">${fieldValue(bean: airportStatus, field: "airfieldName")}</g:link></td>

                <td>
                    <g:if test="${airportStatus.overall == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'ALARM BLUE AIR ATTACK'}">

                        <g:img dir="images" file="blue_a.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'ALARM BLUE MISSILE ATTACK'}">

                        <g:img dir="images" file="blue_m.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'ALARM BLUE INDIRECT FIRE ATTACK'}">

                        <g:img dir="images" file="blue_i.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'ALARM BLUE GROUND ATTACK'}">

                        <g:img dir="images" file="blue_g.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'ALARM BLACK INITIAL RELEASE'}">

                        <g:img dir="images" file="black_i.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'ALARM BLACK LIMITED RELEASE'}">

                        <g:img dir="images" file="black_l.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'ALARM BLACK PAR RELEASE'}">

                        <g:img dir="images" file="black_p.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'ALARM BLACK GENERAL RELEASE'}">

                        <g:img dir="images" file="black_g.png" width="80px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.overall == 'ALARM YELLOW ATTACK PROBABLE IN LESS THAN 30 MINS'}">

                        <g:img dir="images" file="yellow_30.png" width="80px" height="20px"/>

                    </g:if>

                </td>

                <td class="tdl">
                    <g:if test="${airportStatus.ops == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.ops == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.ops == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.ops == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.ops == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>

                <td>
                    <g:if test="${airportStatus.mx == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.mx == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.mx == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.mx == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.mx == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>


                <td>
                    <g:if test="${airportStatus.muns == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.muns == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.muns == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.muns == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.muns == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>

                <td>
                    <g:if test="${airportStatus.pol == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.pol == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.pol == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.pol == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.pol == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>

                <td class="tdl">
                    <g:if test="${airportStatus.rwPri == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.rwPri == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.rwPri == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.rwPri == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.rwPri == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>

                <td>
                    <g:if test="${airportStatus.rwSec == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.rwSec == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.rwSec == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.rwSec == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.rwSec == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>

                <td>
                    <g:if test="${airportStatus.airfield == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.airfield == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.airfield == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.airfield == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.airfield == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>

                <td class="tdl">
                    <g:if test="${airportStatus.infrastructure == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.infrastructure == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.infrastructure == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.infrastructure == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.infrastructure == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>

                <td class="tdl">
                    <g:if test="${airportStatus.atcalsNavaids == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.atcalsNavaids == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.atcalsNavaids == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.atcalsNavaids == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.atcalsNavaids == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>

                <td>
                    <g:if test="${airportStatus.c4i == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.c4i == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.c4i == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.c4i == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.c4i == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>

                <td>
                    <g:if test="${airportStatus.cyber == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.cyber == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.cyber == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.cyber == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.cyber == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>

                <td class="tdl">
                    <g:if test="${airportStatus.baseDefense == 'GREEN - NO SIGNIFICANT DEGRADATION'}">

                        <g:img dir="images" file="green_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.baseDefense == 'RED - DEGRADED NO WORK-AROUND'}">

                        <g:img dir="images" file="red_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.baseDefense == 'YELLOW - DEGRADED WITH WORK-AROUND'}">

                        <g:img dir="images" file="yellow_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.baseDefense == 'BLACK - INCAPACITATED'}">

                        <g:img dir="images" file="black_j.png" width="60px" height="20px"/>

                    </g:if>
                    <g:if test="${airportStatus.baseDefense == 'BLUE'}">

                        <g:img dir="images" file="blueua.png" width="60px" height="20px"/>

                    </g:if>
                </td>

                <td class="tddate"><g:formatDate timeZone="Asia/Seoul"  format="dd MMM HH:mm" date="${airportStatus.lastUpdated}"/></td>

                <td><a href="${fieldValue(bean: airportStatus, field: "mapit")}" target="new">
                    <g:img dir="images" file="map_icon.png" width="18" height="18"/></a>
                </td>

            </tr>
        </g:each>
        </tbody>

    </table>


    <p><br/></p>


    <table>

       <tr>
            <td>Status Legend</td>
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
        </tr>

%{--        <tr>
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
        </tr>--}%

    </table>
    <table>
        <tr>
            <td>Alarm Condition</td>

            <td>
                <g:img dir="images" file="blue_a.png" width="80px" height="20px"/>
            </td>
            <td>
                <g:img dir="images" file="blue_m.png" width="80px" height="20px"/>
            </td>
            <td>
                <g:img dir="images" file="blue_i.png" width="80px" height="20px"/>
            </td>
            <td>
                <g:img dir="images" file="blue_g.png" width="80px" height="20px"/>
            </td>
            <td>
                <g:img dir="images" file="black_i.png" width="80px" height="20px"/>
            </td>
            <td>
                <g:img dir="images" file="black_l.png" width="80px" height="20px"/>
            </td>
            <td>
                <g:img dir="images" file="black_p.png" width="80px" height="20px"/>
            </td>
            <td>
                <g:img dir="images" file="black_g.png" width="80px" height="20px"/>
            </td>
            <td>
                <g:img dir="images" file="yellow_30.png" width="80px" height="20px"/>
            </td>

        </tr>
        <tr>
            <th class="thleg">Overrides Overall Status</th>

            <th class="thleg">
                ALARM BLUE AIR ATTACK
            </th>

            <th class="thleg">
                ALARM BLUE MISSILE ATTACK
            </th>
            <th class="thleg">
                ALARM BLUE INDIRECT FIRE ATTACK
            </th>
            <th class="thleg">
                ALARM BLUE GROUND ATTACK
            </th>
            <th class="thleg">
                ALARM BLACK INITIAL RELEASE
            </th>
            <th class="thleg">
                ALARM BLACK LIMITED RELEASE
            </th>
            <th class="thleg">
                ALARM BLACK PAR RELEASE
            </th>
            <th class="thleg">
                ALARM BLACK GENERAL RELEASE
            </th>
            <th class="thleg">
                ALARM YELLOW ATTACK PROBABLE IN LESS THAN 30 MINS
            </th>

        </tr>

    </table>
</div>

<h3>Notes:</h3>

<p>Airfield = all airfield surfaces and support other than primary and secondary R/W (CE)</p>

%{--
        <tr>
            <th class="thleg">Overrides Overall Status</th>

            <th class="thleg">
                ALARM BLUE AIR ATTACK

            <th class="thleg">
                ALARM BLUE MISSILE ATTACK
            </th>
            <th class="thleg">
                ALARM BLUE INDIRECT FIRE ATTACK
            </th>
            <th class="thleg">
                ALARM BLUE GROUND ATTACK
            </th>
            <th class="thleg">
                ALARM BLACK INITIAL RELEASE
            </th>
            <th class="thleg">
                ALARM BLACK LIMITED RELEASE
            </th>
            <th class="thleg">
                ALARM BLACK PAR RELEASE
            </th>
            <th class="thleg">
                ALARM BLACK GENERAL RELEASE
            </th>
            <th class="thleg">
                ALARM YELLOW ATTACK PROBABLE IN LESS THAN 30 MINS
            </th>

        </tr>

    </table>
</div>

<h3>Notes:</h3>

<p style="font-weight: 800">Airfield = all airfield surfaces and support other than primary and secondary R/W (CE)</p>
--}%

<div class="nav" role="navigation">
    <ul>

    </ul>
</div>
</body>
</html>
