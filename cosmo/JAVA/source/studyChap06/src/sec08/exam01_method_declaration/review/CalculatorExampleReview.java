package sec08.exam01_method_declaration.review;

public class CalculatorExampleReview {
	public static void main(String[] args) {
		
		Calculator cal = new Calculator();
		cal.powerOn();
		System.out.println(cal.plus(5,6));
		System.out.println(cal.divide(5,6));
		cal.powerOff();
	}

}
