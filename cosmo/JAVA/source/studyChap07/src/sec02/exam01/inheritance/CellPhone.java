package sec02.exam01.inheritance;

public class CellPhone {
	//필드
	String model;
	String color;
	
	//생성자
	
	//메소드
	void powerOn() {
		System.out.println("전원을 켭니다.");
	}
	void powerOff() {
		System.out.println("전원을 끕니다.");
	}
	void sendVocie(String message) {
		System.out.println("자기 :"+message);
	}
	void reciveVoice(String message) {
		System.out.println("상대방"+ message);
	}
	void hangUp () {
		System.out.println("전화를 끊습니다");
	}

}
