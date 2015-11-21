<%--
https://www.zenwebsolutions.com/
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="comm" uri="https://github.com/bureau-of-examples/web-examples/tags" %>
<html>
<head>
    <comm:htmlMetaTags/>
    <title>Zen Web Solutions | Home</title>
    <%-- for building layout --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/standalone.css">
    <link rel="stylesheet" href="zenweb.css">
</head>
<body>

<div class="nav-container clearfix toggleOff">
    <div class="site-logo">
        <a href="/">Zen <span>Web</span> Solutions</a>
    </div>
    <button id="trigger-overlay" class="lines-button x2" type="button" role="button" aria-label="Toggle Navigation">
        <span class="lines"></span>
    </button>
    <div class="overlay-nav">
        <nav class="main-navigation">
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="/services.html">Services</a></li>
                <li><a href="/work.html">Work</a></li>
                <li><a href="/about.html">About</a></li>
                <li><a href="/blog">Blog</a></li>
                <li><a href="/contact.html">Contact</a></li>
            </ul>
        </nav>

    </div>
    <div class="expanded-menu">
        <nav class="main-navigation">
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="/services.html">Services</a></li>
                <li><a href="/work.html">Work</a></li>
                <li><a href="/about.html">About</a></li>
                <li><a href="/blog">Blog</a></li>
                <li><a href="/contact.html">Contact</a></li>
            </ul>
        </nav>

    </div>
</div>

<div class="home-banner banner fixed-bg">
    <div class="banner-content">
        <h1 class="fade-in title">Grow <span>Your</span> Universe</h1>
    </div>
    <div class="scroll-arrow">
        <div class="square"></div>
        <div class="square"></div>
        <div class="square"></div>
        <div class="square"></div>
        <div class="square"></div>
        <div class="blank"></div>
        <div class="square"></div>
        <div class="square"></div>
        <div class="square"></div>
        <div class="blank"></div>
        <div class="blank"></div>
        <div class="blank"></div>
        <div class="square"></div>
        <div class="scroll-arrow-blink">
            <div class="b1"></div>
            <div class="b2"></div>
            <div class="b3"></div>
            <div class="b4"></div>
            <div class="b5"></div>
            <div class="b6"></div>
            <div class="b7"></div>
            <div class="b8"></div>
            <div class="b9"></div>
            <div class="b10"></div>
        </div>
    </div>
</div>
<section class="intro visible">
    <div class="container clearfix">
        <div class="row center">
            <h2 class="title h2-tag">One <span>Small</span> Step</h2>
        </div>
        <div class="row clearfix">
            <div class="col-6 col-left">
                <p>To be acquainted with success, to turn potential customers into frequent purchasers, your business
                    today insists on developing a strong digital presence.</p>

                <p>Bear in mind, a bird does not sing purely to advertise its presence, it sings simply because it has a
                    song. By bringing together emotive web design, effective search and engrossing content, you too can
                    establish a song well worth singing.</p>
            </div>
            <div class="col-6 col-right">
                <p>Zen Web Solutions provides holistic digital marketing campaigns, web development and graphic design -
                    all constructed around your primary goals and requirements.</p>

                <p>Therefore, it is vitally important we take time to converse, understand and develop a strategy to
                    accelerate growth, enhance ROI and accomplish your commercial objectives.</p>
            </div>
        </div>
        <blockquote class="center row">“Do not be frightened of expanding slowly;<span class="faux-break"></span>be
            frightened only of remaining still.”
        </blockquote>
    </div>
    <div class="services-wrapper clearfix">
        <div class="col-4 service-block design">
            <h3>Design</h3>
            <ul class="service-list">
                <li>Branding &amp; Strategy</li>
                <li>Responsive Design</li>
                <li>Wirefaming/Prototyping</li>
                <li>UX/UI Design</li>
            </ul>
        </div>
        <div class="col-4 service-block dev">
            <h3>Development</h3>
            <ul class="service-list">
                <li>Content Management Systems</li>
                <li>eCommerce</li>
                <li>App Development</li>
                <li>Custom Applications</li>
            </ul>
        </div>
        <div class="col-4 service-block dm">
            <h3>Digital Marketing</h3>
            <ul class="service-list">
                <li>Search Engine Optimisation</li>
                <li>Social Media</li>
                <li>Content Strategy</li>
                <li>Copywriting</li>
            </ul>
        </div>
    </div>
    <div class="btn-wrap center-all">
        <a href="create.html" class="btn btn-black">About our Services</a>
    </div>
</section>
<section class="current-project visible">
    <div class="container">
        <div class="row center">
            <h2 class="title h2-tag">Our <span>Latest</span> Work</h2>

            <div class="col-mid">
                <p>Some believe that an unblemished pebble is worth more than a flawed diamond. Here, at Zen Web
                    Solutions, we practise the art of turning gravel into gemstones. Our latest transformation can be
                    found below in all its glory.</p>
            </div>
        </div>
    </div>
    <div class="project-blocks-wrap clearfix">
        <div class="col-6 project-block pb-main">&nbsp;</div>
        <div class="col-6 project-block pb-blocks">
            <div class="col-6 pb pb-1">&nbsp;</div>
            <div class="col-6 pb pb-2 pb-arrow-left">
                <div class="block-center">
                    <h4 class="pb-title h2-tag">Barton Kendal</h4>

                    <div class="btn-wrap center">
                        <a href="http://www.barton-kendal.co.uk" target="_blank" class="btn btn-black btn-sml">Go to
                            website</a>
                    </div>
                </div>
            </div>
            <div class="col-6 pb pb-3 pb-arrow-right">
                <div class="block-center">
                    <ul class="pb-list">
                        <li class="bullet-orange">Full Redesign</li>
                        <li class="bullet-orange">Responsive (RWD)</li>
                        <li class="bullet-red">Bespoke Development</li>
                        <li class="bullet-red">Database Integration</li>
                    </ul>
                    <a href="barton-kendal.html" class="btn btn-black btn-sml">View case study</a>
                </div>
            </div>
            <div class="col-6 pb pb-4">&nbsp;</div>
        </div>
    </div>
