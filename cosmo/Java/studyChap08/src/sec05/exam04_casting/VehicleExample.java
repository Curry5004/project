package sec05.exam04_casting;

public class VehicleExample {
	public static void main(String[] args) {
		Vehicle vehicle = new Bus();
		vehicle.run();
		//vehicle.checkFare();
		
		
		//������ bus�� Ŭ������ ���ͽ��� bus�� �ִ� checkFare�� ����
		Bus bus = (Bus)vehicle;
		bus.checkFare();
		bus.run(); // �������̵� �Ǿ� �������̵� �Ȱ� �����
	}

}
