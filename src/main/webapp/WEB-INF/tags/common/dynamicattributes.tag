<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="dynamicAttributes" type="java.util.Map" required="true" %>

<c:if test="${not empty dynamicAttributes}" >
    <c:forEach items="${dynamicAttributes}" var="attr" >
        ${" " + attr.key}="${f:escapeXml(attr.value)}" ${" "}
    </c:forEach>
</c:if>

