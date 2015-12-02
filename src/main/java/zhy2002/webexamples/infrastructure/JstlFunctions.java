package zhy2002.webexamples.infrastructure;

import java.util.Deque;
import java.util.EmptyStackException;
import java.util.LinkedList;

/**
 * The backing class for the JSTL functions.
 */
public class JstlFunctions {

    public static void push(PageValueStackBean stackMap, String key, Object value) {
        stackMap.push(key, value);
    }

    public static Deque<Object> pushQueue(PageValueStackBean stackMap, String queueName) {
        LinkedList<Object> queue = new LinkedList<>();
        push(stackMap, queueName, queue);
        return queue;
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

    @SuppressWarnings("unchecked")
    public static void enqueue(PageValueStackBean stackMap, String queueName, Object value){
        Deque queue = (Deque)peek(stackMap, queueName);
        queue.addLast(value);
    }

    @SuppressWarnings("unchecked")
    public static Object dequeue(PageValueStackBean stackMap, String queueName){
        Deque queue = (Deque)peek(stackMap, queueName);
        return queue.pollFirst();
    }

}
