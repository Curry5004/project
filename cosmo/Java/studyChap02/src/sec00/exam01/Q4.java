package sec00.exam01;

public class Q4 {
	public static void main(String[] args) {
		int num1 = 10;
		double num2 = 2.0;
		
		System.out.println((int)(num1 + num2));
		System.out.println((int)(num1 / num2));
		System.out.println((int)(num1 * num2));
		System.out.println((int)(num1 - num2));
		System.out.println((int)(num2 - num1)); // ������ ���������� �۵���
		System.out.println((int)(num2 / num1)); // ����ȯ �Ǿ� 0.2 -> 0�� ��
		System.out.println(num1-num1); /* Ÿ������ double Ÿ������ ��. Ư���� ��� ���� �ʾ������� �ұ��ϰ� 
		�޸��� ũ�Ⱑ ū double Ÿ������ �Ѿ. �̰��� ������ ����ȯ*/
		
		/* �׽�Ʈ*/
		
		int num3 = 20/2;
		System.out.println((int)(num3 / num2)); // int������ �ĵ� ����� �� �ִ�.
		
		int num4 = 20/3; //�����Ҷ����� ������ �ƴϸ�? 
		System.out.println(num4); // ������ ����� �� ó�� ���� ������� ����Ǹ� ������ ǥ���ϴ� int�� Ư���� �Ҽ��κ��� ���ŵȴ�.

				
	}

}
