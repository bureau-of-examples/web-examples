<%@tag description="A dismissable alert." dynamic-attributes="dynamicAttributes" body-content="scriptless" pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" isELIgnored="false" deferredSyntaxAllowedAsLiteral="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags"%>

<%@attribute name="alertType" type="java.lang.String" description="Bootstrap defines danger, warning, info, success" %>
<%@attribute name="elementClass" type="java.lang.String" %>
<%@attribute name="dismissable" type="java.lang.Boolean" %>

<c:set var="alertType" value="${empty alertType ? 'danger' : alertType}" />
<c:if test="${dismissable}" >
    <c:set var="elementClass" value="alert-dismissible ${elementClass}" />
</c:if>
<div class="alert alert-${alertType} ${empty elementClass ? '' : ' '} ${elementClass}" role="alert" <comm:dynamicAttributes dynamicAttributes="${dynamicAttributes}" /> >
    <c:if test="${dismissable}" >
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </c:if>

    <comm:push value="alert" var="parentTagName" />
    <jsp:doBody />
    <comm:pop var="parentTagName" />
</div>