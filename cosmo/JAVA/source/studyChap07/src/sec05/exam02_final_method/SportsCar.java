package sec05.exam02_final_method;

public class SportsCar extends Car {
	@Override
	public void speedUp() {
		speed +=10;
	}
//	@Override
//	public void stop() { //final method이기 때문에 override를 할 수 없다
//		System.out.println("스포츠카를 멈춤");
//		speed=0;
//	}

}
