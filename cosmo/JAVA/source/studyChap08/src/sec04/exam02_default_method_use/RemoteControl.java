package sec04.exam02_default_method_use;

public interface RemoteControl {//�������̽�
	//���
	public static final int MAX_VOLUME = 10;
	//���� public static final�� ���� �����ϴ�
	int MIN_VALUE = 0;
	
	//abstract method
	public abstract void turnOn();
	void turnOff(); //public abstract ���� ����
	void setVolume(int volume); //�߰�ȣ�� ����. ��? abstrcat method�ϱ�.
	
	//default method
	public default void setmute(boolean mute) { //public�� ���� ����
		if(mute) {
			System.out.println("default ����ó�� �մϴ�.");
		} else {
			System.out.println("default ���� �����մϴ�.");
		}
	}
	//default method�� �߰� ��ȣ�� �پ��ִ�.
	
	//static method from bigning java ver 8
	public static void chagerBattery() {
		System.out.println("�������� ��ȯ�մϴ�.");
	}
	
	
	
}
