package sec03.exam04_operation;

public class OperationPromotionExample {
	public static void main(String[] args) {
		byte byteValue1 = 10;
		byte byteValue2 = 20;
		
//		byte byteValue3 = byteValue1 + byteValue2; 이렇게 하면 안됨
		int intValue1 = byteValue1 + byteValue2;
		System.out.println(intValue1);
		
		char charValue1 = 'A';
		char charValue2 = 1;
//		char charValue3 = charValue1 + charValue2; 이 계산을 진행할때 자동으로 int 타입으로 변환되어 계산이 단됨
		int intValue2 = charValue1 + charValue2;
		System.out.println("유니코드 = " + intValue2);
		System.out.println("출력문자 = " + (char)intValue2);
		
		int intValue3 = 10;
		int intValue4 = intValue3 / 4; //int은 정수만 지원 그러므로 2.5의 소숫점은 제거된다
		System.out.println(intValue4); //2만 출력된다
		
		int intValue5 = 10;
//		int intValue6 = 10 / 4.0; 컴파일 애러가 난다. 왜? 4.0이 부동소숫점 숫자인데 정수타입인 int로 하려다 보니 컴파일 에러가 난다
		double doubleValue = intValue5 / 4.0; // 부동소숫점 기본인 double 타입을 사용하여 계싼할 수 있음
		System.out.println(doubleValue); // 제대로 나온다
		
		
	}

}
