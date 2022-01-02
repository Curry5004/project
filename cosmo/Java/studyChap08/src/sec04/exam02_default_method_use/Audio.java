package sec04.exam02_default_method_use;

public class Audio implements RemoteControl {
	//필드
		private int volume;
		
		
		//abstract method들을 전부!!!! 실체화 해야함 만약 전부 하지 않을 꺼라면 이 class를 abastract class로 분류해야한다
		
		@Override
		public void turnOn() {
			//turnOn() 실체 method
			System.out.println("Audio를 켭니다.");
			
		}

		@Override
		public void turnOff() {
			System.out.println("Audio를 끕니다.");
			// turnOff() 실체 method
			
		}

		@Override
		public void setVolume(int volume) {
			// setVolume(int volume) 실체 method
			if(volume > RemoteControl.MAX_VOLUME) {
				this.volume = RemoteControl.MAX_VOLUME;
			} else if (volume < RemoteControl.MIN_VALUE) {
				this.volume = RemoteControl.MIN_VALUE;
			} else  {
				this.volume = volume;
			}
			System.out.println("현재 TV 볼륨은"+volume+"입니다.");
			
		}
		
		@Override //default method도 재정의가 가능함. 안하게되면 인터페이스에 있는 default가 출력됨
		public void setmute(boolean mute) {
			if(mute) {
				System.out.println("Audio 무음처리 합니다.");
			} else {
				System.out.println("Audio 무음 해제합니다.");
			}
		}


}
