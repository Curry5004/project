package sec12.exam01_wrapper;

public class AutoBoxingUnBoxingExmaple {
	public static void main (String[]args) {
		//auto boxing
		Integer obj = 100;
		System.out.println("value: "+obj.intValue());
		//대입 시 auto UnBoxing
		int value = obj;
		System.out.println("value: "+value);
		//연산 시 자동 UnBoxing
		int result = obj + 100;
		System.out.println("result: "+result);
	}

}
