<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@taglib prefix="bs3" tagdir="/WEB-INF/tags/bootstrap3" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="list" class="zhy2002.webexamples.test.TestCollectionBean" scope="request"/>


<bs3:page title="Test Page">
    <jsp:attribute name="headPlaceHolder">
        <link rel="icon" href="${contextPath}/img/site-icon.png"/>
    </jsp:attribute>

    <jsp:body>
        <div class="container-fluid">
            <header></header>
            <section class="main">
                <h2>Hi Test Page <bs3:icon name="search"/></h2>

                <bs3:alert>
                    <bs3:icon name="search"/> Search your pocket.
                </bs3:alert>

                <div class="row">
                    <div class="col-md-3">
                        <bs3:tableframe title="My Table">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Score</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>John</td>
                                <td>100</td>
                            </tr>
                            <tr>
                                <td>Jack</td>
                                <td>90</td>
                            </tr>
                            <tr>
                                <td>Jane</td>
                                <td>95</td>
                            </tr>
                            </tbody>
                        </bs3:tableframe>
                    </div>
                    <div class="col-md-3">
                        <bs3:tableframe title="Decorated" bordered="true" striped="true" howverRows="true">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Score</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>John</td>
                                <td>100</td>
                            </tr>
                            <tr>
                                <td>Jack</td>
                                <td>90</td>
                            </tr>
                            <tr>
                                <td>Jane</td>
                                <td>95</td>
                            </tr>
                            </tbody>
                        </bs3:tableframe>
                    </div>
                    <div class="col-md-3">
                        <bs3:tableframe elementClass="primary">
                            <jsp:attribute name="panelHeadingTemplate">
                                This is a table
                            </jsp:attribute>
                            <jsp:body>
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Score</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>John</td>
                                    <td>100</td>
                                </tr>
                                <tr>
                                    <td>Jack</td>
                                    <td>90</td>
                                </tr>
                                <tr>
                                    <td>Jane</td>
                                    <td>95</td>
                                </tr>
                                </tbody>
                            </jsp:body>
                        </bs3:tableframe>
                    </div>
                    <div class="col-md-3">
                        <bs3:tableframe elementClass="info" condensed="true" striped="true" collapse="true">
                            <jsp:attribute name="panelHeadingTemplate">
                                <h3 class="panel-title cursor-pointer" data-toggle="collapse"
                                    data-target="#${collapseDivId}">
                                    Mid-term Exam Result
                                    <div class="pull-right collapse-icon">
                                        <bs3:icon name="menu-left"/>
                                    </div>
                                    <div class="pull-right expand-icon">
                                        <bs3:icon name="menu-down"/>
                                    </div>
                                </h3>
                            </jsp:attribute>
                            <jsp:attribute name="panelBodyTemplate">
                                This exam is a very easy one. But if you want to collapse a table you have to handle it yourself.
                            </jsp:attribute>
                            <jsp:body>
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Score</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>John</td>
                                    <td>100</td>
                                </tr>
                                <tr>
                                    <td>Jack</td>
                                    <td>90</td>
                                </tr>
                                <tr>
                                    <td>Jane</td>
                                    <td>95</td>
                                </tr>
                                </tbody>
                            </jsp:body>
                        </bs3:tableframe>
                        </h3>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-3">


                            <bs3:panel title="My Panel1" collapse="true">
                                This is a panel which can collapse.
                            </bs3:panel>

                        </div>

                        <div class="col-md-3">

                            <bs3:panel>
                                Hello world!
                            </bs3:panel>

                        </div>

                        <div class="col-md-3">

                            <bs3:panel>
                            <jsp:attribute name="footerTemplate">
                                This one has footer.
                            </jsp:attribute>
                                <jsp:body>
                                    Hello world!
                                </jsp:body>
                            </bs3:panel>

                        </div>

                        <div class="col-md-3">

                            <bs3:panel icon="knight">
                            <jsp:attribute name="headerTemplate">
                                <a href="#">Test</a>
                            </jsp:attribute>
                                <jsp:body>
                                    A panel with icon.
                                </jsp:body>
                            </bs3:panel>

                        </div>

                    </div>

                    <hr>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3">
                                <bs3:dropdown items="${list.cars}" var="item" title="Dropdown1">
                            <jsp:attribute name="itemTemplate">
                                     <li><a href="#">${item}</a></li>
                            </jsp:attribute>
                                </bs3:dropdown>
                            </div>
                            <div class="col-md-3">
                                <bs3:dropdown items="${list.cars}" var="item" title="Dropdown2" buttonClass="primary"
                                              menuOpenOnLoad="true">
                            <jsp:attribute name="itemTemplate">
                                     <li class="disabled"><a href="#">${item}</a></li>
                            </jsp:attribute>
                                </bs3:dropdown>
                            </div>
                            <div class="col-md-3">
                                <bs3:dropdown items="${list.cars}" var="item" title="Dropup1" dropup="true">
                            <jsp:attribute name="itemTemplate">
                                     <li><a href="#">${item}</a></li>
                            </jsp:attribute>
                                </bs3:dropdown>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="btn-toolbar" role="toolbar" aria-label="...">

                                <bs3:buttongroup var="item" items="${list.cars}" buttonClass="primary">
                            <jsp:attribute name="itemTemplate">
                                ${item.model}
                            </jsp:attribute>
                                </bs3:buttongroup>

                                <bs3:buttongroup var="item" items="${list.cars}" size="sm">
                            <jsp:attribute name="itemTemplate">
                               ${item}
                            </jsp:attribute>
                                </bs3:buttongroup>

                            </div>
                        </div>
                    </div>

                    <br>

                    <div class="row">
                        <div class="col-md-2">
                            <bs3:buttongroup var="item" items="${list.cars}" isVertical="true">
                            <jsp:attribute name="itemTemplate">
                               ${item}
                            </jsp:attribute>
                            </bs3:buttongroup>
                        </div>

                        <div class="col-md-10">
                            <bs3:buttongroup var="item" items="${list.cars}" wrapItem="false">
                            <jsp:attribute name="itemTemplate">
                               <bs3:button>${item}</bs3:button>
                            </jsp:attribute>
                            </bs3:buttongroup>
                        </div>

                    </div>

                    <br>

                    <div class="row">
                        <div class="col-md-6">
                            <bs3:buttongroupframe>
                            <jsp:attribute name="contentTemplate">
                                <bs3:button>
                                    Button1
                                </bs3:button>
                                <bs3:button>
                                    Button2
                                </bs3:button>
                                <bs3:dropdown var="item" items="${list.cars}" title="Cars" dropup="true">
                                    <jsp:attribute name="itemTemplate">
                                     <li><a href="#">${item}</a></li>
                                    </jsp:attribute>
                                </bs3:dropdown>
                            </jsp:attribute>
                            </bs3:buttongroupframe>
                        </div>
                        <div class="col-md-6">
                            <bs3:buttongroupframe isJustified="true">
                            <jsp:attribute name="contentTemplate">
                                <bs3:buttongroupframe>
                                    <jsp:attribute name="contentTemplate">
                                        <bs3:button>
                                            Button1
                                        </bs3:button>
                                    </jsp:attribute>
                                </bs3:buttongroupframe>

                                <bs3:buttongroupframe>
                                    <jsp:attribute name="contentTemplate">
                                        <bs3:button>
                                            Button2
                                        </bs3:button>
                                    </jsp:attribute>
                                </bs3:buttongroupframe>

                                <bs3:buttongroupframe>
                                    <jsp:attribute name="contentTemplate">
                                        <bs3:button>
                                            Button3
                                        </bs3:button>
                                    </jsp:attribute>
                                </bs3:buttongroupframe>
                            </jsp:attribute>
                            </bs3:buttongroupframe>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <bs3:buttondropdown var="item" items="${list.cars}" title="Cars" split="true">
                            <jsp:attribute name="itemTemplate">
                                <li><a href="#">${item.model}</a></li>
                            </jsp:attribute>
                            </bs3:buttondropdown>

                            <bs3:buttondropdown var="item" items="${list.cars}" title="Cars" size="lg">
                            <jsp:attribute name="itemTemplate">
                                <li><a href="#">${item.model}</a></li>
                            </jsp:attribute>
                            </bs3:buttondropdown>
                        </div>
                    </div>
            </section>
            <footer>
            </footer>
        </div>


    </jsp:body>
</bs3:page>
