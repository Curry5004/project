package sec03.exam03_toString;

import java.util.Date;

public class SmartPhoneExample {
	public static void main(String[] args) {
		SmartPhone myPhone = new SmartPhone("����", "�ȵ���̵�");
		
		
		String strObj = myPhone.toString();
		System.out.println("strObj:"+strObj);
		
		System.out.println(myPhone);
		//�̷��� ���� ����Ʈ�� �޼ҵ尡 �ڵ����� ������.
		//�׳� ��ü �̸��� ���� �ڵ����� toString�� ����ִ�!!
		//�׷��� �̸��� ġ�� ��ü�� �ּҰ��� �׳� ����!��
		//override �����ʰ� �׳� ���� ��ü�� �ּҰ��� ������.
		//�׳� Ŭ���� �̸��� ����ϸ� ����Ʈ���� �⺻���� ���ٰ� �����ϸ� �ɵ�
		
		//�׷��Ƿ� Ŭ���� �̸��� ����ϴ� ��Ȳ(default�� toString()�� ��������)���� 
		//�ǹ� �ִ� ���� ��� �ϱ� ���ؼ� Ŭ�������� �ش� �޼ҵ带 �������̵� �ؼ� ����� �ʿ伺�� �ִ�
		
		
		Object obj1 = new Object();
		System.out.println(obj1);
		//�׳� �̸��� ġ�� ����Ʈ���� �ش� ��ü�� �ּҰ��� �ٷ� ����ִ� �ý����ε�
		
		Date obj2 =new Date();
		System.out.println(obj2.toString());
		//Date Ÿ�Կ��� �̷��� �ð��� ���� �� �ֵ��� toString�� ������ �Ǿ ������
		//�̷��� ��Ȳ�� �°� toString�� ������ �Ͽ��� ����Ѵ�
	}

}
