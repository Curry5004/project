package chap07.coperation;

public class Subway extends Vehicle {
	//필드
	String lineNumber;   // 지하철 노선
	int passengerCount;  // 승객 수
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
		System.out.println("지하철"+lineNumber+"호선의  승객은"+
				passengerCount+"명 이고, 수입은 "+money+"입니다.");
	}
	

}
