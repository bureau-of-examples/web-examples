<%@tag pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@attribute name="title" type="java.lang.String" %>
<%@attribute name="headPlaceHolder" fragment="true" required="false" %>
<%@attribute name="headerPlaceHolder" fragment="true" required="false" %>
<%@attribute name="footerPlaceHolder" fragment="true" required="false" %>
<!DOCTYPE html>
<html>
<head>
    <title><c:out value="${title}" /></title>
    <%--metadata tags--%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%--css and js imports--%>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
    <%--https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css--%>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/site.css" />">

    <jsp:invoke fragment="headPlaceHolder" />
</head>
<body>

    <header>
        <nav class="site-link"><a href=" " >starloop.space</a></nav>
        <nav class="top-link"><a href="#">Links</a> | <a href="#">Blog</a> | <a href="#">Utilities</a> | <a href="#">Examples</a> | <a href="#">About</a></nav>
        <jsp:invoke fragment="headerPlaceHolder" />
    </header>

    <main>

        <section style="margin: 2em 0em; overflow: hidden;">

            <div style="text-align: center;">
                <h2 style="text-transform: uppercase; font-size: 1.5em;">consectetur adipisicing elit.</h2>
            </div>

            <div style="float: left; width:50%;">
                <div style="margin:1em;">
                    <p>Lorem ipsum dolor sit amet,  Accusantium debitis dolore excepturi quaerat
                        quisquam. Aut cupiditate eaque esse eum hic officiis repellendus sit tempora vero voluptatem. Culpa eius
                        eligendi mollitia?</p>
                </div>

            </div>

            <div style="float: right;width:50%;">

                <div style="margin: 1em;">
                <p>Aspernatur ex excepturi necessitatibus placeat rem? Architecto dignissimos iure nam nisi placeat
                    reprehenderit sapiente velit. Accusamus aspernatur, at blanditiis eius fugit in neque nesciunt porro
                    possimus quasi quidem rerum similique?</p>

                <p>Ab alias aspernatur atque beatae consectetur, ea, excepturi fugiat magni minus perspiciatis quaerat quas,
                    quisquam repellendus sequi totam vero voluptas? Ab assumenda, exercitationem facere molestiae odio omnis
                    saepe ullam unde.</p>

                </div>
            </div>

            <div style="clear: both" />

        </section>
        <div class="main-content">

        <article>
            <h1>Demo Websites</h1>

            <div class="list-group">
                <a href="simpleshop/" class="list-group-item">
                    <h4 class="list-group-item-heading">Simple Shop</h4>
                    <p class="list-group-item-text">Demo website 1.</p>
                </a>
                <a href="FitnessTracker/login.html" class="list-group-item">
                    <h4 class="list-group-item-heading">Fitness Tracker</h4>
                    <p class="list-group-item-text">Demo website 2.</p>
                </a>
                <a href="EventTracker/" class="list-group-item">
                    <h4 class="list-group-item-heading">Event Tracker</h4>
                    <p class="list-group-item-text">Demo website 3.</p>
                </a>
            </div>

        </article>

        <p>Impedit ullam, voluptatibus? Architecto, aspernatur culpa debitis ea eos facere fuga fugiat illum in iusto
            minima mollitia nemo neque non omnis optio quam repellat similique sint sit ut velit voluptas!</p>
        <jsp:doBody/>
        </div>
    </main>
    <footer>
        <jsp:invoke fragment="footerPlaceHolder"/>
    </footer>
</body>
</html>
