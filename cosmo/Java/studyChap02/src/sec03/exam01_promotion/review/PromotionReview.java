package sec03.exam01_promotion.review;

public class PromotionReview {
	public static void main(String[] args) {
		byte byteValue = 10;
		int intValue = byteValue; //1바이트에서 32바이트로 이동하는 것이니 자동적으로 넘어감
		System.out.println(intValue);
		
		System.out.println();
		
		char charValue = 'A';
		intValue = charValue;//2바이트에서 4바이트로 넘어가는거니 자동적으로 넘어감
		System.out.println(intValue);//char에서 int 넘어갈때 자동적 형변환이 넘어가는 것을 알 수 있으며 이와 동시에 해당 글자의 아스키코드도 알 수 있다.
		
		intValue = 500;
		long longValue = intValue;
		System.out.println(longValue);//문제없음
		
		/*longValue = 10000000000L;
		intValue = (int) longValue;
		System.out.println(intValue); //int의 범위를 넘어선 정수를 int로 변환시킬때 발생하는 데이터 손실.
*/		
		intValue = 200;
		double doubleValue = intValue;
		System.out.println(doubleValue);//4->8바이트. 정상적으로 변환됨. 그러나 double의 정수부에 할당된 메모리보다 높은 값이 올 경위 위의 주석처럼 데이터 손상이 발생함
		
	}

}
