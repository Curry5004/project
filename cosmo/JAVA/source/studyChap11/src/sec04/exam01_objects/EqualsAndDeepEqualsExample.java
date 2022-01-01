package sec04.exam01_objects;

import java.util.Arrays;
import java.util.Objects;

public class EqualsAndDeepEqualsExample {
	public static void main(String[] args) {
		Integer o1 = 1000;
		Integer o2 = 1000;
		System.out.println(Objects.equals(o1, o2));
		System.out.println(Objects.equals(o1, null));
		System.out.println(Objects.equals(null, o2));
		System.out.println(Objects.equals(null, null));
		System.out.println(Objects.deepEquals(o1, o2) + "\n");
		
		Integer[] arr1 = {1,2};
		Integer[] arr2 = {1,2};
		System.out.println(Objects.equals(arr1, arr2));
		//왜? equals는 주소값만 비교하기 떄문에 서로 다른 주소값을 가지는 둘은 일치하지 않는다.
		
		System.out.println(Objects.deepEquals(arr1, arr2));
		//알맹이에 있는 값을 비교하므로 일치함
		System.out.println(Arrays.deepEquals(arr1, arr2));
		//어레이 안에 있는 알맹이를 비교할 때도 사용할 수 있음
		System.out.println(Arrays.deepEquals(null, arr2));
		System.out.println(Arrays.deepEquals(arr1, null));
		System.out.println(Arrays.deepEquals(null, null));
		//어레이 안에 있는 알맹이를 비교할 때도 사용할 수 있음
	}
			

}
