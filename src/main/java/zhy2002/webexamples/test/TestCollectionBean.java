package zhy2002.webexamples.test;

import java.util.ArrayList;
import java.util.List;

/**
 *
 */
public class TestCollectionBean {

    private List<Car> cars;

    public TestCollectionBean(){

        cars = new ArrayList<>();
        cars.add(new Car("Toyota", "Corolla", 2015));
        cars.add(new Car("Mazda", "Mazda3", 2015));
        cars.add(new Car("Mazda", "CX-5", 2015));
        cars.add(new Car("Hyundai", "ix35", 2015));
        cars.add(new Car("Subaru", "XV", 2015));

    }

    public List<Car> getCars(){

        return cars;
    }

    public Object[] createObjectArray(){
        return new Object[0];
    }
}
