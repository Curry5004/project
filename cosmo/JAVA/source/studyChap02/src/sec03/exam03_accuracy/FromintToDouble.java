package sec03.exam03_accuracy;

public class FromintToDouble {
	public static void main(String[] args) {
		int num1 = 123456780; //���Ĵٵ�
		int num2 = 123456780; //���豺
		
		double num3 = num2; // double�� �����κ��� 52��Ʈ�ϱ� ���� ���� int �����ȿ� ��
		num2 = (int) num3;
		
		int result = num1 - num2;
		System.out.println(result); // float�� �ٸ��� 0�� ������ num1 �� num2�� ���� ������ �ս��� ���°��� Ȯ���� �� ����
		
	}

}
