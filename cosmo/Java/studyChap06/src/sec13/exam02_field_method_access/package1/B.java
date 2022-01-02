package sec13.exam02_field_method_access.package1;

public class B {
	public B() {
		A a = new A();
		a.field1 = 1; //public
		a.field2 = 1; //default
//		a.field3 = 1; //private는 같은 페키지 안에 있다 하더라도 접근안딤
		a.method1();  //public
		a.method2();  //default
//		a.method3(); // private는 접근 안됨!!
		
		//이도 마찬가지로 public아링 default 까지만 접근 가능

	}
	
	

}
