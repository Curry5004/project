package sec05.exam04_casting;

public class VehicleExample {
	public static void main(String[] args) {
		Vehicle vehicle = new Bus();
		vehicle.run();
		//vehicle.checkFare();
		
		
		//강제로 bus로 클래스를 복귀시켜 bus에 있는 checkFare를 생성
		Bus bus = (Bus)vehicle;
		bus.checkFare();
		bus.run(); // 오버라이드 되어 오버라이드 된게 실행됨
	}

}
