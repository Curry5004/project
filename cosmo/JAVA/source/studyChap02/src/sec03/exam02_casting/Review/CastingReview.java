package sec03.exam02_casting.Review;

public class CastingReview {
	public static void main(String[] args) {
		int intValue = 2000000000;
		char charValue = (char)intValue;
		System.out.println(charValue);
		System.out.println((int)charValue);
		// �����̳� �޸� ������ ���� int(4byte) -> char(2byte)�� �Ѿ�µ� �׳� ���Ѿ�� �ɽ����� �����̰ŴϿ� �����͵� 2����Ʈ�� �ʰ��Ͽ� ������ �սǵ� �߻�
		
		long longValue = 500;
		intValue = (int)longValue;
		System.out.println(intValue);
		//8byte -> 4byte ������ longValue�� ���� 4byte�� �ʰ������ʾ� ����� ������
		
		double doubleValue = 3.12;
		intValue = (int)doubleValue;
		System.out.println(intValue);
		// int�� �������� ��������� �Ҽ��� �Ʒ��κ��� ������� ����
		
		float floatValue;
		floatValue = (float)doubleValue;
		System.out.println(floatValue);
		// �Ǽ����� �ٲ㺽
		
		
		
	}

}
//211021