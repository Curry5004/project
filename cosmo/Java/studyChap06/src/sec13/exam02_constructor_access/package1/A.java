package sec13.exam02_constructor_access.package1;

public class A {
	A a1 = new A(true);   //public
	A a2 = new A(1);       //default
	A a3 = new A("���ڿ�"); //private
	
	//������
	public A(boolean b) {}
	A(int b) {}
	private A(String S) {} // ���� Ŭ���� �ȿ��� ��� �ص� �� ��� ���� ��

}
