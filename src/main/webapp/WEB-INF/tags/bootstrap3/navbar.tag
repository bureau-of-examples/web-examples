<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@taglib prefix="bs3" tagdir="/WEB-INF/tags/bootstrap3" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="elementId" type="java.lang.String" %>
<%@attribute name="inverse" type="java.lang.Boolean" %>
<%@attribute name="position" type="java.lang.String" %>
<%--static-top fixed-bottom fixed-top--%>
<%@attribute name="headerTemplate" fragment="true" %>
<%@attribute name="redefineToggleButton" type="java.lang.Boolean" %>

<comm:pageUniqueId var="collapseDivId"/>
<c:set var="css" value="" />
<c:if test="${not empty position}" >
    <c:set var="css" value="${css} navbar-${position}" />
</c:if>
<c:if test="${inverse}" >
    <c:set var="css" value="${css} navbar-inverse" />
</c:if>
<nav class="navbar navbar-default ${css}" <c:if test="${not empty elementId}"> id="${elementId}"</c:if> >
    <div class="container-fluid">
        <div class="navbar-header">
            <c:if test="${not redefineToggleButton}" >
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#${collapseDivId}"
                        aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                </button>
            </c:if>

            <comm:push value="navbar" var="parentTagName"/>
            <jsp:invoke fragment="headerTemplate"/>
            <comm:pop var="parentTagName"/>
        </div>

        <div class="collapse navbar-collapse" id="${collapseDivId}">
            <comm:push value="navbar" var="parentTagName"/>
            <jsp:doBody/>
            <comm:pop var="parentTagName"/>
        </div>
    </div>
</nav>