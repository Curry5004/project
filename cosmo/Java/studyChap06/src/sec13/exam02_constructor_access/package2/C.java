package sec13.exam02_constructor_access.package2;

import sec13.exam02_constructor_access.package1.A;

public class C {
	A a1 = new A(true); //public 타입은 문제 없음!
//	A a2 = new A(1);    //default는 접근 안됨
//	A a3 = new A("A");  //마찬가지로 private는 접근 안됨
}
