package sec03.exam02_casting.Review;

public class CastingReview {
	public static void main(String[] args) {
		int intValue = 2000000000;
		char charValue = (char)intValue;
		System.out.println(charValue);
		System.out.println((int)charValue);
		// 가뜩이나 메모리 범위가 넓은 int(4byte) -> char(2byte)로 넘어가는데 그냥 못넘어가서 케스팅은 물론이거니와 데이터도 2바이트를 초과하여 데이터 손실도 발생
		
		long longValue = 500;
		intValue = (int)longValue;
		System.out.println(intValue);
		//8byte -> 4byte 하지만 longValue의 값이 4byte를 초과하지않아 출력은 정상적
		
		double doubleValue = 3.12;
		intValue = (int)doubleValue;
		System.out.println(intValue);
		// int는 정수만을 취급함으로 소숫점 아래부분은 취급하지 않음
		
		float floatValue;
		floatValue = (float)doubleValue;
		System.out.println(floatValue);
		// 실수끼리 바꿔봄
		
		
		
	}

}
//211021