package sec03.exam01_name_implement_class;

public interface RemoteControl {//인터페이스
	//상수
	public static final int MAX_VOLUME = 10;
	//위의 public static final은 생략 가능하다
	int MIN_VALUE = 0;
	
	//abstract method
	public abstract void turnOn();
	void turnOff(); //public abstract 생략 가능
	void setVolume(int volume); //중괄호는 없음. 왜? abstrcat method니까.
	
	//default method
	public default void setmute(boolean mute) { //public은 생략 가능
		if(mute) {
			System.out.println("무음처리 합니다.");
		} else {
			System.out.println("무음 해제합니다.");
		}
	}
	//default method는 중간 괄호가 붙어있다.
	
	//static method from bigning java ver 8
	public static void chagerBattery() {
		System.out.println("건전지를 교환합니다.");
	}
	
	
	
}
