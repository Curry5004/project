package sec05.exam02_consumer;

//Consumer Class�� ��ġ
import java.util.function.BiConsumer;//�ΰ� �Ű��� �Һ�
import java.util.function.Consumer; //��ü�� �޾� �Һ�

import java.util.function.DoubleConsumer;//DOUBLE ���� �޾� �Һ�
import java.util.function.ObjIntConsumer; //��ü�� �������� �޾Ƽ� �Һ�

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
