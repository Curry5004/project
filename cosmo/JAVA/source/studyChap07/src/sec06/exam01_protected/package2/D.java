package sec06.exam01_protected.package2;

import sec06.exam01_protected.package1.A;

public class D extends A {
	public D() {
		super();
		this.field = "value";
		this.method();
		//상속을 받은 개체인 D는 전부 접근이 가능하다
		
	}

}
