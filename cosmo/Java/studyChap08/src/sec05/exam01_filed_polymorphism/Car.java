package sec05.exam01_filed_polymorphism;

public class Car {
	//Ÿ�̾� �������̽��� ���ӵǾ��ִ� hankook Ÿ�̾�� ������ �� �ڵ����� ���θ���� �ȴ�
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
