package sec05.exam01_filed_polymorphism;

public class CarExample {
	public static void main (String[] args) {
		Car myCar = new Car();
		
		myCar.run();
		myCar.frontLeftTire= new KumhoTire();
		myCar.frontRightTire= new KumhoTire();
		System.out.println();
		myCar.run();
		//interface도 class의 상속처럼 인터페이스와 인터페이스에 소속된 객체가 같은 인터페이스에 소속되어있으면 자동변환이 가능하다
	}

}
