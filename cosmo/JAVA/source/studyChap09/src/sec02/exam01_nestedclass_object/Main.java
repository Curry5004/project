package sec02.exam01_nestedclass_object;

import sec02.exam01_nestedclass_object.A.C;

public class Main {
	public static void main(String[] args) {
		A a = new A();
		
		//인스턴스 클래스 객체 생성
		A.B b = a.new B(); //안쪽 생성자를 표시할 때는 .을 사용하여 표시하고 생성자도 마찬가지이다.
		b.field1 = 3;
		b.method1();
		System.out.println(b.field1);
		
		//정적 맴버 클래스 객체 생성
		A.C c = new A.C(); //가장 외곽의 객체인 A를 먼저 생성하지 않고도 바로 A.C를 통해 호출 할 수 있다.
		c.field1=3;
		c.method2();
		System.out.println(c.field1);
		A.C.field2 = 3; //이렇게 바로 접근 할 수 있음. A를 생성하지 않았음에도 불구하고!
		A.C.method2(); //static 선언 하였기에 바로 접근 가능. 
		
		
		
		//로컬 클래식 객체 생성을 위한 메소드 호출
		a.method();
		
		
	}

}
