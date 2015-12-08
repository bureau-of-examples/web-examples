<%@tag description="A button group is a list of buttons." dynamic-attributes="dynamicAttributes" pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" body-content="empty" isELIgnored="false" deferredSyntaxAllowedAsLiteral="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags"%>

<%@attribute name="items" type="java.util.Collection" required="true" %>
<%@attribute name="var" type="java.lang.String" required="true" rtexprvalue="false" %>
<%@variable alias="item" name-from-attribute="var" variable-class="java.lang.String" scope="NESTED" %>
<%@attribute name="itemTemplate" fragment="true" required="true" %>
<%@attribute name="buttonAttributesTemplate" fragment="true" %>
<%@attribute name="elementClass" type="java.lang.String" description="button type followed by additional classes." %>
<%@attribute name="title" type="java.lang.String" %>
<%@attribute name="size" type="java.lang.String" %>
<%@attribute name="buttonClass" type="java.lang.String" %>
<%@attribute name="isVertical" type="java.lang.Boolean" %>

<c:set var="wrapItem" value="${false}" />
<c:if test="${not empty buttonClass or not empty buttonAttributesTemplate}" >
    <c:set var="wrapItem" value="${true}"  />
</c:if>

<c:set var="buttonClass" value="${empty buttonClass ? 'default' : buttonClass}" />
<c:set var="css" value="btn-group" />
<c:if test="${isVertical}">
    <c:set var="css" value="${css} btn-group-vertical" />
</c:if>
<c:if test="${not empty size}" >
    <c:set var="css" value="${css} btn-group-${size}" />
</c:if>
<c:if test="${not empty elementClass}">
    <c:set var="css" value="${css} ${elementClass}" />
</c:if>

<div class="${css}" role="group"  <c:if test="${not empty title}">aria-label="<c:out value="${title}" />"</c:if> <comm:dynamicAttributes dynamicAttributes="${dynamicAttributes}" /> >
    <comm:push value="buttongroup" var="parentTagName" />
    <c:forEach var="item" items="${items}" >
        <c:if test="${wrapItem}">
            <button type="button" class="btn btn-${buttonClass}" <jsp:invoke fragment="buttonAttributesTemplate" /> >
        </c:if>
            <jsp:invoke fragment="itemTemplate" />
        <c:if test="${wrapItem}">
            </button>
        </c:if>
    </c:forEach>
    <comm:pop var="parentTagName" />
</div>