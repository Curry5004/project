package sec02.eaxm01_arraylist;

import java.util.Arrays;
import java.util.List;

public class ArrayAsList {
	public static void main(String[] args) {
		List<String> list = Arrays.asList("ȫ�浿", "�ſ��", "���ڹ�");
		for(String name : list) {
			System.out.print(name);
		}
		
		
		System.out.println();
		List<Integer>/*���׸��� ������Ʈ Ÿ�Ը� ��� �� �� �ִ�. int(X)Integer(o)*/ list2 = Arrays.asList(1,2,3);
		for(int value:list2) {
			System.out.print(value);
		}
	}

}
