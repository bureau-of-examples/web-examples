<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@taglib prefix="bs3" tagdir="/WEB-INF/tags/bootstrap3" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="list" class="java.util.HashSet" />
<%
    list.add("111");
    list.add("33323");
    list.add("245344322");
    list.add("xxx");
%>

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

                <bs3:dropdown items="${list}" var="tt"  >
                    <jsp:attribute name="itemTemplate">
                             <li><a href="#">${tt}</a></li>
                    </jsp:attribute>
                 </bs3:dropdown>


            </section>
            <footer>
            </footer>
        </div>



    </jsp:body>
</bs3:page>
