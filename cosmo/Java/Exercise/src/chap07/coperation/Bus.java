package chap07.coperation;

public class Bus extends Vehicle {
	//필드, 맴버변수, 인스턴스 변수
	int busNumber;       // 버스 번호
	int passengerCount;  // 승객수
	int money;           // 버스 수입
	
	
	//생성자
	public Bus(String type, int busNumber) {
		super(type);
		this.busNumber=busNumber;
	}
	
	//method
//	@Override
	public void take(int money) {
		this.money+=money;
		passengerCount++;
		System.out.println("버스의 take");
	}
	public void showInfo() {
		System.out.println("버스"+busNumber+"번의 승객은"+
				passengerCount+"명 이고, 수입은 "+money+"입니다.");
	}

}
