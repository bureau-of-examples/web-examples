<%@tag description="A toolbar is a container of button groups." pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" dynamic-attributes="dynamicAttributes" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags"%>

<%@attribute name="title" type="java.lang.String" %>
<%@attribute name="elementClass" type="java.lang.String" %>

<div class="btn-toolbar ${elementClass}" role="toolbar" <c:if test="${not empty title}"> aria-label="${title}" </c:if> <comm:dynamicAttributes dynamicAttributes="${dynamicAttributes}" /> >
    <comm:push value="buttongroup" var="parentTagName" />
    <jsp:doBody />
    <comm:pop var="parentTagName" />
</div>