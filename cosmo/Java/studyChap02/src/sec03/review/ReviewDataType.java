package sec03.review;

public class ReviewDataType {
	public static void main(String[] args) {
		int num1 = 412;
//		int num2 = 3000000000 //�̰� ���� ���� ��. why? int�� ������ �Ѿ��� ����
		/*long num3 = 3000000000; 
		�̴�� ġ�� �� ������ �ַ���. ��? �⺻���� int�ε� long���� �ٲ�����ϱ� �ڿ�L�� ����������� */
		long num4 = 3000000000L;
		long num5 = 13; //�̰� �ڿ� L �Ⱥٿ��൵ ��. �ֳ�? 13�� int �������ԵǾ� �ִ� ���̱⿡ �� ū ������ long�� ���� �ڵ� ����ȯ�� �ȴ�
		
		System.out.println(num1);
		System.out.println(num4);
		System.out.println(num5);
		
//		float fnum1 = 3.14; �̋� �ַ���. �⺻������ double�� ó���ϴµ� double�� �� �� �ִ� �Ǽ��� float�� �ϴϱ� F�� �־������
		float fnum2 = 3.14F;
		
		
	}

}
