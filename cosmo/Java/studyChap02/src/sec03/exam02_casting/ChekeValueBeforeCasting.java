package sec03.exam02_casting;
// ������ �Ѿ���� Ȯ���ϱ����� ����Ŭ������ ����Ͽ� �Լ��� ����Ѵ�
public class ChekeValueBeforeCasting {
	public static void main(String[] args) {
		int intValue = 127; //4 byte �� ���� �ٲ㼭 �غ��� 
		
		if((intValue < Byte.MIN_VALUE) || (intValue > Byte.MAX_VALUE)) { 
			/* Byte ���� Ŭ���� ���߿� ���. MIN_VALUE, MAX_VALUE���� �ش� ���� ����Ŭ������ �ش�Ǵ��� Ȯ���Ѵ�
			 * || �̰� or ��Ÿ���� ����.����Ʈ + \
			 */
			System.out.println("Byte Ÿ������ ��ȯ�� �� �����ϴ�.");
			System.out.println("���� �ٽ� Ȯ���� �ּ���...");
		} else {
			byte byteValue = (byte) intValue;
			System.out.println(byteValue);
			
			//ppt�� �ִ� ������ ������ �κ� �ѹ� �غ���
		}
	}

}
