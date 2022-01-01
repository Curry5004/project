package sec06.exam01_protected.package1;

public class B {
	public void method() {
		A a= new A();     //constuctor
		a.field="value";  //field
		a.method();       //method 
		// 같은 패키지 내에선 무리없이 사용 가능
	}

}
