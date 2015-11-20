<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@ taglib prefix="bs3" tagdir="/WEB-INF/tags/bootstrap3" %>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="title" type="java.lang.String" %>
<%@attribute name="icon" type="java.lang.String" %>
<%@attribute name="elementClass" type="java.lang.String" %>
<%@attribute name="headerClass" type="java.lang.String" %>
<%@attribute name="elementId" type="java.lang.String" %>
<%@attribute name="collapse" type="java.lang.Boolean" %>
<%@attribute name="headerTemplate" fragment="true" %>
<%@attribute name="footerTemplate" fragment="true" %>
<%@variable name-given="collapseDivId" variable-class="java.lang.String" scope="NESTED" %>

<c:set var="elementClass" value="${empty elementClass ? 'default' : elementClass}"/>
<c:if test="${collapse}">
    <comm:pageUniqueId var="collapseDivId"/>
    <c:set var="collapseDivId" value="_auto_id${collapseDivId}"/>
</c:if>
<c:if test="${empty headerClass and collapse}">
    <c:set var="headerClass" value="cursor-pointer"/>
</c:if>
<div
        <c:if test="${not empty elementId}">id="${elementId}"</c:if> class="panel panel-${elementClass}">
    <c:if test="${not empty headerTemplate or not empty title}">
        <div class="panel-heading">
            <h3 class="panel-title ${empty headerClass ? '' : headerClass}" <c:if
                    test="${collapse}"> data-toggle="collapse" data-target="#${collapseDivId}" </c:if> >

                <c:if test="${not empty icon}">
                    <bs3:icon name="${icon}"/>
                    <c:out value=" "/>
                </c:if>

                <c:if test="${not empty title}">
                    <c:out value="${title}"/>
                </c:if>
                <comm:push value="panel" var="parentTagName"/>
                <c:if test="${not empty headerTemplate}">
                    <jsp:invoke fragment="headerTemplate"/>
                </c:if>
                <comm:pop var="parentTagName"/>

                <c:if test="${collapse}">
                    <div class="pull-right collapse-icon">
                        <bs3:icon name="menu-left"/>
                    </div>
                    <div class="pull-right expand-icon">
                        <bs3:icon name="menu-down"/>
                    </div>
                </c:if>
            </h3>

                <%--<a class="btn btn-default" href="#" >Click To--%>
                <%--Toggle</a>--%>
        </div>
    </c:if>
    <c:if test="${collapse}">
    <div id="${collapseDivId}" class="panel-collapse in">
     </c:if>
        <div class="panel-body">
            <comm:push value="panel" var="parentTagName"/>
            <jsp:doBody/>
            <comm:pop var="parentTagName"/>
        </div>
        <c:if test="${collapse}">
    </div>
    </c:if>

    <c:if test="${not empty footerTemplate}">
        <div class="panel-footer">
            <comm:push value="panel" var="parentTagName"/>
            <jsp:invoke fragment="footerTemplate"/>
            <comm:pop var="parentTagName"/>
        </div>
    </c:if>

</div>