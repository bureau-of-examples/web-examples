<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="items" type="java.util.HashSet" required="true" %>
<%@attribute name="var" type="java.lang.String" required="true" rtexprvalue="false" %>
<%@attribute name="itemTemplate" fragment="true" required="false" %>
<%@variable alias="item" name-from-attribute="var" variable-class="java.lang.String" scope="NESTED" %>

<div class="dropup">
    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Dropup
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
        <c:forEach  items="${items}" var="item"  >
            <jsp:invoke fragment="itemTemplate" />
        </c:forEach>
    </ul>
</div>
