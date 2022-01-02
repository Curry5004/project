package sec03.exam02_field_method_access;

public class A {
	//인스턴스 맴버
	int field1;
	void method1() {}
	//정적 맴버
	static int field2;
	static void method2() {};
	
	
	//instance member class
	class B{
		void method() {
			field1 = 10; //내부 클래스 안에선 바로 접근이 가능함
			method1();
			field2 = 12; //static은 이미 만들어져있으니까 바로 접근 가능
			method2();
		}
	}
	//static member class
	static class C{
		void method() {
//			field1 = 10; 
//			method1();
			//이 둘은 바로 만들어질 수 없다. 왜냐? static은 바로 만들어져있어야 하는데
			//언제 만들어질지 모르는 저 인스턴스 맴버들은 쓸 수 없기 때문이다
			field2 = 12; 
			method2();
			
			//static은 stataic 끼리만 접근 가능하다
		}
	}

}
