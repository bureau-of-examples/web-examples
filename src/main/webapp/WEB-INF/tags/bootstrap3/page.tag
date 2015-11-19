<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="title" type="java.lang.String"  %>
<%@attribute name="lang" type="java.lang.String"  %>
<%@attribute name="bodyClass" type="java.lang.String"  %>
<%@attribute name="bodyAttributes" type="java.lang.String"  %>
<%@attribute name="bowerDir" type="java.lang.String"  %><%--relative to webapp folder--%>
<%@attribute name="headPlaceHolder" fragment="true" required="false" %>

<%@variable name-given="contextPath" variable-class="java.lang.String" scope="NESTED" %>

<c:set var="title" value="${empty title ? '' : title}" />
<c:set var="lang" value="${empty title ? 'en' : lang}" />
<c:set var="bowerDir" value="${empty bowerDir ? 'components' : bowerDir}" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!doctype html>
<html lang="${lang}"><%--todo change to attribute--%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>${title}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="${contextPath}/${bowerDir}/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${contextPath}/css/bootstrap3-tags.css" />

    <jsp:invoke fragment="headPlaceHolder" />
</head>
<body <c:if test="${not empty bodyClass}">class="${bodyClass}"</c:if> ${bodyAttributes}>

    <jsp:doBody />

    <script src="${contextPath}/${bowerDir}/jquery/dist/jquery.min.js" ></script>
    <script src="${contextPath}/${bowerDir}/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
