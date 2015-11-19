<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@taglib prefix="bs3" tagdir="/WEB-INF/tags/bootstrap3" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<bs3:page title="Test Page">
    <jsp:attribute name="headPlaceHolder" >
        <link rel="icon" href="${contextPath}/img/site-icon.png" />
    </jsp:attribute>

    <jsp:body>
        <div class="container-fluid">
            <header></header>
            <section class="main">
                <h1>Hi Bootstrap <bs3:icon name="search" /></h1>

                <bs3:alert >
                    <bs3:icon name="search" />  Search your pocket.
                </bs3:alert>
            </section>
            <footer>
            </footer>
        </div>



    </jsp:body>
</bs3:page>
