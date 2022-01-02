package sec10.exam01_static_member;

public class CalculatorExmaple {
	public static void main(String[] args) {
		//바람직한 사용
		//static이 이미 선언되어 있기 때문에 new라고 하지 않고 바로 사용
		double result1 = 10*10*Calculator.pi;
		int result2 = Calculator.plus(10, 5);
		int result3 = Calculator.minus(10, 5);
		
		System.out.println(result1);
		System.out.println(result2);
		System.out.println(result3);
		
//		사용은 할 수 있으나 바람직하지 않음.
//		왜? 이미 클래스 로딩되면서 메모리 영역에 있는건데 굳이 불러올 필요가 없으니까 낭비를 방지
//		Calculator myCal = new Calculator();
//		double result4 = 10* 10* myCal.pi;
		
		Calculator.pi=3123.123;
		System.out.println(Calculator.pi);
		//static 값이라고 해도 변경 할 수 있음그런데 이건 여기서만 한정이거 이 클래스 나가면 또 안되겠지
		
		
		
	}

}
