<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Refresh" content="300"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="GeoDB Dashboard"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${assetPath(src: 'faviconstat.ico')}" type="image/x-icon">
    <asset:stylesheet src="mainceindexfeb16.css"/>
    <div align="right" class="bottomfoot">User: <sec:loggedInUserInfo field="username"/></div>
    <g:layoutHead/>
</head>

<body>
<div id="grailsLogo" role="banner"><a href="http://192.169.0.196/GeoBaseMCKSec/"><asset:image src="cedashboardAug2015.png" alt="GeoDB Dashboard"/></a></div>

<g:layoutBody/>
<div class="footer" role="contentinfo"></div>

<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
</body>

<div class="nav" role="navigation">
    <ul>
        <li><a class="list" href="${createLink(uri: '/CurrentSIT/index?sort=airfieldName&max=100&order=asc')}">CE Status</a></li>
        <li><a class="list" href="${createLink(uri: '/EngineerAssets/index?sort=itemName&max=100&order=asc')}">Engineer Assets</a></li>
        <li><a class="list" href="${createLink(uri: '/FireFightingAssets/index?sort=itemName&max=100&order=asc')}">Fire Fighting Assets</a></li>
        <li><a class="list" href="http://192.169.0.196/GeoBaseMCKBOSI/BOSI/">BOS-I Status</a></li>
    </ul>
</div>

<div class="nav" role="navigation">
    <ul>
        <li><a class="list" href="http://192.169.0.217/GeoBaseMCKACC/airportStatus" target="_blank">Airport Status</a></li>
        <li><a class="home" href="http://192.169.0.196/GeoBaseMCKSec/" target="_blank">GeoBase Home</a></li>
        <li><g:link class="map" controller="map" action="index" target="_blank">Map View</g:link></li>
    </ul>
</div>
<footer>
    <div align="center"><g:message code="ced.mes.label" default="" encodeAs="HTML"/></div>

</footer>
</html>
