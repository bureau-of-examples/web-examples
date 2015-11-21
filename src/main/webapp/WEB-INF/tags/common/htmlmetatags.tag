<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" body-content="empty" %>
<%@attribute name="faviconUrl" type="java.lang.String" %>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:if test="${not empty faviconUrl}" >
    <link rel="shortcut icon" href="${faviconUrl}">
</c:if>


