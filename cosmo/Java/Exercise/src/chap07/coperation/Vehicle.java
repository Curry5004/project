package chap07.coperation;

public class Vehicle {
	String type;
	int money;
	
	public Vehicle(String type) {
		this.type=type;
	}
	
	public void type() {
		System.out.println("�� �̵������� Ÿ����"+type+"�Դϴ�");
	}
	public void take() {
		System.out.println("Vehicle�� take");
	}

}
