<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" dynamic-attributes="bodyAttributes" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="title" type="java.lang.String" %>
<%@attribute name="lang" type="java.lang.String" %>
<%@attribute name="bodyClass" type="java.lang.String" %>
<%@attribute name="bowerDir" type="java.lang.String" %>
<%--relative to webapp folder--%>
<%@attribute name="headPlaceHolder" fragment="true" required="false" %>

<%@variable name-given="contextPath" variable-class="java.lang.String" scope="NESTED" %>

<c:set var="title" value="${empty title ? '' : title}"/>
<c:set var="lang" value="${empty title ? 'en' : lang}"/>
<c:set var="bowerDir" value="${empty bowerDir ? 'components' : bowerDir}"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!doctype html>
<html lang="${lang}"><%--todo change to attribute--%>
<head>
    <comm:htmlMetaTags />
    <title><c:out value="${title}" /></title>

    <link rel="stylesheet" href="${contextPath}/${bowerDir}/bootstrap/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${contextPath}/css/bootstrap3-tags.css"/>
    <comm:push value="page" var="parentTagName"/>
    <jsp:invoke fragment="headPlaceHolder"/>
    <comm:pop var="parentTagName"/>
</head>
<body
        <c:if test="${not empty bodyClass}">class="${bodyClass}"</c:if> <comm:dynamicAttributes dynamicAttributes="${bodyAttributes}" /> >
<comm:push value="page" var="parentTagName"/>
<jsp:doBody/>
<comm:pop var="parentTagName"/>
<script src="${contextPath}/${bowerDir}/jquery/dist/jquery.min.js"></script>
<script src="${contextPath}/${bowerDir}/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
