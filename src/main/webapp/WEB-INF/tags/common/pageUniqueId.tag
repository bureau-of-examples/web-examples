<%-- generate a unique id in the page --%>
<%@tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="https://github.com/bureau-of-examples/web-examples/functions" %>

<%@attribute name="var" type="java.lang.String" rtexprvalue="false" required="true" %>
<%@ variable alias="result" name-from-attribute="var" scope="AT_END" %>
<jsp:useBean id="pageUniqueId" class="java.util.concurrent.atomic.AtomicInteger" scope="page" />

<c:set var="result" value="${pageUniqueId.andIncrement}" />

