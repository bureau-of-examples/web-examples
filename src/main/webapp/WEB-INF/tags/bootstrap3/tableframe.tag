<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="elementClass" type="java.lang.String" %>
<%@attribute name="elementId" type="java.lang.String" %>
<%@attribute name="title" type="java.lang.String" %>

<%@attribute name="panelHeadingTemplate" fragment="true"  %>
<%@attribute name="panelBodyTemplate" fragment="true"  %>
<%@attribute name="striped" type="java.lang.Boolean" %>
<%@attribute name="bordered" type="java.lang.Boolean" %>
<%@attribute name="howverRows" type="java.lang.Boolean" %>
<%@attribute name="condensed" type="java.lang.Boolean" %>
<%@attribute name="collapse" type="java.lang.Boolean" %>
<%@variable name-given="collapseDivId" variable-class="java.lang.String" scope="NESTED" %>

<c:if test="${collapse}">
    <comm:pageUniqueId var="collapseDivId"/>
</c:if>
<c:set var="wrapInPanel" value="${false}" />
<c:if test="${not empty panelHeadingTemplate or not empty panelBodyTemplate}">
    <c:set var="wrapInPanel" value="${true}" />
</c:if>
<c:set var="css" value="table" />
<c:if test="${striped}">
    <c:set var="css" value="${css} table-striped" />
</c:if>
<c:if test="${bordered}">
    <c:set var="css" value="${css} table-bordered" />
</c:if>
<c:if test="${howverRows}">
    <c:set var="css" value="${css} table-hover" />
</c:if>
<c:if test="${condensed}">
    <c:set var="css" value="${css} table-condensed" />
</c:if>
<c:if test="${wrapInPanel and empty elementClass}" >
    <c:set var="elementClass" value="default" />
</c:if>

<c:if test="${wrapInPanel}">
    <div class="panel panel-${elementClass}" <c:if test="${elementId}" >id="${elementId}"</c:if> >
    <c:if test="${not empty panelHeadingTemplate}" >
        <div class="panel-heading">
            <jsp:invoke fragment="panelHeadingTemplate" />
        </div>
    </c:if>
    <c:if test="${collapse}">
        <div id="${collapseDivId}" class="panel-collapse in">
    </c:if>
    <c:if test="${not empty panelBodyTemplate}" >
        <div class="panel-body">
            <jsp:invoke fragment="panelBodyTemplate" />
        </div>
    </c:if>
</c:if>

<div class="table-responsive ${not wrapInPanel ? elementClass : ''}" <c:if test="${not wrapInPanel and elementId}" >id="${elementId}"</c:if> >
<table class="${css}">
    <c:if test="${not empty title}" >
        <caption><c:out value="${title}" /></caption>
    </c:if>

    <jsp:doBody />
</table>
</div>

<c:if test="${wrapInPanel}">
    </div>
    <c:if test="${collapse}">
        </div>
    </c:if>
</c:if>
