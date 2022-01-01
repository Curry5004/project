package sec05.exam02_filed_array;

public class Car {
	//타이어 인터페이스에 종속되어있는 hankook 타이어로 돌렸을 때 자동으로 프로모션이 된다
	//array 타입으로 진행함
	Tire[] tires = {
		new HankookTire(),
		new HankookTire(),
		new HankookTire(),
		new HankookTire(),
	};
	
	void run() {
		for(Tire tire : tires) {
			tire.roll();
		}
	}

}
