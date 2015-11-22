<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/test" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Test Page</title>
</head>
<body>
<h1>This is parent</h1>

<div>
    <t:parent>
            <jsp:attribute name="childTag">
                <t:child>
                    <jsp:attribute name="part1">
                        This is part 1
                    </jsp:attribute>
                    <jsp:attribute name="part2">
                        This is part 2
                    </jsp:attribute>
                </t:child>
            </jsp:attribute>
    </t:parent>
</div>

<hr>

<h1>Deferred test</h1>

<div>
    <c:set var="abc" value="1"/>
    <t:deferred value="#{abc+1}" notDeferredValue="${abc+1}"/>
</div>

<h1>Deferred method test</h1>

<div>
<jsp:useBean id="car" class="zhy2002.webexamples.test.Car"/>
<jsp:setProperty name="car" property="make" value="Toyota"/>
<t:deferred value="#{2}" deferredMethod="#{car.getMake}" parentPageContext="${pageContext}" />
</div>
</body>
</html>