package sec06.exam03_constructor_references;

import java.util.function.BiFunction;
import java.util.function.Function;

public class ConstructorReferencesExample {
	public static void main(String[] args) {
		//매개변수가 1개 있는 경우
		Function<String, Member> function1 = Member :: new;
		Member member1 = function1.apply("angel");
		
		//매게변수이 2개 있는 경우
		BiFunction<String, String, Member> function2 = Member :: new;
		Member member2 = function2.apply("신천문", "angel");
	}

}
