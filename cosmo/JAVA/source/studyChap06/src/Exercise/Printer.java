package Exercise;
//Method overload를 요구하는 문제
public class Printer {
	void println(int num){
		int result = num;
		System.out.println(result);
	}
	void println(boolean num){
		boolean result = num;
		System.out.println(result);
	}
	void println(double num){
		double result = num;
		System.out.println(result);
	}
	void println(String num){
		String result = num;
		System.out.println(result);
	}

}
