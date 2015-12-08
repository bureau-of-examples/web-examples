<%@tag description="A glyphicon." dynamic-attributes="dynamicAttributes" pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" body-content="empty" isELIgnored="false" deferredSyntaxAllowedAsLiteral="false" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="name" type="java.lang.String" required="true" description="Name of the  glyphicon (the part after glyphicon-)." %>
<%@attribute name="elementClass" type="java.lang.String" description="" %>

<span class="glyphicon glyphicon-${name} ${elementClass}" aria-hidden="true" <comm:dynamicAttributes dynamicAttributes="${dynamicAttributes}" /> ></span>