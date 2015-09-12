<%@tag pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="title" type="java.lang.String" %>
<!DOCTYPE html>
<html>
<head>
    <%--metadata tags--%>
    <meta charset="UTF-8">

    <%--css and js imports--%>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
    <%--https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css--%>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/site.css" />">

    <title>${title}</title>
</head>
<body>
<div>
    <header></header>
    <nav></nav>
    <main>
        <article>
            <h1>This is the title</h1>
            <div>this is some random text</div>
            <div>this is some random text</div>
            <div>this is some random text</div>
            <div>this is some random text</div>
            <div>this is some random text</div>
        </article>
    </main>
    <footer></footer>
</div>
</body>
</html>
