package sec03.exam01_promotion.review;

public class PromotionReview {
	public static void main(String[] args) {
		byte byteValue = 10;
		int intValue = byteValue; //1����Ʈ���� 32����Ʈ�� �̵��ϴ� ���̴� �ڵ������� �Ѿ
		System.out.println(intValue);
		
		System.out.println();
		
		char charValue = 'A';
		intValue = charValue;//2����Ʈ���� 4����Ʈ�� �Ѿ�°Ŵ� �ڵ������� �Ѿ
		System.out.println(intValue);//char���� int �Ѿ�� �ڵ��� ����ȯ�� �Ѿ�� ���� �� �� ������ �̿� ���ÿ� �ش� ������ �ƽ�Ű�ڵ嵵 �� �� �ִ�.
		
		intValue = 500;
		long longValue = intValue;
		System.out.println(longValue);//��������
		
		/*longValue = 10000000000L;
		intValue = (int) longValue;
		System.out.println(intValue); //int�� ������ �Ѿ ������ int�� ��ȯ��ų�� �߻��ϴ� ������ �ս�.
*/		
		intValue = 200;
		double doubleValue = intValue;
		System.out.println(doubleValue);//4->8����Ʈ. ���������� ��ȯ��. �׷��� double�� �����ο� �Ҵ�� �޸𸮺��� ���� ���� �� ���� ���� �ּ�ó�� ������ �ջ��� �߻���
		
	}

}