</section>
<section class="get-started visible">
    <div class="container clearfix">
        <div class="row col-left">
            <h2 class="title h2-tag white">One <span>Giant</span> Leap</h2>
        </div>

        <div class="col-7 col-left">
            <p class="emphasis">Connect with us. Begin your project. Start right here.</p>

            <p>A Zen team member will receive your enquiry and then be on hand to help you set out on your online
                project journey.</p>
        </div>
        <div class="col-5 col-right">
            <div class="btn-hold right">
                <a href="salesform/" target="_blank" type="button" class="btn btn-white-on-red">Start Your Project</a>
            </div>
        </div>
    </div>
</section>
<section class="blog clearfix visible">
    <div class="col-6">
        <article>
            <a href="https://www.zenwebsolutions.com/blog/we-go-live/">
                <div class="post-title">
                    <h2 class="blog-title title">We <span>Go</span> Live</h2>

                    <h3 class="h3-tag">Meet the new Zen Web Solutions website</h3>
                </div>
                <img src="img/blog3.jpg">
            </a>
        </article>
    </div>
    <div class="col-6">
        <article>
            <a href="https://www.zenwebsolutions.com/blog/websites-recently-launched/">
                <div class="post-title">
                    <h2 class="blog-title title">Websites <span>Recently</span> Launched</h2>

                    <h3 class="h3-tag">Just a handful of our work</h3>
                </div>
                <img src="img/blog4.jpg">
            </a>
        </article>
    </div>
</section>
<section class="clients visible">
    <div class="client-logo-wrap clearfix">
        <div class="col-3 client-logo">
            <span class="c-l c-l1"></span>
        </div>
        <div class="col-3 client-logo">
            <span class="c-l c-l2"></span>
        </div>
        <div class="col-3 client-logo">
            <span class="c-l c-l3"></span>
        </div>
        <div class="col-3 client-logo">
            <span class="c-l c-l4"><a target="_blank" href="http://www.burston.co.uk/"></a></span>
        </div>
        <div class="col-3 client-logo">
            <span class="c-l c-l5"></span>
        </div>
        <div class="col-3 client-logo">
            <span class="c-l c-l6"><a target="_blank" href="http://www.holroyd.com/"></a></span>
        </div>
        <div class="col-3 client-logo">
            <span class="c-l c-l7"></span>
        </div>
        <div class="col-3 client-logo">
            <span class="c-l c-l8"></span>
        </div>
        <div class="col-3 client-logo">
            <span class="c-l c-l9"><a target="_blank" href="http://www.lanesfordrains.co.uk/"></a></span>
        </div>
        <div class="col-3 client-logo">
            <span class="c-l c-l10"><a target="_blank" href="http://www.brownmac.com/"></a></span>
        </div>
        <div class="col-3 client-logo">
            <span class="c-l c-l11"></span>
        </div>
        <div class="col-3 client-logo">
            <span class="c-l c-l12"></span>
        </div>
    </div>
</section>
<section class="join-us fixed-bg visible">
    <div class="container clearfix">
        <div class="row col-left">
            <h2 class="title h2-tag">Join <span>Our</span> Universe</h2>
        </div>

        <div class="col-7 col-left">
            <p class="emphasis">We're always on the lookout for new astronauts...</p>
        </div>
        <div class="col-5 col-right">
            <a href="mailto:careers@zeninternet.com?subject=I'm interested in Job Vacancies at ZWS" type="button"
               class="btn btn-white-on-red">Send Your CV</a>
        </div>
    </div>
</section>

<footer>
    <div class="container clearfix">
        <div class="col-3 footer-social">
            <div class="site-logo">
                <a href="/">Zen <span>Web</span> Solutions</a>
            </div>
            <ul class="fs-icons">
                <li><a href="https://twitter.com/zws" class="fsi-twitter hide-txt" target="_blank">twitter</a></li>
                <li><a href="https://www.facebook.com/zenwebsolutions" class="fsi-facebook hide-txt" target="_blank">facebook</a>
                </li>
                <li><a href="https://www.linkedin.com/company/478691" class="fsi-linkedin hide-txt" target="_blank">linkedin</a>
                </li>
                <li><a href="http://instagram.com/zenwebsolutions" class="fsi-instagram hide-txt" target="_blank">instagram</a>
                </li>
            </ul>
        </div>
        <div class="col-4">
            <p class="footer-address">Sandbrook Park, Sandbrook House,<br>Rochdale, OL11 1RY</p>

            <p>Phone: <strong><span style="visibility: visible;"
                                    class="footer-tel rTapNumber164031">+44 (0)1706 508963</span></strong></p>
        </div>
        <div class="col-5">
            <div class="footer-email">
                <p>
                    <span>General:</span>
                    <a href="mailto:sayhello@zenwebsolutions.com">sayhello@zenwebsolutions.com</a>
                </p>

                <p>
                    <span>New Business:</span>
                    <a href="mailto:salesteam@zenwebsolutions.com">salesteam@zenwebsolutions.com</a>
                </p>

                <p class="f-link">© 2015 Zen Web Solutions | <a href="/privacy.html">Privacy</a> | <a
                        href="/legal.html">Legal</a> | <a href="/sitemap.html">Site Map</a></p>
            </div>
        </div>
    </div>
</footer>


</body>
</html>
