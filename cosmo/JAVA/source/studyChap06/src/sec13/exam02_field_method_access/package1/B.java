package sec13.exam02_field_method_access.package1;

public class B {
	public B() {
		A a = new A();
		a.field1 = 1; //public
		a.field2 = 1; //default
//		a.field3 = 1; //private�� ���� ��Ű�� �ȿ� �ִ� �ϴ��� ���پȵ�
		a.method1();  //public
		a.method2();  //default
//		a.method3(); // private�� ���� �ȵ�!!
		
		//�̵� ���������� public�Ƹ� default ������ ���� ����

	}
	
	

}
