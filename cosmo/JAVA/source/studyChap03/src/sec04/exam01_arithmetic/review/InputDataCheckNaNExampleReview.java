package sec04.exam01_arithmetic.review;
//NaN을 확인 하는 프로그램을 만들고 해당 값이 들어오면 입금을 중지하는 프로그램을 만들자
public class InputDataCheckNaNExampleReview {
	public static void main(String[] args) {
		String input = "NaN";
		double val = Double.valueOf(input);
		
//		double val = 1.1; // 해당 값으로 바꾸면 NaN 처리되지 않고 정상적으로 연산이 된다
		
		double currentBalance = 10000.0;
		
		if(Double.isNaN(val)) {
			System.out.println("NaN값이 입력 되어 처리할 수 없습니다.");
			val = 0.0;
		}
		
		currentBalance += val;
		System.out.println(currentBalance);
	}

}
