<%@tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="https://github.com/bureau-of-examples/web-examples/functions" %>

<%-- peek the top of the request level value stack of var.--%>
<%@attribute name="var" type="java.lang.String" rtexprvalue="false" required="true" %>
<%@ variable alias="result" name-from-attribute="var" scope="AT_END" %>

<jsp:useBean id="stackMap" class="zhy2002.webexamples.infrastructure.PageValueStackBean" scope="request" />
<c:set var="result" value="${f:peek(stackMap, '_'.concat(var))}" />