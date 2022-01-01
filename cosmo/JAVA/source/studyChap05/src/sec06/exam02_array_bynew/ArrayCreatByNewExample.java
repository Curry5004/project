package sec06.exam02_array_bynew;

public class ArrayCreatByNewExample {
	public static void main (String[] args) {
		int[] arr1 = new int[3];
		for(int i=0; i<arr1.length;i++) {
			System.out.println("intarr1["+i+"] : " + arr1[i]);// int[]의 초기값은 0을 가지고 있는 것을 확인 할 수 있다
		}
		System.out.println();
		arr1[0] = 10;
		arr1[1] = 20;
		arr1[2] = 30;
		for(int i=0; i<arr1.length;i++) {
			System.out.println("intarr1["+i+"] : " + arr1[i]); // 배열의 주소값에 위세서 설정한 숫자가 입력되어있다
		}
		System.out.println();
		
		double[] arr2 = new double[3];
		for(int i=0; i<arr2.length;i++) {
			System.out.println("doublearr2["+i+"] : " + arr2[i]);
		}
		
		arr2[0] = 0.1;
		arr2[1] = 0.2;
		arr2[2] = 0.3;
		for(int i=0; i<arr2.length; i++) {
			System.out.println("doublearr2["+i+"] : "+arr2[i]);
		}
		System.out.println();
		String[] arr3 = new String [3];
		for(int i=0; i<arr3.length;i++) {
			System.out.println("Stringarr3["+i+"] : "+arr3[i]); //string 타입의 기본형은 null임을 확인 할 수 있다
		}
		arr3[0] = "10월";
		arr3[1] = "11월";
		arr3[2] = "12월";
		for(int i = 0; i<arr3.length; i++) {
			System.out.println("Stringarr3["+i+"] : "+arr3[i]);
		}
			
	}

}
