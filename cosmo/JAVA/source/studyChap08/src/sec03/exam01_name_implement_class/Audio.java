package sec03.exam01_name_implement_class;

public class Audio implements RemoteControl {
	//�ʵ�
		private int volume;
		
		
		//abstract method���� ����!!!! ��üȭ �ؾ��� ���� ���� ���� ���� ����� �� class�� abastract class�� �з��ؾ��Ѵ�
		
		@Override
		public void turnOn() {
			//turnOn() ��ü method
			System.out.println("TV�� �մϴ�.");
			
		}

		@Override
		public void turnOff() {
			System.out.println("TV�� ���ϴ�.");
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
