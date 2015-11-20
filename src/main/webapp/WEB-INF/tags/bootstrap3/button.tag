<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags"%>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="elementId" type="java.lang.String" %>
<%@attribute name="buttonClass" type="java.lang.String" %>
<c:set var="buttonClass" value="${empty buttonClass ? 'default' : buttonClass}" />

<button class="btn btn-${buttonClass}" <c:if test="${not empty elementId}">id="${elementId}"</c:if> >
    <comm:push value="button" var="parentTagName" />
    <jsp:doBody />
    <comm:pop var="parentTagName" />
</button>