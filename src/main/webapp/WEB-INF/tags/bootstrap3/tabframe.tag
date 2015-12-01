<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="elementId" type="java.lang.String" %>
<%@attribute name="elementClass" type="java.lang.String" %>

<jsp:useBean id="queue" class="java.util.LinkedList" />

<div <c:if test="${not empty elementId}">id="${elementId}"</c:if> <c:if test="${not empty elementClass}"> class="${elementClass}" </c:if>  >

    <comm:push value="${queue}" var="autoIdQueue" />
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">

        <comm:push var="parentTagName" value="tabframe-head" />
            <jsp:doBody />
        <comm:pop var="parentTagName" />
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">

        <comm:push  var="parentTagName" value="tabframe-body" />
            <jsp:doBody />
        <comm:pop var="parentTagName" />

    </div>
    <comm:pop var="autoIdQueue" />
</div>