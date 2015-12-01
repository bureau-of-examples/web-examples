<%@tag pageEncoding="UTF-8" language="java" body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="https://github.com/bureau-of-examples/web-examples/functions" %>
<%@ taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@attribute name="key" type="java.lang.Object" required="true" %>
<%@attribute name="var" type="java.lang.String" rtexprvalue="false" required="true" %>
<%-- pop the request level value stack of var.--%>
<%@ variable alias="result" name-from-attribute="var" scope="AT_END" %>

<jsp:useBean id="objectMap" class="zhy2002.webexamples.infrastructure.PageValueQueueBean" scope="request" />

<c:set var="result" value="${f:get(objectMap, key)}" />