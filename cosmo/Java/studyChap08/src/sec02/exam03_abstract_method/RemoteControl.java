package sec02.exam03_abstract_method;

public interface RemoteControl {//�������̽�
	//���
//	public static final int MAX_VOLUME = 10;
//	//���� public static final�� ���� �����ϴ�
//	int MIN_VALUE = 0;
	
	//abstract method
	public abstract void turnOn();
	void turnOff(); //public abstract ���� ����
	void setVolume(int volume); //�߰�ȣ�� ����. ��? abstrcat method�ϱ�.
	
	
}
