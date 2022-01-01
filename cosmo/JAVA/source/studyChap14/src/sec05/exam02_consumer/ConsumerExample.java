package sec05.exam02_consumer;

//Consumer Class의 위치
import java.util.function.BiConsumer;//두개 매개값 소비
import java.util.function.Consumer; //객체를 받아 소비

import java.util.function.DoubleConsumer;//DOUBLE 값을 받아 소비
import java.util.function.ObjIntConsumer; //객체와 정수값을 받아서 소비

public class ConsumerExample {
	public static void main(String[] args) {
		Consumer<String> consumer = t -> System.out.println(t+" 8");
		consumer.accept("java");
		
		BiConsumer<String, String> biconsumer = (t, u) -> System.out.println(t+u);
		biconsumer.accept("java", "8");
		
		DoubleConsumer doubleConsumer = d -> System.out.println("Java"+d);
		doubleConsumer.accept(8.0);
		
		ObjIntConsumer<String> objIntConsumer = (t, i) -> System.out.println(t+i);
		objIntConsumer.accept("java", 8);
	}
}
