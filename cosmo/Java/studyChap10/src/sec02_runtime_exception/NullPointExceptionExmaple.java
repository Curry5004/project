package sec02_runtime_exception;

public class NullPointExceptionExmaple {
	public static void main(String[] args) {
		String data =null;
		System.out.println(data.toString());
		System.out.println(data.length());
		// java.lang.NullPointerException 예외 발생
	}
}
