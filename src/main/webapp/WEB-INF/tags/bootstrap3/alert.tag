<%@tag description="An dismissable alert." dynamic-attributes="dynamicAttributes" pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" body-content="scriptless" isELIgnored="false" deferredSyntaxAllowedAsLiteral="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags"%>

<%@attribute name="alertType" type="java.lang.String" %>
<%@attribute name="elementClass" type="java.lang.String" %>
<%@attribute name="canRemove" type="java.lang.Boolean" %>

<c:set var="alertType" value="${empty alertType ? 'danger' : alertType}" />
<c:if test="${canRemove}" >
    <c:set var="elementClass" value="alert-dismissible ${elementClass}" />
</c:if>
<div class="alert alert-${alertType} ${empty elementClass ? '' : ' '} ${elementClass}" role="alert" <comm:dynamicAttributes dynamicAttributes="${dynamicAttributes}" /> >
    <c:if test="${canRemove}" >
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </c:if>
    <comm:push value="alert" var="parentTagName" />
    <jsp:doBody />
    <comm:pop var="parentTagName" />
</div>