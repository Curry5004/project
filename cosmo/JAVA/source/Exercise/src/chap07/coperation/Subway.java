package chap07.coperation;

public class Subway extends Vehicle {
	//�ʵ�
	String lineNumber;   // ����ö �뼱
	int passengerCount;  // �°� ��
	int money;
	
	//constructor
	public Subway(String type, String lineNumber) {
		super(type);
		this.lineNumber=lineNumber;
	}
	
	
	public void take(int money) {
		this.money += money;
		passengerCount++;
	}
	public void showInfo() {
		System.out.println("����ö"+lineNumber+"ȣ����  �°���"+
				passengerCount+"�� �̰�, ������ "+money+"�Դϴ�.");
	}
	

}
