<%@tag description="A tabpage in tabframe." dynamic-attributes="dynamicAttributes" pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" body-content="scriptless" isELIgnored="false" deferredSyntaxAllowedAsLiteral="false" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@attribute name="headLabel" required="true" description="Header label which is put in the corresponding tab header if headerTemplate is empty." %>
<%@attribute name="tabPaneId" description="Id of the tab-pane." %>
<%@attribute name="isActive" type="java.lang.Boolean" description="One of the tab pages should be active." %>
<%@attribute name="headTemplate" fragment="true" %>

<comm:peek var="parentTagName" />
<c:choose>
    <c:when test="${parentTagName == 'tabframe-head'}" >

        <c:if test="${empty tabPaneId}" >
            <comm:pageUniqueId var="tabPaneId" />
            <comm:enqueue queueName="autoIdQueue" value="${tabPaneId}" />
        </c:if>

        <li role="presentation" ${isActive ? ' class="active"  ' : ''} >
            <a href="#${tabPaneId}" <c:if test="${not empty headLabel}" > aria-controls="${headLabel}" </c:if>  role="tab" data-toggle="tab">
                <c:choose>
                    <c:when test="${not empty headTemplate}" >
                        <jsp:invoke fragment="headTemplate" />
                    </c:when>
                    <c:otherwise>
                        <c:out value="${headLabel}" />
                    </c:otherwise>
                </c:choose>
            </a>
        </li>
    </c:when>
    <c:otherwise>

        <c:if test="${empty tabPaneId}" >
            <comm:dequeue queueName="autoIdQueue" var="tabPaneId" />
        </c:if>

        <div role="tabpanel" class="tab-pane ${isActive ? 'active' : ''}" id="${tabPaneId}">
            <jsp:doBody />
        </div>
    </c:otherwise>
</c:choose>