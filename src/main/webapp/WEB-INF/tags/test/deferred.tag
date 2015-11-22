<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" deferredSyntaxAllowedAsLiteral="false" %>
<%@attribute name="value" deferredValue="true" deferredValueType="java.lang.Integer" required="true" %>
<%@attribute name="notDeferredValue"  %>
<%@attribute name="deferredMethod" deferredMethod="true" deferredMethodSignature="java.lang.String method()" %>
<%--<%@attribute name="elContext" type="javax.el.ELContext " %>--%>

<c:set var="abc" value="3" />
The result is: ${value} and ${notDeferredValue}
<c:if test="${not empty deferredMethod}" >
 <h3>${deferredMethod.getExpressionString()}</h3>
    <div>
        <jsp:useBean id="car" class="zhy2002.webexamples.test.Car" />
        <jsp:setProperty name="car" property="make" value="Mazda" />
        <jsp:useBean id="list" class="zhy2002.webexamples.test.TestCollectionBean" />
        ${deferredMethod.invoke(pageContext.getELContext(), list.createObjectArray())}
    </div>
</c:if>
<c:set var="abc" value="4" />
The result is: ${value} and ${notDeferredValue}