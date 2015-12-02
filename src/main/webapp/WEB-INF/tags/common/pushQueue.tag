<%@tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="https://github.com/bureau-of-examples/web-examples/functions" %>

<%-- push a value onto the the request level value stack of var.--%>
<%@attribute name="var" rtexprvalue="false" type="java.lang.String" required="true" %>
<%@ variable alias="result" variable-class="java.util.Deque" name-from-attribute="var" scope="AT_END" %>

<jsp:useBean id="stackMap" class="zhy2002.webexamples.infrastructure.PageValueStackBean" scope="request" />

<c:set var="result" value="${f:pushQueue(stackMap, '_'.concat(var))}" />


