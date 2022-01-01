package sec13.exam02_constructor_access.package1;

public class A {
	A a1 = new A(true);   //public
	A a2 = new A(1);       //default
	A a3 = new A("문자열"); //private
	
	//생성자
	public A(boolean b) {}
	A(int b) {}
	private A(String S) {} // 같은 클래스 안에선 어떻게 해도 다 사용 가능 함

}
