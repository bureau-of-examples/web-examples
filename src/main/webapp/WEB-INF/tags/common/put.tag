<%@tag pageEncoding="UTF-8" language="java" body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="https://github.com/bureau-of-examples/web-examples/functions" %>

<%-- push a value onto the the request level value stack of var.--%>
<%@attribute name="key" type="java.lang.Object" required="true" %>
<%@attribute name="value" type="java.lang.Object" required="true" %>

<jsp:useBean id="objectMap" class="zhy2002.webexamples.infrastructure.PageValueQueueBean" scope="request" />

${f:put(objectMap, key, value)}