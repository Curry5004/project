package sec03.exam02_casting;

public class CastingExample {
	public static void main(String[] args) {
		int intValue = 44032;
//		char charValue = intValue 컴파일에러. 4byte -> 2byte로 가려하다보니 컴포토트 에러가 남
		char charValue = (char) intValue;
		System.out.println(charValue); // 이부분 다시한번 해보기
		
		long longValue = 500;
//		intValue = longValue; 8byte -> 4byte 컴파일 애러남
		intValue = (int)longValue;
		System.out.println(intValue); //500정도는 4바이트안에서 들어갈 수 있어서 리터러 손실없이 그대로 500이 출력됨
		
		
		double doubleValue = 3.44;
//		intValue = doubleValue; double= 부동소수점 방식의 8byte다보니 8->4 하는 과정에서 손실이 발생함.
		intValue = (int) doubleValue; // 이떄 int 타입은 소숫점이하를 출력할 수 없으니 출력하면 소숫점 이하 자리는 날라간다
		System.out.println(intValue);
		
	}

}
