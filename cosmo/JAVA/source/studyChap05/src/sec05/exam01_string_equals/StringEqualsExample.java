package sec05.exam01_string_equals;

public class StringEqualsExample {
	public static void main(String[] args) {
		String strVar1 = "ȫ�浿";
		String strVar2 = "ȫ�浿";
		
		System.out.println("strVar1 : "+System.identityHashCode(strVar1));
		System.out.println("strVar2 : "+System.identityHashCode(strVar2));
		// �� ��Ʈ�� ��ü���� ����ڵ�(�ּ�)�� �����ϴ�
		
		if(strVar1 == strVar2) {
			System.out.println("strVar1�� strVar2�� ������ ����");
		}else {
			System.out.println("strVar1�� strVar2�� ������ �ٸ�");
		}
		
		String strVar3 = new String("ȫ�浿");
		String strVar4 = new String("ȫ�浿");
		
		
		System.out.println("strVar3 : "+System.identityHashCode(strVar3));
		System.out.println("strVar4 : "+System.identityHashCode(strVar4));
		
		if(strVar3 == strVar4) {
			System.out.println("strVar3�� strVar4�� ������ ����");
		}else {
			System.out.println("strVar3�� strVar4�� ������ �ٸ�");
		}
		// ���� ȫ�浿�̶�� ��ü�� ��� �ϴ��� ���ο� ��Ʈ�� ��ü�� �����Ǿ��� ������ ���� �ٸ� �ν��Ͻ��� �� ������ �����Ǿ��� ������ ������ �ٸ��ٰ� ���´�
		
		if(strVar3.equals(strVar4)) { //���ڿ��� ������ Ȯ���Ѵ�
			System.out.println("strVar3�� strVar4�� ���ڿ��� ����");
			
			
		String strVar5 = "hobby"; //�̶� �� ������ ������ hobby ��ü�� GC�� ���� ���ŵȴ�
		strVar5 = null;
		System.out.println(strVar5==null);
		}
	}

}
