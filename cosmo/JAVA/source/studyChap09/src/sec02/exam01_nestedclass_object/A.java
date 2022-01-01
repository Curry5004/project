package sec02.exam01_nestedclass_object;


//바깥 클래스
class A {
	A(){System.out.println("A outter, 바깥객체가 생성됨");}
	/*인스턴스 맴버인 안쪽 클래스*/
	public class B{
		B() {System.out.println("B inner, 인스턴스 안쪽 객체가 생성됨");}
		int field1;
//		static int field2; //이렇게 쓸 수 없음. 왜냐? B는 인스턴스 맴버이기 때문에 인스턴스 클래스 안 쪽에 선 static을 선언 할 수 없다
		void method1() {}
//		static void method2() {} //method도 마찬가지로 static을ㄴ 선언 할 수 없음
		
	}
//	정적 맴버 안쪽 클래스
	
	static class C{
		C(){System.out.println("C inner, 정적 맴버 안쪽 객체가 생성됨");}
		int field1;
		static int field2;
		void method1() {}
		static void method2() {}
		//정적 맴버 안쪽에 static 작성이 가능하다
		
	}
	
	void method() {
		//로컬 클래스
		class D{
			D(){System.out.println("D 로컬 객체가 생성됨");}
			int field1;
//			static int field2; //이도 마찬가지로 static 맴버가 아닌 인스턴스 맴버에 위치하고 있기 때문에 생성 할 수 없다
			void method1() {}
//			static void method2() {} //생성 불가
			
		}
		D d = new D();
		int field1= 3;
	}
	
	
}
