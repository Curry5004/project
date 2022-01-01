package sec06.review;

public class ArrayInArrayExampleReview {
	public static void main(String[] args) {
		int[][] intarr1 = null;
		intarr1 = new int[][] {{12,12}, {11,123,124,524}};
		
//		int[] intarr2 = null;
//		intarr2 = new int[][] {{2,2}, {3,4,1,1}};
//		// 할당 크기가 정해진 배열의 구조는 이후 재설정 할 때 그 크기를 벗어 날 수 없다.
		
//		ArrayReferenceObjectExample review
		
		
		String[] strArray = new String[3];
		
		strArray[0] = "java";
		strArray[1] = "java";
		strArray[2] = new String("java");
		
		System.out.println(strArray[0]==strArray[1]);
		System.out.println(strArray[2]==strArray[1]);
		System.out.println(System.identityHashCode(strArray[1]));
		System.out.println(System.identityHashCode(strArray[2]));
		//new를 사용하여 객체를 사용하였을때 동일한 리터럴이라 하더라도 다른 번지를 가지게 된다
		System.out.println();
		
		//배열 복사 연습
		//EX.1 식을 꾸려서 해보자!
		
		int[] oldarr = {1,2,3};
		int[] newarr = new int[5];
		
		for (int i=0; i<oldarr.length; i++) {
			newarr[i] = oldarr[i];
			System.out.println(newarr[i]);
		}
		
		//EX.2 메소드를 사용하여 진행해보자
		//간편하다. 그러나 위처럼 메소드를 사용하지 않고도 쓰는 방법에 익숙해지자
		int[] arr1 = {1,2,3,4,5,6};
		int[] arr2 = new int[10];
		
		System.arraycopy(arr1, 0, arr2, 0, arr1.length);
		for(int i=0; i<arr2.length; i++) {
			System.out.print(arr2[i]);
		}
		
		/*이 떄 이 메소드를 사용하여 복사될 때 해당 항목의 '값'이 주소되는 것이 아니라
		해당 값을 가지고 있는 '주소'가 복사 되는 것이다. 그러므로 원본의 배열의 항목의 값이 변화하면
		그 값에 따라 복사된 항목의 값도 변화하게된다.
		이를 통하여 이 메소드를 통해 복사된 항목의 객체는 원본의 객체와 동일하다는 것을 알 수 있으며 이러한
		복사를 shaloow copy라고 한다.*/
	
		
		
		
		
		
		
		
	}

}
