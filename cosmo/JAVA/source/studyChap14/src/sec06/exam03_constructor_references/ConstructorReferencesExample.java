package sec06.exam03_constructor_references;

import java.util.function.BiFunction;
import java.util.function.Function;

public class ConstructorReferencesExample {
	public static void main(String[] args) {
		//�Ű������� 1�� �ִ� ���
		Function<String, Member> function1 = Member :: new;
		Member member1 = function1.apply("angel");
		
		//�ŰԺ����� 2�� �ִ� ���
		BiFunction<String, String, Member> function2 = Member :: new;
		Member member2 = function2.apply("��õ��", "angel");
	}

}
