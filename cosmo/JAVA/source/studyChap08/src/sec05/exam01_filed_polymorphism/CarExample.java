package sec05.exam01_filed_polymorphism;

public class CarExample {
	public static void main (String[] args) {
		Car myCar = new Car();
		
		myCar.run();
		myCar.frontLeftTire= new KumhoTire();
		myCar.frontRightTire= new KumhoTire();
		System.out.println();
		myCar.run();
		//interface�� class�� ���ó�� �������̽��� �������̽��� �Ҽӵ� ��ü�� ���� �������̽��� �ҼӵǾ������� �ڵ���ȯ�� �����ϴ�
	}

}
