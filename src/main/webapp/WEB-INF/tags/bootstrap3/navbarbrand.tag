<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="url" type="java.lang.String" %>
<%--This is used in navbar headerTemplate--%>
<c:set var="url" value="${empty url ? '#' : url}" />

<a class="navbar-brand" href="${url}">
    <jsp:doBody />
</a>