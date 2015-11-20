<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags"%>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="alertType" type="java.lang.String" %>
<%@attribute name="elementClass" type="java.lang.String" %>

<c:set var="alertType" value="${empty alertType ? 'danger' : alertType}" />

<div class="alert alert-${alertType} ${elementClass}" role="alert">
    <comm:push value="alert" var="parentTagName" />
    <jsp:doBody />
    <comm:pop var="parentTagName" />
</div>