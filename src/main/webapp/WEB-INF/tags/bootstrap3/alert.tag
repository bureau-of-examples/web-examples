<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="alertType" type="java.lang.String" %>
<%@attribute name="elementClass" type="java.lang.String" %>

<c:set var="alertType" value="${empty alertType ? 'danger' : alertType}" />

<div class="alert alert-${alertType} ${elementClass}" role="alert">
    <jsp:doBody />
</div>