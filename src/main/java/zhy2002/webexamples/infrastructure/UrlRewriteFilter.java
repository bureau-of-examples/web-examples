package zhy2002.webexamples.infrastructure;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Objects;

/**
 * Change the request extension to the new extension.
 */
public class UrlRewriteFilter implements Filter {

    private String newExtension;

    public void init(FilterConfig filterConfig) throws ServletException {
        newExtension = filterConfig.getInitParameter("newExtension");
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        if(!(servletRequest instanceof HttpServletRequest)){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

        HttpServletRequest httpServletRequest = (HttpServletRequest)servletRequest;
        String currentUri = httpServletRequest.getRequestURI();
        if(servletRequest.getServletContext().getResource(currentUri) != null){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

        String newUri = createNewUri(currentUri);
        if(Objects.equals(currentUri, newUri)){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

        httpServletRequest.getRequestDispatcher(newUri).forward(servletRequest, servletResponse);
    }

    private String createNewUri(String oldUri){
        int index = oldUri.lastIndexOf(".");
        if(index < 0)
            return oldUri;
        return oldUri.substring(0, index + 1) + newExtension;
    }

    public void destroy() {

    }
}
/*
    How to config:
    <filter>
        <filter-name>urlRewriteFilter</filter-name>
        <filter-class>zhy2002.webexamples.infrastructure.UrlRewriteFilter</filter-class>
        <init-param>
            <param-name>newExtension</param-name>
            <param-value>jsp</param-value>
        </init-param>
    </filter>
    <filter-mapping>
        <filter-name>urlRewriteFilter</filter-name>
        <url-pattern>*.html</url-pattern>
    </filter-mapping>

 */
