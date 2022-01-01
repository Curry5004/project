package sec03.exam03_localClass_access;

public class Outter {
	//자바 7 이전에는 final로 명시해줌
	public void method1(final int arg) {
		final int localVariable = 1;
//		arg = 100;
//		localVariable = 100;
		class Inner{
			public void method() {
				int result = arg + localVariable;
			}
		}
	}
	
	
	//자바8 이후
	public void method2(int arg) {	//파이널을 명시하지 않아도 괜찮음.
		int localVariable = 1;
//		arg = 100;
//		localVariable = 100;
		//상수로 인식하고 있기 때문에 이후에 또 바꾸면 안됨
		class inner{
			public void method() {
				int result = arg + localVariable;
			}
		}
	}
}
