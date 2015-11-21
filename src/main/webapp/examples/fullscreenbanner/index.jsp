<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Full Screen Banner Example</title>
    <link rel="stylesheet" href="${contextPath}/components/normalize-css/normalize.css">
    <link rel="stylesheet" href="css/site.css">
</head>
<body>
<div>
    <header>
        <div class="home-banner">
            <div class="top-left-content">Top left content</div>
            <div class="top-right-content">Top right content</div>
            <div class="center-content">
                <h3>Full-screen Banner -
                    <small>home-banner class must be applied to the first static positioned element.</small>
                </h3>
            </div>
            <div class="bottom-left-content">Bottom left content</div>
            <div class="bottom-right-content">Do you know the relationship between overflow:hidden and float?</div>
        </div>
    </header>
    <section>
        <div style="padding: 2em 8em">
            <h4>Below is some random text for layout purpose</h4>

            <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus alias aspernatur at, autem dicta
                ducimus eius eos et ex, explicabo iste labore, laboriosam molestiae nemo omnis quidem quod recusandae
                voluptates.
            </div>
            <div>Alias autem ducimus et minima officiis praesentium temporibus voluptate voluptatem? Ab, illum quisquam.
                Nihil officiis quam rerum, temporibus totam veniam voluptate voluptatem! Consequuntur dicta distinctio
                eligendi ipsam quibusdam sed tempora.
            </div>
            <div>Commodi, debitis, doloribus error fugiat ipsum labore laudantium nobis optio qui, vero voluptatem
                voluptatibus. Accusantium aliquam animi ducimus ex, explicabo fuga minus perferendis, quibusdam, sed
                unde ut
                voluptas voluptatibus voluptatum!
            </div>
            <div>Ab aliquam amet, atque beatae corporis debitis delectus dolores dolorum eaque exercitationem facilis
                fuga
                illo impedit ipsum iusto laudantium magni nostrum optio perspiciatis quae repudiandae sapiente sed
                soluta
                sunt tempora.
            </div>
            <div>Aliquid atque culpa dolorem ducimus eius eveniet explicabo fugiat fugit illo illum incidunt iusto
                labore,
                maxime minima neque officia reprehenderit repudiandae similique sint tempora tempore velit veritatis
                voluptas voluptate voluptatibus.
            </div>
            <div>Asperiores distinctio doloremque, eligendi explicabo fugiat laborum libero molestiae nam, nesciunt
                provident saepe temporibus. Amet, dolorem fuga ipsum itaque labore maxime minus molestiae nam natus
                pariatur
                quod rerum saepe totam!
            </div>
            <div>A distinctio ea ipsam maiores pariatur perferendis recusandae. A adipisci beatae commodi eius explicabo
                nesciunt nulla optio quibusdam ratione saepe. Aliquid consequuntur cum delectus deserunt ducimus illum,
                magni possimus quae?
            </div>
            <div>Accusantium, repellendus, voluptatum. Dolor molestiae placeat similique. Assumenda corporis, ea esse
                hic
                numquam vitae? Accusantium cum delectus dolorem eaque eligendi excepturi id laboriosam necessitatibus,
                nostrum nulla quidem sint ut voluptatibus!
            </div>
            <div>Aut dolores dolorum ex facilis hic id in labore natus nemo obcaecati officiis pariatur porro quam,
                quas,
                qui tenetur voluptas! Aspernatur eaque iste magnam nam non optio porro ut, veniam.
            </div>
            <div>Adipisci aliquid aut blanditiis consectetur cum dignissimos, dolore doloremque eum explicabo fuga
                fugiat
                labore laborum minima neque nulla omnis possimus qui quis rem repellat similique, sint ullam unde veniam
                voluptate.
            </div>
        </div>
    </section>
    <footer>

    </footer>
</div>
</body>
</html>
