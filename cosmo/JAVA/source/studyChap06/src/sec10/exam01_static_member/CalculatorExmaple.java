package sec10.exam01_static_member;

public class CalculatorExmaple {
	public static void main(String[] args) {
		//�ٶ����� ���
		//static�� �̹� ����Ǿ� �ֱ� ������ new��� ���� �ʰ� �ٷ� ���
		double result1 = 10*10*Calculator.pi;
		int result2 = Calculator.plus(10, 5);
		int result3 = Calculator.minus(10, 5);
		
		System.out.println(result1);
		System.out.println(result2);
		System.out.println(result3);
		
//		����� �� �� ������ �ٶ������� ����.
//		��? �̹� Ŭ���� �ε��Ǹ鼭 �޸� ������ �ִ°ǵ� ���� �ҷ��� �ʿ䰡 �����ϱ� ���� ����
//		Calculator myCal = new Calculator();
//		double result4 = 10* 10* myCal.pi;
		
		Calculator.pi=3123.123;
		System.out.println(Calculator.pi);
		//static ���̶�� �ص� ���� �� �� �����׷��� �̰� ���⼭�� �����̰� �� Ŭ���� ������ �� �ȵǰ���
		
		
		
	}

}
