package sec04.exam01_objects;

import java.util.Objects;

public class ToStringExmaple {
	public static void main(String[] args) {
		String str1 = "홍길동";
		String str2 = null;
		
		System.out.println(Objects.toString(str1));
		System.out.println(Objects.toString(str2));
		System.out.println(Objects.toString(str2, "변수값이 널값입니다"));
	}
}
