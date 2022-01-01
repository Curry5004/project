package sec12.exam01_wrapper;

public class ValueCompareExample {
	public static void main(String[] args) {
		System.out.println("[-128~127 초과값일 경우]");
		Integer obj1 = 300;
		Integer obj2 = 300;
		//포장객체는 동등 연산자로 비교하면 안된다!!
		System.out.println("===결과: "+ (obj1 == obj2));
		//포장객체는 언박싱 후 비교해야만 한다
		System.out.println("언박싱 후 == 결과: "+ (obj1.intValue() == obj2.intValue()));
		//이건 된다
		System.out.println("eqauls() 결과 " + obj1.equals(obj2));
		
		System.out.println("-128~127 범위값일 경우, boolean, char\u0000~\u007f");
		Integer obj3 = 10;
		Integer obj4 = 10;
		//-128~127 범위값일 경우, boolean, char\u0000~\u007f이때는 동등연산자로 비교 할 수 있다!!!!!!!!!!!
		System.out.println("===결과: "+ (obj3 == obj4));
		System.out.println("언박싱 후 == 결과: "+ (obj3.intValue() == obj4.intValue()));
		System.out.println("eqauls() 결과 " + obj3.equals(obj4));

		
	}
}
