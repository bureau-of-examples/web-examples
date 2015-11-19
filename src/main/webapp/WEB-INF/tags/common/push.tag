<%@tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="https://github.com/bureau-of-examples/web-examples/functions" %>

<%-- push a value onto the the request level value stack of var.--%>
<%@attribute name="value" required="true" %>
<%@attribute name="var" rtexprvalue="false" type="java.lang.String" required="true" %>
<%@ variable alias="result" name-from-attribute="var" scope="AT_END" %>

<jsp:useBean id="stackMap" class="zhy2002.webexamples.infrastructure.PageValueStackBean" scope="request" />

${f:push(stackMap, '_'.concat(var), value)}
<c:set var="result" value="${value}" />


