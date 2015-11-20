<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags"%>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="contentTemplate" fragment="true" required="true" %>
<%@attribute name="elementClass" type="java.lang.String" %>
<%@attribute name="elementId" type="java.lang.String" %>
<%@attribute name="title" type="java.lang.String"  %>
<%@attribute name="size" type="java.lang.String"  %>
<%@attribute name="buttonClass" type="java.lang.String" %>
<%@attribute name="isVertical" type="java.lang.Boolean" %>
<%@attribute name="isJustified" type="java.lang.Boolean" %>

<c:set var="buttonClass" value="${empty buttonClass ? 'default' : buttonClass}" />
<c:set var="css" value="btn-group" />
<c:if test="${isVertical}">
    <c:set var="css" value="${css} btn-group-vertical" />
</c:if>
<c:if test="${isJustified}" >
    <c:set var="css" value="${css} btn-group-justified" />
</c:if>
<c:if test="${not empty size}" >
    <c:set var="css" value="${css} btn-group-${size}" />
</c:if>
<c:if test="${not empty elementClass}">
    <c:set var="css" value="${css} ${elementClass}" />
</c:if>
<div <c:if test="${not empty elementId}">id="${elementId}"</c:if> class="${css}" role="group"  <c:if test="${not empty title}">aria-label="<c:out value="${title}" />"</c:if> >
    <comm:push value="buttongroup" var="parentTagName" />
    <jsp:invoke fragment="contentTemplate" />
    <comm:pop var="parentTagName" />
</div>