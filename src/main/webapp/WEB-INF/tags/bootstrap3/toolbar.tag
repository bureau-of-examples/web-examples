<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags"%>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="elementId" type="java.lang.String" %>
<%@attribute name="title" type="java.lang.String" %>
<%@attribute name="elementClass" type="java.lang.String" %>
<%--
    Container of button groups.
--%>
<div class="btn-toolbar ${elementClass}" role="toolbar" <c:if test="${not empty title}"> aria-label="${title}" </c:if> <c:if test="${not empty elementId}"> id="${elementId}" </c:if>  >
    <comm:push value="buttongroup" var="parentTagName" />
    <jsp:doBody />
    <comm:pop var="parentTagName" />
</div>