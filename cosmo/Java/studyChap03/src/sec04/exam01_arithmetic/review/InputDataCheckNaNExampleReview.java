package sec04.exam01_arithmetic.review;
//NaN�� Ȯ�� �ϴ� ���α׷��� ����� �ش� ���� ������ �Ա��� �����ϴ� ���α׷��� ������
public class InputDataCheckNaNExampleReview {
	public static void main(String[] args) {
		String input = "NaN";
		double val = Double.valueOf(input);
		
//		double val = 1.1; // �ش� ������ �ٲٸ� NaN ó������ �ʰ� ���������� ������ �ȴ�
		
		double currentBalance = 10000.0;
		
		if(Double.isNaN(val)) {
			System.out.println("NaN���� �Է� �Ǿ� ó���� �� �����ϴ�.");
			val = 0.0;
		}
		
		currentBalance += val;
		System.out.println(currentBalance);
	}

}
