<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="headTemplate" fragment="true" required="true" %>

<comm:peek var="parentTagName" />
<c:choose>
    <c:when test="${parentTagName == 'tabframe-head'}" >
        <jsp:invoke fragment="headTemplate" />
    </c:when>
    <c:otherwise>
        <jsp:doBody />
    </c:otherwise>
</c:choose>