package sec13.exam02_field_method_access.package1;

public class A {
	//필드값
	public int field1;
	int field2;
	private int field3;
	
	public A() {
		field1 =1;
		field2 =1;
		field3 =1;
		method1(); method2(); method3();
		//
	}
	//메소드
	public void method1() {}
	void method2() {}
	private void method3() {}
	
	
	//클래스 내부에선 필드, method 전부 접근 가능함

}
