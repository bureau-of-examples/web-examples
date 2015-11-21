<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<%@taglib prefix="bs3" tagdir="/WEB-INF/tags/bootstrap3" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="list" class="zhy2002.webexamples.test.TestCollectionBean" scope="request"/>

<bs3:page title="Bootstrap3 JSTL Tags Test Page">
    <jsp:attribute name="headPlaceHolder">
        <link rel="icon" href="${contextPath}/img/site-icon.png"/>
    </jsp:attribute>

    <jsp:body>
        <div class="container-fluid">
            <header>
                <div class="page-header">
                    <h2>Bootstrap3 JSTL Tags Test Page</h2>
                </div>
            </header>
            <section class="main">
                <h3>Navbar Test
                    <small>multiple navbarbrands and navbarnavs</small>
                </h3>
                <div class="row">
                    <div class="col-md-12">
                        <bs3:navbar>
                            <jsp:attribute name="headerTemplate">
                                <bs3:navbarbrand>
                                    <bs3:icon name="search"/>
                                </bs3:navbarbrand>
                                <bs3:navbarbrand>
                                    <bs3:icon name="arrow-down"/>
                                </bs3:navbarbrand>
                                <bs3:navbarbrand>
                                    <bs3:icon name="file"/>
                                </bs3:navbarbrand>
                            </jsp:attribute>
                            <jsp:body>
                                <bs3:navbarnav>
                                    <li><a href="#">test1</a></li>
                                    <li><a href="#">test2</a></li>
                                    <bs3:dropdown var="item" items="${list.cars}" title="Cars">
                                        <jsp:attribute name="itemTemplate">
                                            <li><a href="#">${item}</a></li>
                                        </jsp:attribute>
                                    </bs3:dropdown>
                                </bs3:navbarnav>

                                <form class="navbar-form navbar-left" role="search">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Search">
                                    </div>
                                    <button type="submit" class="btn btn-default">Submit</button>
                                </form>

                                <bs3:navbarnav rightAlign="true">
                                    <li><a href="#">Item1</a></li>
                                    <li><a href="#">Item2</a></li>
                                </bs3:navbarnav>

                            </jsp:body>
                        </bs3:navbar>

                    </div>
                </div>

                <h3>Navbar Test
                    <small>inverse color and static top position</small>
                </h3>
                <div class="row">
                    <div class="col-md-12">
                        <bs3:navbar inverse="true" position="static-top">
                            <jsp:attribute name="headerTemplate">
                                <bs3:navbarbrand>
                                    <bs3:icon name="search"/>
                                </bs3:navbarbrand>
                                <bs3:navbarbrand>
                                    <bs3:icon name="arrow-down"/>
                                </bs3:navbarbrand>
                                <bs3:navbarbrand>
                                    <bs3:icon name="file"/>
                                </bs3:navbarbrand>
                            </jsp:attribute>
                            <jsp:body>
                                <bs3:navbarnav>
                                    <li><a href="#">test1</a></li>
                                    <li><a href="#">test2</a></li>
                                    <bs3:dropdown var="item" items="${list.cars}" title="Cars">
                                        <jsp:attribute name="itemTemplate">
                                            <li><a href="#">${item}</a></li>
                                        </jsp:attribute>
                                    </bs3:dropdown>
                                </bs3:navbarnav>

                                <form class="navbar-form navbar-left" role="search">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Search">
                                    </div>
                                    <button type="submit" class="btn btn-info">Submit</button>
                                </form>

                                <bs3:navbarnav rightAlign="true">
                                    <li><a href="#">Item1</a></li>
                                    <li><a href="#">Item2</a></li>
                                </bs3:navbarnav>

                            </jsp:body>
                        </bs3:navbar>

                    </div>
                </div>

                <hr>
                <h3>Text Formatting test
                    <small>samp, pre, kbd and code</small>
                </h3>
                <div class="row">
                    <div class="col-md-3">
                        <p>Use &lt;samp&gt; to output mono-spaced text:</p>
                        <samp>
                            fda fjoisajoiewr jiojrewio jfdlsjaf ifjewoir jifdjsao fnwerne wjhoifdu shofiusdaf
                            fda fjoisajoiewr jiojrewio jfdlsjaf ifjewoir jifdjsao fnwerne wjhoifdu shofiusdaf
                            fda fjoisajoiewr jiojrewio jfdlsjaf ifjewoir jifdjsao fnwerne wjhoifdu shofiusdaf
                        </samp>
                    </div>
                    <div class="col-md-3">
                        <pre>
Use &lt;pre&gt; to preserve original text formatting:
Lorem ipsum dolor sit amet,
consectetur adipisicing elit.
Accusamus ad atque corporis, dolore earum error
eum facilis hic molestiae, odit officiis omnis perspiciatis quod?
Error incidunt iusto ullam. Alias, eveniet?
                        </pre>
                    </div>
                    <div class="col-md-3">
                        <pre class="pre-scrollable">
