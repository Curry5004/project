package sec02.exam03_abstract_method;

public interface RemoteControl {//인터페이스
	//상수
//	public static final int MAX_VOLUME = 10;
//	//위의 public static final은 생략 가능하다
//	int MIN_VALUE = 0;
	
	//abstract method
	public abstract void turnOn();
	void turnOff(); //public abstract 생략 가능
	void setVolume(int volume); //중괄호는 없음. 왜? abstrcat method니까.
	
	
}
