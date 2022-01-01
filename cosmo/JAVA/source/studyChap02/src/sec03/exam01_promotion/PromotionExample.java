package sec03.exam01_promotion;
// 묵시적 형변환 연습
public class PromotionExample {
	public static void main(String[] args) {
		byte byteValue = 10; //byte = 1byte
		int intValue = byteValue; // 1byte -> 4byte. 오류가 발생하지않음. 묵시적 형변화
		System.out.println(intValue); // 10이 정상적으로 출력됨
		
		char charValue = '가'; // char = 2byte
		intValue = charValue; // 2byte -> 4byte로 가므로 묵시적으로 형변화가 일어나며'가'의 유니코드가 출력됨
		System.out.println("'가'의 유니노드 =" + intValue);
		
		intValue = 500; //int = 4byte
		long longValue = intValue; //4byte -> 8byte 묵시적 형변회
		System.out.println(longValue); // 손실없이 500이 출력됨.
		
		intValue = 200; // 4byte
		double doubleValue = intValue; // 4byte -> 8byte
		System.out.println(doubleValue);
		
		
	}

}
