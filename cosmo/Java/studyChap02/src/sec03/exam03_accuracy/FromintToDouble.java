package sec03.exam03_accuracy;

public class FromintToDouble {
	public static void main(String[] args) {
		int num1 = 123456780; //스탠다드
		int num2 = 123456780; //실험군
		
		double num3 = num2; // double의 정수부분은 52비트니까 문제 없이 int 범위안에 들어감
		num2 = (int) num3;
		
		int result = num1 - num2;
		System.out.println(result); // float와 다르게 0이 나오고 num1 과 num2이 같아 데이터 손실이 없는것을 확인할 수 있음
		
	}

}
