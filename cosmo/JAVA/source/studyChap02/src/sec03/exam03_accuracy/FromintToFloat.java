package sec03.exam03_accuracy;

public class FromintToFloat { 
	public static void main(String[] args) {
		int num1 = 123456780; // 비교 기준값
		int num2 = 123456780; // 조작값
		
		float num3 = num2; 
		// int= 32bit float의 가수(정수부분)부에 할당된 비트는 23bit이다. 그러므로 같은 매모리를 할당된거처럼 보이지만 이 차이떄문에 데이터가 손실이 발생한다
		
		num2 = (int) num3;
		
		int result = num1 - num2; //만약 두 값이 같다면 0이 나와야하는데
		System.out.println(result); //결과는 4가 나옴. 왜? 아까 말했던 것 처럼 플로트에 변경되는 과정에서 손실이 발생하기 떄문
		
		
	}
}
