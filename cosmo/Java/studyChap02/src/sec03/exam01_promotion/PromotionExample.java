package sec03.exam01_promotion;
// ������ ����ȯ ����
public class PromotionExample {
	public static void main(String[] args) {
		byte byteValue = 10; //byte = 1byte
		int intValue = byteValue; // 1byte -> 4byte. ������ �߻���������. ������ ����ȭ
		System.out.println(intValue); // 10�� ���������� ��µ�
		
		char charValue = '��'; // char = 2byte
		intValue = charValue; // 2byte -> 4byte�� ���Ƿ� ���������� ����ȭ�� �Ͼ��'��'�� �����ڵ尡 ��µ�
		System.out.println("'��'�� ���ϳ�� =" + intValue);
		
		intValue = 500; //int = 4byte
		long longValue = intValue; //4byte -> 8byte ������ ����ȸ
		System.out.println(longValue); // �սǾ��� 500�� ��µ�.
		
		intValue = 200; // 4byte
		double doubleValue = intValue; // 4byte -> 8byte
		System.out.println(doubleValue);
		
		
	}

}