Pre always with a scrollbar:
Lorem ipsum dolor sit amet, consectetur adipisicing elit.
Accusamus ad atque corporis, dolore earum error eum
facilis hic molestiae, odit officiis omnis perspiciatis quod?
Error incidunt iusto ullam. Alias, eveniet?
                        </pre>
                    </div>
                    <div class="col-md-3">
                        In text you can use <kbd>A</kbd> and <kbd>shift</kbd> to represent keys and this
                        is some <code>morse code</code>. <kbd>Ctrl + A</kbd> means 'select all'.
                        <p><strong>Variables</strong> are also formatted: <br>
                            <var>y</var> = <var>m</var><var>x</var> + <var>b</var></p>
                    </div>
                </div>

                <hr>
                <h3>Block quotes, use &lt;cite&gt; to speicify the source</h3>
                <div class="row">
                    <div class="col-md-6">
                        <bs3:blockquote
                                text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.">
                            <jsp:attribute name="footerTemplate">
                                Someone famous in <cite title="Source Title">Source Title</cite>
                            </jsp:attribute>
                        </bs3:blockquote>
                    </div>
                    <div class="col-md-6">
                        <bs3:blockquote reverse="true"
                                        text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.">
                            <jsp:attribute name="footerTemplate">
                                Someone famous in <cite title="Source Title">Source Title</cite>
                            </jsp:attribute>
                        </bs3:blockquote>
                    </div>
                </div>

                <hr>
                <h3>Alerts - dismissible alerts can be removed from dom</h3>
                <div class="row">
                    <div class="col-md-4">
                        <bs3:alert canRemove="true" elementClass="fade in">
                            <bs3:icon name="search"/> Search your pocket.
                        </bs3:alert>
                    </div>
                    <div class="col-md-4">
                        <bs3:alert canRemove="true" alertType="info">
                            <bs3:icon name="search"/> Search your pocket.
                        </bs3:alert>
                    </div>
                    <div class="col-md-4">
                        <bs3:alert alertType="warning">
                            <bs3:icon name="search"/> Search your pocket.
                        </bs3:alert>
                    </div>
                </div>

                <hr>
                <h3>Formatting tables</h3>
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
                </div>

                <hr>
                <h3>Panels</h3>
                <div class="row">
                    <div class="col-md-3">

                        <bs3:panel title="My Panel1" collapse="true">
                            This panel can collapse.
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
                    <h3>Dorpdown and dropup</h3>
                    <div class="row">
                        <div class="col-md-3">
                            <bs3:dropdown items="${list.cars}" var="item" title="Dropdown1">
                            <jsp:attribute name="itemTemplate">
                                     <li><a href="#">${item}</a></li>
                            </jsp:attribute>
                            </bs3:dropdown>
                        </div>
                        <div class="col-md-3">
                            <bs3:dropdown items="${list.cars}" var="item" title="Open On Load" buttonClass="primary"
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

                <!--vertical spacing-->
                <div style="width:1px; height:10em;"></div>
                <hr>
                <div class="row">
                    <div class="col-md-12">
                        <bs3:toolbar >
                            <bs3:buttongroup var="item" items="${list.cars}" buttonClass="default">
                            <jsp:attribute name="itemTemplate">
                                ${item.model}
                            </jsp:attribute>
                            </bs3:buttongroup>

                            <bs3:buttongroup var="item" items="${list.cars}" buttonClass="primary">
                            <jsp:attribute name="itemTemplate">
                               ${item}
                            </jsp:attribute>
                            </bs3:buttongroup>
                        </bs3:toolbar>
                    </div>
                </div>

                <hr>
                <h3>Button groups</h3>
                <div class="row">
                    <div class="col-md-3">
                        <bs3:buttongroup var="item" items="${list.cars}" isVertical="true">
                            <jsp:attribute name="buttonAttributesTemplate">
                                onclick="alert('make is ${item.make}')"
                            </jsp:attribute>
                            <jsp:attribute name="itemTemplate">
                               ${item}
                            </jsp:attribute>
                        </bs3:buttongroup>
                    </div>

                    <div class="col-md-9">
                        <bs3:buttongroup var="item" items="${list.cars}" >
                            <jsp:attribute name="itemTemplate">
                               <bs3:button>${item}</bs3:button>
                            </jsp:attribute>
                        </bs3:buttongroup>
                    </div>

                </div>

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

                <hr>
                <h3>BUtton dropdowns</h3>
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
                <hr>
                <div class="row">
                    <div style="width:1px; height:5em"></div>
                </div>
            </footer>
        </div>


    </jsp:body>
</bs3:page>
