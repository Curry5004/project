package sec07.exam03_field_polymorphism;

public class Car {
	Tire frontLeftTire = new Tire("�տ���", 6);
	Tire frontRightTire = new Tire("�տ�����",2);
	Tire backLeftTire = new Tire("�ڿ���",3);
	Tire backRightTire = new Tire("�ڿ�����",4);
	
	int run() {
		System.out.println("[�ڵ����� �޸��ϴ�. car.run()]");
		if(frontLeftTire.roll()==false) {
			stop();
			return 1; //�տ���
		}
		if(frontRightTire.roll()) {
			stop();
			return 2; //�տ�����
		}
		if(backLeftTire.roll()) {
			stop();
			return 3; //�ڿ���
		}
		if(backRightTire.roll()) {
			stop();
			return 4; //������
		}
		return 0;
	}
	void stop() {
		System.out.println("�ڵ����� ����ϴ�. car.stop()");
	}

}
