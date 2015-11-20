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
                                <bs3:dropdown var="item" items="${list.cars}" title="Cars" dropup="true" >
                                    <jsp:attribute name="itemTemplate">
                                     <li><a href="#">${item}</a></li>
                                    </jsp:attribute>
                                </bs3:dropdown>
                            </jsp:attribute>
                        </bs3:buttongroupframe>
                    </div>
                    <div class="col-md-6">
                        <bs3:buttongroupframe isJustified="true">
                            <jsp:attribute name="contentTemplate" >
                                <bs3:buttongroupframe>
                                    <jsp:attribute name="contentTemplate" >
                                        <bs3:button>
                                            Button1
                                        </bs3:button>
                                    </jsp:attribute>
                                </bs3:buttongroupframe>

                                <bs3:buttongroupframe>
                                    <jsp:attribute name="contentTemplate" >
                                        <bs3:button>
                                            Button2
                                        </bs3:button>
                                    </jsp:attribute>
                                </bs3:buttongroupframe>

                                <bs3:buttongroupframe>
                                    <jsp:attribute name="contentTemplate" >
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
                        <bs3:buttondropdown var="item" items="${list.cars}" title="Cars" split="true" >
                            <jsp:attribute name="itemTemplate" >
                                <li><a href="#">${item.model}</a></li>
                            </jsp:attribute>
                        </bs3:buttondropdown>

                        <bs3:buttondropdown var="item" items="${list.cars}" title="Cars" size="lg" >
                            <jsp:attribute name="itemTemplate" >
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
