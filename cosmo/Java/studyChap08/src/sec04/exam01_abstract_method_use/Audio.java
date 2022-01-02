package sec04.exam01_abstract_method_use;

public class Audio implements RemoteControl {
	//�ʵ�
		private int volume;
		
		
		//abstract method���� ����!!!! ��üȭ �ؾ��� ���� ���� ���� ���� ����� �� class�� abastract class�� �з��ؾ��Ѵ�
		
		@Override
		public void turnOn() {
			//turnOn() ��ü method
			System.out.println("Audio�� �մϴ�.");
			
		}

		@Override
		public void turnOff() {
			System.out.println("Audio�� ���ϴ�.");
			// turnOff() ��ü method
			
		}

		@Override
		public void setVolume(int volume) {
			// setVolume(int volume) ��ü method
			if(volume > RemoteControl.MAX_VOLUME) {
				this.volume = RemoteControl.MAX_VOLUME;
			} else if (volume < RemoteControl.MIN_VALUE) {
				this.volume = RemoteControl.MIN_VALUE;
			} else  {
				this.volume = volume;
			}
			System.out.println("���� TV ������"+volume+"�Դϴ�.");
			
		}


}
