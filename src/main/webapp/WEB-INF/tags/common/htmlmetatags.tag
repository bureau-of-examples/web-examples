<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" body-content="empty" %>
<%@attribute name="faviconUrl" type="java.lang.String" %>
<%@attribute name="description" type="java.lang.String" %>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:if test="${not empty description}" >
    <meta name="description" content="${f:escapeXml(description)}">
</c:if>
<c:if test="${not empty faviconUrl}" >
    <link rel="shortcut icon" href="${faviconUrl}">
</c:if>




