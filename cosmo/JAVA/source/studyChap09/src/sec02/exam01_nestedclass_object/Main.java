package sec02.exam01_nestedclass_object;

import sec02.exam01_nestedclass_object.A.C;

public class Main {
	public static void main(String[] args) {
		A a = new A();
		
		//�ν��Ͻ� Ŭ���� ��ü ����
		A.B b = a.new B(); //���� �����ڸ� ǥ���� ���� .�� ����Ͽ� ǥ���ϰ� �����ڵ� ���������̴�.
		b.field1 = 3;
		b.method1();
		System.out.println(b.field1);
		
		//���� �ɹ� Ŭ���� ��ü ����
		A.C c = new A.C(); //���� �ܰ��� ��ü�� A�� ���� �������� �ʰ� �ٷ� A.C�� ���� ȣ�� �� �� �ִ�.
		c.field1=3;
		c.method2();
		System.out.println(c.field1);
		A.C.field2 = 3; //�̷��� �ٷ� ���� �� �� ����. A�� �������� �ʾ������� �ұ��ϰ�!
		A.C.method2(); //static ���� �Ͽ��⿡ �ٷ� ���� ����. 
		
		
		
		//���� Ŭ���� ��ü ������ ���� �޼ҵ� ȣ��
		a.method();
		
		
	}

}
