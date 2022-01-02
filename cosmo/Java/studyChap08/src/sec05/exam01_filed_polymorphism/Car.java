package sec05.exam01_filed_polymorphism;

public class Car {
	//타이어 인터페이스에 종속되어있는 hankook 타이어로 돌렸을 때 자동으로 프로모션이 된다
	Tire frontLeftTire = new HankookTire();
	Tire frontRightTire = new HankookTire();
	Tire backLeftTire = new HankookTire();
	Tire backRightTire = new HankookTire();
	
	void run() {
		frontLeftTire.roll();
		frontRightTire.roll();
		backLeftTire.roll();
		backRightTire.roll();
	}

}
