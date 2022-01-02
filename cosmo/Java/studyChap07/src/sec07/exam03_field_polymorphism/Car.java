package sec07.exam03_field_polymorphism;

public class Car {
	Tire frontLeftTire = new Tire("앞왼쪽", 6);
	Tire frontRightTire = new Tire("앞오른쪽",2);
	Tire backLeftTire = new Tire("뒤왼쪽",3);
	Tire backRightTire = new Tire("뒤오른쪽",4);
	
	int run() {
		System.out.println("[자동차가 달립니다. car.run()]");
		if(frontLeftTire.roll()==false) {
			stop();
			return 1; //앞왼쪽
		}
		if(frontRightTire.roll()) {
			stop();
			return 2; //앞오른쪽
		}
		if(backLeftTire.roll()) {
			stop();
			return 3; //뒤왼쪽
		}
		if(backRightTire.roll()) {
			stop();
			return 4; //오른쪽
		}
		return 0;
	}
	void stop() {
		System.out.println("자동차가 멈춥니다. car.stop()");
	}

}
