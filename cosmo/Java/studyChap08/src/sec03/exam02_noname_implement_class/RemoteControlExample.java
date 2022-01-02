package sec03.exam02_noname_implement_class;

public class RemoteControlExample {
	public static void main(String[] args) {
		RemoteControl rc = new RemoteControl() {
			//해당 객체는 인터페이스 객체인지라 실체화가 안되지만
//			선언과 동시에 abstrcact met들을 초기화 해주면 익명 구현 객체로써 가능하다,
			public void turnOn() {
				System.out.println("전원을 켭니다.");
			}
			public void turnOff() {
				
			}
			public void setVolume(int volume) {
				
			}
		};
		//상위 클래스를 명시하고 구현하여 사용 할 수 있다.
		//명시적인 구현 클래스 작성을 생략하고 바로 객체를 ㅓㄷ는 방법.
		//클래스 선언과 동시에 객체를 생성한다
	}

}
