<%@tag description="A button dropdown." dynamic-attributes="dynamicAttributes" pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" body-content="scriptless" isELIgnored="false" deferredSyntaxAllowedAsLiteral="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>

<%@attribute name="items" type="java.util.Collection" required="true" description="collection to bind to the dropdown items." %>
<%@attribute name="var" type="java.lang.String" required="true" rtexprvalue="false" description="collection items are bind to this nested variable." %>
<%@variable alias="item" name-from-attribute="var" variable-class="java.lang.String" scope="NESTED" %>
<%@attribute name="itemTemplate" fragment="true" required="true" description="A jsp fragment which outputs an li element." %>
<%@attribute name="title" type="java.lang.String" required="true" description="The text in the button." %>
<%@attribute name="elementId" type="java.lang.String" %>
<%@attribute name="elementClass" type="java.lang.String" %>
<%@attribute name="dropup" type="java.lang.Boolean" %>
<%@attribute name="split" type="java.lang.Boolean" %>
<%@attribute name="size" type="java.lang.String" description="can be xs sm md lg" %>
<%@attribute name="buttonType" type="java.lang.String" description="default danger warning primary info" %>
<%@attribute name="menuRightAlign" type="java.lang.Boolean" %>
<%@attribute name="menuOpenOnLoad" type="java.lang.Boolean" %>

<c:set var="css" value="btn-group"/>
<c:if test="${dropup}">
    <c:set var="css" value="${css} dropup"/>
</c:if>
<c:set var="css" value="${css}${' '}${elementClass}"/>
<c:if test="${menuOpenOnLoad}">
    <c:set var="css" value="${css} open"/>
</c:if>
<c:set var="buttonClass" value="${empty buttonType ? 'default' : buttonType}"/>
<c:set var="menuClass" value="dropdown-menu"/>
<c:if test="${menuRightAlign}">
    <c:set var="menuClass" value="${menuClass} dropdown-menu-right"/>
</c:if>
<c:if test="${not empty size}" >
    <c:set var="buttonClass" value="${buttonClass} btn-${size}" />
</c:if>

<div class="${css}" <c:if test="${not empty elementId}">id="${elementId}"</c:if> <comm:dynamicAttributes dynamicAttributes="${dynamicAttributes}" /> >
    <c:if test="${split}">
        <button class="btn btn-${buttonClass}" type="button">
            <c:out value="${title} "/>
        </button>
    </c:if>
    <button class="btn btn-${buttonClass} dropdown-toggle" type="button"
            <c:if test="${not empty elementId}">id="${elementId}_btn"</c:if> data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
        <c:if test="${not split}">
            <c:out value="${title} "/>
        </c:if>
        <span class="caret"></span>
        <span class="sr-only">Toggle Dropdown</span>
    </button>

    <ul class="${menuClass}" <c:if test="${not empty elementId}">aria-labelledby="${elementId}_btn"</c:if>>
        <comm:push value="buttondropdown" var="parentTagName"/>
        <c:if test="${not empty itemTemplate}">
            <c:forEach items="${items}" var="item">
                <jsp:invoke fragment="itemTemplate"/>
                <%--E.g.
                <li><a href="#">Action</a></li>
                <li class="dropdown-header">Dropdown header</li>
                <li role="separator" class="divider"></li>
                --%>
            </c:forEach>
        </c:if>
        <comm:pop var="parentTagName"/>
    </ul>
</div>
