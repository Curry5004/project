package sec03.exam03_accuracy;

public class FromintToFloat { 
	public static void main(String[] args) {
		int num1 = 123456780; // �� ���ذ�
		int num2 = 123456780; // ���۰�
		
		float num3 = num2; 
		// int= 32bit float�� ����(�����κ�)�ο� �Ҵ�� ��Ʈ�� 23bit�̴�. �׷��Ƿ� ���� �Ÿ𸮸� �Ҵ�Ȱ�ó�� �������� �� ���̋����� �����Ͱ� �ս��� �߻��Ѵ�
		
		num2 = (int) num3;
		
		int result = num1 - num2; //���� �� ���� ���ٸ� 0�� ���;��ϴµ�
		System.out.println(result); //����� 4�� ����. ��? �Ʊ� ���ߴ� �� ó�� �÷�Ʈ�� ����Ǵ� �������� �ս��� �߻��ϱ� ����
		
		
	}
}
