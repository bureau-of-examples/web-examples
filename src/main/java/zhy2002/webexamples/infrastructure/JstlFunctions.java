package zhy2002.webexamples.infrastructure;

import java.util.EmptyStackException;

/**
 * The backing class for the jstl functions.
 */
public class JstlFunctions {

    public static void push(PageValueStackBean stackMap, String key, Object value) {
        stackMap.push(key, value);
    }

    public static Object pop(PageValueStackBean stackMap, String key) {
        return stackMap.pop(key);
    }

    public static Object peek(PageValueStackBean stackMap, String key) {
        try {
            return stackMap.peek(key);
        } catch (EmptyStackException ex){
            throw new IllegalArgumentException("Cannot peek when stack is empty; stack name is: " + key, ex);
        }
    }

    public static boolean exists(PageValueStackBean stackMap, String key){
        return stackMap.exists(key);
    }
}
