package sec03_1.lambda;

public class TestMyNumber {
	public static void main(String[] args) {
		//람다식을 함수형 인터페이스 자료형 max 변수에 대입
		MyNumber max = (x, y) -> (x>=y)?x:y;
		
		int max1 = max.getMax(10, 20);
		
		System.out.println("max 값: "+max1);
		
	}

}
