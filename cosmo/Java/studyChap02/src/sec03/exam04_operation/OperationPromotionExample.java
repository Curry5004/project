package sec03.exam04_operation;

public class OperationPromotionExample {
	public static void main(String[] args) {
		byte byteValue1 = 10;
		byte byteValue2 = 20;
		
//		byte byteValue3 = byteValue1 + byteValue2; �̷��� �ϸ� �ȵ�
		int intValue1 = byteValue1 + byteValue2;
		System.out.println(intValue1);
		
		char charValue1 = 'A';
		char charValue2 = 1;
//		char charValue3 = charValue1 + charValue2; �� ����� �����Ҷ� �ڵ����� int Ÿ������ ��ȯ�Ǿ� ����� �ܵ�
		int intValue2 = charValue1 + charValue2;
		System.out.println("�����ڵ� = " + intValue2);
		System.out.println("��¹��� = " + (char)intValue2);
		
		int intValue3 = 10;
		int intValue4 = intValue3 / 4; //int�� ������ ���� �׷��Ƿ� 2.5�� �Ҽ����� ���ŵȴ�
		System.out.println(intValue4); //2�� ��µȴ�
		
		int intValue5 = 10;
//		int intValue6 = 10 / 4.0; ������ �ַ��� ����. ��? 4.0�� �ε��Ҽ��� �����ε� ����Ÿ���� int�� �Ϸ��� ���� ������ ������ ����
		double doubleValue = intValue5 / 4.0; // �ε��Ҽ��� �⺻�� double Ÿ���� ����Ͽ� ����� �� ����
		System.out.println(doubleValue); // ����� ���´�
		
		
	}

}
