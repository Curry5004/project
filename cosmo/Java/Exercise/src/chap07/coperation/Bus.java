package chap07.coperation;

public class Bus extends Vehicle {
	//�ʵ�, �ɹ�����, �ν��Ͻ� ����
	int busNumber;       // ���� ��ȣ
	int passengerCount;  // �°���
	int money;           // ���� ����
	
	
	//������
	public Bus(String type, int busNumber) {
		super(type);
		this.busNumber=busNumber;
	}
	
	//method
//	@Override
	public void take(int money) {
		this.money+=money;
		passengerCount++;
		System.out.println("������ take");
	}
	public void showInfo() {
		System.out.println("����"+busNumber+"���� �°���"+
				passengerCount+"�� �̰�, ������ "+money+"�Դϴ�.");
	}

}
