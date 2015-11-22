<%@tag pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@attribute name="childTag" fragment="true"  required="true" %>

<div>
    <h2>Render part1</h2>
    <div><jsp:invoke fragment="childTag" />
    </div>
    <h2>Render part2</h2>
    <div><jsp:invoke fragment="childTag" />
    </div>
</div>