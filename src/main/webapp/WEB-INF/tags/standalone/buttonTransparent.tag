<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" dynamic-attributes="dynamicAttributes" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@attribute name="elementClass" type="java.lang.String" %>
<%@attribute name="url" type="java.lang.String" %>

<a class="btn-transparent ${elementClass}" type="button" href="${f:escapeXml(url)}" <comm:dynamicAttributes dynamicAttributes="${dynamicAttributes}" /> >
    <jsp:doBody />
</a>