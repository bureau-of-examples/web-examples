package zhy2002.webexamples.infrastructure;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

/**
 * Request level value queue maps used in jsp view.
 * This bean maintains a map of queues.
 */
public class PageValueQueueBean {

    private Map<String, Queue<Object>> storage = new HashMap<>();

    public void enqueue(String key, Object value){
        if(!storage.containsKey(key)){
            storage.put(key, new LinkedList<>());
        }
        Queue<Object> queue = storage.get(key);
        queue.add(value);
    }

    public Object dequeue(String key){
        if(!storage.containsKey(key))
            return null;
        return storage.get(key).poll();
    }

    public Object head(String key){
        if(!storage.containsKey(key))
            return null;
        return storage.get(key).peek();
    }

    public boolean exists(String key){
        return storage.containsKey(key);
    }
}
