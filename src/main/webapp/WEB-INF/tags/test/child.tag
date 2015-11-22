<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="part1" fragment="true" required="true" %>
<%@attribute name="part2" fragment="true" required="true" %>

<jsp:useBean id="state" class="zhy2002.webexamples.test.Car" scope="request"/>

<c:if test="${not empty state.make}" >
    <jsp:invoke fragment="part2" />
</c:if>
<c:if test="${empty state.make}" >
    <jsp:invoke fragment="part1" />
    <jsp:setProperty name="state" property="make" value="part2" />
</c:if>

