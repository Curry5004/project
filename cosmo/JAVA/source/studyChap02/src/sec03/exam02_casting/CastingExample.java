package sec03.exam02_casting;

public class CastingExample {
	public static void main(String[] args) {
		int intValue = 44032;
//		char charValue = intValue �����Ͽ���. 4byte -> 2byte�� �����ϴٺ��� ������Ʈ ������ ��
		char charValue = (char) intValue;
		System.out.println(charValue); // �̺κ� �ٽ��ѹ� �غ���
		
		long longValue = 500;
//		intValue = longValue; 8byte -> 4byte ������ �ַ���
		intValue = (int)longValue;
		System.out.println(intValue); //500������ 4����Ʈ�ȿ��� �� �� �־ ���ͷ� �սǾ��� �״�� 500�� ��µ�
		
		
		double doubleValue = 3.44;
//		intValue = doubleValue; double= �ε��Ҽ��� ����� 8byte�ٺ��� 8->4 �ϴ� �������� �ս��� �߻���.
		intValue = (int) doubleValue; // �̋� int Ÿ���� �Ҽ������ϸ� ����� �� ������ ����ϸ� �Ҽ��� ���� �ڸ��� ���󰣴�
		System.out.println(intValue);
		
	}

}
