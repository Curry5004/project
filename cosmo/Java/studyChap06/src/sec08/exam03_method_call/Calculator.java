package sec08.exam03_method_call;

public class Calculator {
	//필드
	//생성자
	//메소드
	
	int plus(int x, int y) {
		int result = x + y;
		return result;
	}
	double avg(int x, int y) {
		double sum = plus(x, y);//클래스 내에서 method를 사용할때는 단순히 method 이름만 호출하면 된다
		double result = (sum)/2;
		return result;
	}
	
	void execute() {
		double result = avg(7, 10);
		println("실행결과: "+ result);
	}
	void println(String message) {
		System.out.println(message);
	}

}
