package sec03.exam01_member_class_access;

public class A {
	//�ν��Ͻ� �ʵ�
	class B {}
	//���� �ɹ� Ŭ����
	static class C {} //�̹� �� �����������
	
	//�ν��Ͻ� �ʵ�
	B field1 = new B();
	C field2 = new C();
	
	//�ν��Ͻ� method
	//�ٱ� Ŭ���� A�� method���� ��ü�� ���� �� �� �ִ�
	void method1() {
		B var1 = new B();
		C var2 = new C();
	}
	
	//static field reset
//	static B fiels3 = new B(); //�ν��Ͻ� �ɹ� Ŭ�����̱� ������ ����� �� ����
	static C field4 = new C();
	
	//static method
	static void method() {
//		B var1 = new B(); //�ν��Ͻ� �ɹ��̱� ����
		C var2 = new C();
	}
	//�ν��Ͻ� �ɹ��� �ν��Ͻ� �ɹ��ȿ����� �ʵ�, method�� �� �� ������ static���� �� �� ���� static �� �����ϴ�
}
