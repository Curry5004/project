package sec03.exam03_multi_implement_class;


public class SmartTelevision implements RemoteControl, Searchable { //여러개의 인터페이서에서 호출할 수 있다
	private int volume;

	
	@Override
	public void turnOn() {
		System.out.println("TV를 켭니다.");
		
	}

	@Override
	public void turnOff() {
		System.out.println("TV를 끕니다.");
		
	}

	@Override
	public void setVolume(int volume) {
		if(volume > RemoteControl.MAX_VOLUME) {
			this.volume = RemoteControl.MAX_VOLUME;
		} else if (volume < RemoteControl.MIN_VALUE) {
			this.volume = RemoteControl.MIN_VALUE;
		} else  {
			this.volume = volume;
		}
		System.out.println("현재 TV 볼륨은"+volume+"입니다.");
			
		
	}
	
	@Override //양쪽에 있는 interface의 method 들이 구현됨
	public void search(String url) {
		System.out.println(url+"을 검색합니다");
		
	}

}
