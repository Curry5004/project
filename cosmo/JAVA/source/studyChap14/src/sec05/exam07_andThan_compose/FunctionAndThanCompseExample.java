package sec05.exam07_andThan_compose;

import java.util.function.Function;

public class FunctionAndThanCompseExample {
	public static void main(String[] args) {
		Function<Member, Address> functionA;
		Function<Address, String> functionB;
		Function<Member, String> functionAB;
		String city;
		
		functionA = m -> m.getAddress();
		functionB = a -> a.getCity();
		
		functionAB = functionA.andThen(functionB);
		city= functionAB.apply(new Member("ȫ�浿", "hong123", new Address("�ѱ�", "����")));
		System.out.println("ȫ�浿�� ���� ����: "+city);
		
		functionAB=functionB.compose(functionA);
		city= functionAB.apply(new Member("ȫ�浿", "hong123", new Address("�ѱ�", "����")));
		System.out.println("ȫ�浿�� ���� ����: "+city);
		
	}

}
