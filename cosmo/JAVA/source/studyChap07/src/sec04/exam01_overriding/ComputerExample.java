package sec04.exam01_overriding;

public class ComputerExample {
	public static void main(String[] args) {
		int r=10;
		Calculator calculator = new Calculator();
		System.out.println(calculator.test1(1));
		System.out.println("안뭔젹:"+calculator.areaCircle(r));
		System.out.println();
		
		Computer computer = new Computer();
		System.out.println(computer.test1(1));
		System.out.println("원면적: "+computer.areaCircle(r));
		
		
		
		
	}

}
