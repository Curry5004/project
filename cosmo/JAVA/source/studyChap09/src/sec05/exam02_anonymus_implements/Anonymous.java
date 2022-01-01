package sec05.exam02_anonymus_implements;

public class Anonymous {
	//1. �ʵ� �ʱⰪ���� �����ϴ� ��
	RemoteControl field = new RemoteControl() {
		@Override
		public void turnOff() {
			System.out.println("TV�� ���ϴ�");
		};
		@Override
		public void turnOn() {
			System.out.println("TV�� �մϴ�");
		}
	};
	
	//2. ���� ������ �����ϴ� ��
	void method1() {
		RemoteControl localVar = new RemoteControl() {
			@Override
			public void turnOn() {
				System.out.println("Audio�� �մϴ�.");
				
			}
			@Override
			public void turnOff() {
				System.out.println("Audio�� ���ϴ�.");
			}
		};
		//���� ���� ���
		localVar.turnOn();
	}
	
	//�͸�ä�� �Ű������� ���
	void method2(RemoteControl rc) {
		rc.turnOn();
	}
}
