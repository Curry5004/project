package sec12.exam01_wrapper;

public class AutoBoxingUnBoxingExmaple {
	public static void main (String[]args) {
		//auto boxing
		Integer obj = 100;
		System.out.println("value: "+obj.intValue());
		//���� �� auto UnBoxing
		int value = obj;
		System.out.println("value: "+value);
		//���� �� �ڵ� UnBoxing
		int result = obj + 100;
		System.out.println("result: "+result);
	}

}
