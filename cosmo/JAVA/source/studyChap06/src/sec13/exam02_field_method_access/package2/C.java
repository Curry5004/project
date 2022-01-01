package sec13.exam02_field_method_access.package2;

import sec13.exam02_field_method_access.package1.A;

public class C {
	public C() {
		A a = new A();
		a.field1= 1;
//		a.field2= 1;
//		a.field3= 1;
		// default, private 사용 불가
		
		a.method1();
//		a.method2();
//		a.method3();
		// default, private 사용 불가
	}

}
