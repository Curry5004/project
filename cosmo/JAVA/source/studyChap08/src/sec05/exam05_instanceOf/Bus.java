package sec05.exam05_instanceOf;

public class Bus implements Vehicle {

	@Override
	public void run() {
		System.out.println("������ �޸�����.");
	}
	
	public void checkFare() {
		System.out.println("��������� Ȯ���մϴ�");
	}

}
