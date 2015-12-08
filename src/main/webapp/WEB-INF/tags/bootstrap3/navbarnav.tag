<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="rightAlign" type="java.lang.Boolean" %>
<%--This is used in navbar body--%>
<c:set var="css" value="navbar-left" />
<c:if test="${rightAlign}" >
    <c:set var="css" value="${css} navbar-right" />
</c:if>

<ul class="nav navbar-nav ${css}">
    <jsp:doBody />
</ul>
