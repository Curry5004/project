package chap07.coperation;

public class Vehicle {
	String type;
	int money;
	
	public Vehicle(String type) {
		this.type=type;
	}
	
	public void type() {
		System.out.println("이 이동수단의 타입은"+type+"입니다");
	}
	public void take() {
		System.out.println("Vehicle의 take");
	}

}
