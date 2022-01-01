package sec03.exam01_member_class_access;

public class A {
	//인스턴스 필드
	class B {}
	//정적 맴버 클래스
	static class C {} //이미 다 만들어져있음
	
	//인스턴스 필드
	B field1 = new B();
	C field2 = new C();
	
	//인스턴스 method
	//바깥 클래스 A의 method에서 객체를 형성 할 수 있다
	void method1() {
		B var1 = new B();
		C var2 = new C();
	}
	
	//static field reset
//	static B fiels3 = new B(); //인스턴스 맴버 클래스이기 때문에 사용할 수 없음
	static C field4 = new C();
	
	//static method
	static void method() {
//		B var1 = new B(); //인스턴스 맴버이기 때문
		C var2 = new C();
	}
	//인스턴스 맴버는 인스턴스 맴버안에서만 필드, method로 쓸 수 있으며 static에선 쓸 수 없고 static 은 가능하다
}
