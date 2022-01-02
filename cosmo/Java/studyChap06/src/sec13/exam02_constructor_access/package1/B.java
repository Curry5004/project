package sec13.exam02_constructor_access.package1;
//B 패키지는 A클래스와 같은 패키지이다 (package1)
public class B {
	//필드
	A a1 = new A(true); //public 타입은 접근 가능
	A a2 = new A(1);    //default 타입에서도 접근 가능
//	A a3 = new A("A");  //private는 접근 불가능!!! 읽을 수 없다

}
