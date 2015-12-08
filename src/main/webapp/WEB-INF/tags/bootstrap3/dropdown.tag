<%@tag description="A bootstrap dropdown which can be put in navbar, buttongroup or standalone." dynamic-attributes="dynamicAttributes" pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" body-content="empty" isELIgnored="false" deferredSyntaxAllowedAsLiteral="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>

<%@attribute name="var" type="java.lang.String" required="true" rtexprvalue="false" %>
<%@attribute name="items" type="java.util.Collection" required="true" %>
<%@attribute name="itemTemplate" fragment="true" required="true" %>
<%@attribute name="title" type="java.lang.String" required="true" %>
<%@attribute name="elementClass" type="java.lang.String" %>
<%@attribute name="elementId" type="java.lang.String" %>
<%@attribute name="dropup" type="java.lang.Boolean" %>
<%@attribute name="buttonClass" type="java.lang.String" %>
<%@attribute name="menuRightAlign" type="java.lang.Boolean" %>
<%@attribute name="menuOpenOnLoad" type="java.lang.Boolean" %>
<%@variable alias="item" name-from-attribute="var" variable-class="java.lang.String" scope="NESTED" %>

<c:set var="css" value="dropdown"/>
<c:if test="${dropup}">
    <c:set var="css" value="dropup"/>
</c:if>
<c:set var="wrapperElementName" value="div" />
<c:set var="buttonElementName" value="button" />
<comm:peek var="parentTagName" />
<c:choose>
    <c:when test="${f:startsWith(parentTagName, 'buttongroup')}">
        <c:if test="${css == 'dropdown'}">
            <c:set var="css" value="btn-group" />
        </c:if>
        <c:if test="${css != 'dropdown'}">
            <c:set var="css" value="btn-group ${css}" />
        </c:if>
    </c:when>
    <c:when test="${f:startsWith(parentTagName, 'navbar')}" >
        <c:set var="wrapperElementName" value="li" />
        <c:set var="buttonElementName" value="a" />
    </c:when>
</c:choose>

<c:set var="css" value="${css} ${elementClass}"/>
<c:if test="${menuOpenOnLoad}">
    <c:set var="css" value="${css} open"/>
</c:if>
<c:set var="buttonClass" value="${empty buttonClass ? 'default' : buttonClass}"/>
<c:set var="menuClass" value="dropdown-menu"/>
<c:if test="${menuRightAlign}">
    <c:set var="menuClass" value="${menuClass} dropdown-menu-right"/>
</c:if>

<${wrapperElementName} class="${css}" <c:if test="${not empty elementId}">id="${elementId}"</c:if> <comm:dynamicAttributes dynamicAttributes="${dynamicAttributes}" /> >
    <${buttonElementName} class="<c:if test="${buttonElementName == 'button'}"> btn btn-${buttonClass} </c:if> dropdown-toggle" ${buttonElementName == "button" ? 'type="button"' : 'href="#"' }
            <c:if test="${not empty elementId}">id="${elementId}_btn"</c:if> data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false" role="button">
        <c:out value="${title} "/>
        <span class="caret"></span>
    </${buttonElementName}>
    <ul class="${menuClass}" <c:if test="${not empty elementId}">aria-labelledby="${elementId}_btn"</c:if>>
        <comm:push value="dropdown" var="parentTagName"/>
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
</${wrapperElementName}>
