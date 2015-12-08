<%@tag description="A Block quote." dynamic-attributes="dynamicAttributes" pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" body-content="empty" isELIgnored="false" deferredSyntaxAllowedAsLiteral="false" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="text" type="java.lang.String" required="true" %>
<%@attribute name="elementClass" type="java.lang.String" %>
<%@attribute name="footerTemplate" fragment="true" %>
<%@attribute name="reverse" type="java.lang.Boolean" %>

<c:if test="${reverse}" >
    <c:set var="elementClass" value="blockquote-reverse ${elementClass}" />
</c:if>

<blockquote class="${elementClass}" <comm:dynamicAttributes dynamicAttributes="${dynamicAttributes}" /> >
    <p><c:out value="${text}" /></p>
    <c:if test="${not empty footerTemplate}" >
        <jsp:invoke fragment="footerTemplate" />
    </c:if>
</blockquote>