package sec03.exam02_field_method_access;

public class A {
	//�ν��Ͻ� �ɹ�
	int field1;
	void method1() {}
	//���� �ɹ�
	static int field2;
	static void method2() {};
	
	
	//instance member class
	class B{
		void method() {
			field1 = 10; //���� Ŭ���� �ȿ��� �ٷ� ������ ������
			method1();
			field2 = 12; //static�� �̹� ������������ϱ� �ٷ� ���� ����
			method2();
		}
	}
	//static member class
	static class C{
		void method() {
//			field1 = 10; 
//			method1();
			//�� ���� �ٷ� ������� �� ����. �ֳ�? static�� �ٷ� ��������־�� �ϴµ�
			//���� ��������� �𸣴� �� �ν��Ͻ� �ɹ����� �� �� ���� �����̴�
			field2 = 12; 
			method2();
			
			//static�� stataic ������ ���� �����ϴ�
		}
	}

}
