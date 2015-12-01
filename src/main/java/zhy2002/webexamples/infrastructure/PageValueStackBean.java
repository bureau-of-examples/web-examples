package zhy2002.webexamples.infrastructure;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Stack;

/**
 * Request level value stacks used in jsp view.
 * This bean maintains a map of stacks.
 */
public class PageValueStackBean {

    private Map<String, Stack<Object>> storage = new HashMap<>();

    public void push(String key, Object value) {
        if (!storage.containsKey(key)) {
            storage.put(key, new Stack<>());
        }
        storage.get(key).push(value);
    }

    public Object peek(String key) {
        if (!storage.containsKey(key))
            return null;
        return storage.get(key).peek();
    }

    public Object pop(String key) {
        if (!storage.containsKey(key))
            return null;
        return storage.get(key).pop();
    }

    /**
     * Check if the stack with the given name exists.
     * @param key the stack name.
     * @return true if the stack has been used.
     */
    public boolean exists(String key) {
        return storage.containsKey(key);
    }
}
