package sec02.eaxm01_arraylist;

import java.util.Arrays;
import java.util.List;

public class ArrayAsList {
	public static void main(String[] args) {
		List<String> list = Arrays.asList("홍길동", "신용권", "감자바");
		for(String name : list) {
			System.out.print(name);
		}
		
		
		System.out.println();
		List<Integer>/*제네릭은 오브젝트 타입만 들어 갈 수 있다. int(X)Integer(o)*/ list2 = Arrays.asList(1,2,3);
		for(int value:list2) {
			System.out.print(value);
		}
	}

}
