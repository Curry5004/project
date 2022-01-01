package sec05.exam02_anonymus_implements;

public class Anonymous {
	//1. 필드 초기값으로 대입하는 법
	RemoteControl field = new RemoteControl() {
		@Override
		public void turnOff() {
			System.out.println("TV를 끕니다");
		};
		@Override
		public void turnOn() {
			System.out.println("TV를 켭니다");
		}
	};
	
	//2. 로컬 변수로 대입하는 것
	void method1() {
		RemoteControl localVar = new RemoteControl() {
			@Override
			public void turnOn() {
				System.out.println("Audio를 켭니다.");
				
			}
			@Override
			public void turnOff() {
				System.out.println("Audio를 끕니다.");
			}
		};
		//로컬 변수 사용
		localVar.turnOn();
	}
	
	//익명객채의 매개값으로 사용
	void method2(RemoteControl rc) {
		rc.turnOn();
	}
}
