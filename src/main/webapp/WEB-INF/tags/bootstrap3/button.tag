<%@tag description="A button." dynamic-attributes="dynamicAttributes" pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" body-content="scriptless" isELIgnored="false" deferredSyntaxAllowedAsLiteral="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags"%>

<%@attribute name="buttonType" type="java.lang.String" description="default danger warning primary info" %>
<%@attribute name="elementClass" type="java.lang.String" %>

<c:set var="buttonType" value="${empty buttonType ? 'default' : buttonType}" />

<button class="btn btn-${buttonType}${" "}${elementClass}" <comm:dynamicAttributes dynamicAttributes="${dynamicAttributes}" /> >
    <comm:push value="button" var="parentTagName" />
    <jsp:doBody />
    <comm:pop var="parentTagName" />
</button>