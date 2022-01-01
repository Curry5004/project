package sec06.exam02_default_method_extends;
//default method의 상속과 override에 따른 재전환
public class DefaultMethodExtendsExample {
	public static void main(String[] args) {
		ChildInterface1 ci1 = new ChildInterface1() { //익명 구현 객체
			@Override
			public void method1() {/*실행문*/	}
			@Override
			public void method3() {/*실행문*/ }
		}; 
		
		ci1.method1();
		ci1.method2(); //ParentInterface의 method2()호출
		ci1.method3();
		//인터페이스에 해당하는 method 3개를 전부 호출 할 수 있다
		 
		ChildInterface2 ci2 = new ChildInterface2() {
			
			@Override
			public void method1() {/*실행문*/}
			
			@Override
			public void method3() {/*실행문*/	}
		};
		ci2.method1();
		ci2.method2(); //Childinterface2에서 재정의된 method2()가 override 되어 호출되었다
		ci2.method3(); //
		
		ChildInterface3 ci3 = new ChildInterface3() {
			
			@Override
			public void method1() {/*실행문*/}
			
			@Override
			public void method3() {/*실행문*/}
			
			@Override
			//default method였던 method2가 재정의 되어 abstract 타입으로 전환됨
			public void method2() {/*실행문*/}
		};
		ci3.method1();
		ci3.method2(); //ChildInterface3에서 abstract 타입으로 재전환된 method2가 출력된다
		ci3.method3();
	}

}
