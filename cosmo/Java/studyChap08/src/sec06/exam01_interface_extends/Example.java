package sec06.exam01_interface_extends;

public class Example {
	public static void main(String[] args) {
		ImplementationC impl = new ImplementationC();
		
		InterfaceA ia = impl;
		ia.methodA();
		System.out.println();
		
		InterfaceB ib = impl;
		ib.methodB();
		
		InterfaceC ic = impl;
		ic.methodA();
		ic.methodB();
		ic.methodC();
		//�� �� �� ����. �ֳ��ϸ� A,B �κ��� ��ӹ޾ұ� ����
	}
}
