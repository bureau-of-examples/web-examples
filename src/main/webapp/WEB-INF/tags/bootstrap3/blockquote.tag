<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="elementId" type="java.lang.String" %>
<%@attribute name="text" type="java.lang.String"  %>
<%@attribute name="footerTemplate" fragment="true" %>
<%@attribute name="reverse" type="java.lang.Boolean" %>

<blockquote <c:if test="${not empty elementId}">id="${elementId}"</c:if> <c:if test="${reverse}"> class="blockquote-reverse"</c:if> >
    <p><c:out value="${text}" /></p>
    <c:if test="${not empty footerTemplate}" >
        <jsp:invoke fragment="footerTemplate" />
    </c:if>
</blockquote>