package Exercise;
//Method overload를 요구하는 문제 + static에 대한 개념을 알고 쓸 수 있니?
public class Printer2 {
	static void println(int num){
		int result = num;
		System.out.println(result);
	}
	static void println(boolean num){
		boolean result = num;
		System.out.println(result);
	}
	static void println(double num){
		double result = num;
		System.out.println(result);
	}
	static void println(String num){
		String result = num;
		System.out.println(result);
	}

}
