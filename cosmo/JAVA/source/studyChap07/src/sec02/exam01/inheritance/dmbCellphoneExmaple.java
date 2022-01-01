package sec02.exam01.inheritance;

public class dmbCellphoneExmaple {
	public static void main(String[] args) {
		
		DmbCellPhone phone = new DmbCellPhone("애플", "시에라블루", 7);
		
		System.out.println(phone.model);
		System.out.println(phone.color);
		
		phone.powerOn();
		phone.powerOff();
		phone.turnOnDmb();
		System.out.println();
		
		phone.reciveVoice("백신 넘 쌔다");
		phone.sendVocie("백신 괜찮아?");
		
		// 나는 분명 dmbCellPhone의 객체만 생성했음에도 불구하고 CellPhone의 클래스와 메소드를 전부 사용할 수 있다
		
		
	
	}

}
