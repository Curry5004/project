package sec03.exam02_noname_implement_class;

public class RemoteControlExample {
	public static void main(String[] args) {
		RemoteControl rc = new RemoteControl() {
			//�ش� ��ü�� �������̽� ��ü������ ��üȭ�� �ȵ�����
//			����� ���ÿ� abstrcact met���� �ʱ�ȭ ���ָ� �͸� ���� ��ü�ν� �����ϴ�,
			public void turnOn() {
				System.out.println("������ �մϴ�.");
			}
			public void turnOff() {
				
			}
			public void setVolume(int volume) {
				
			}
		};
		//���� Ŭ������ ����ϰ� �����Ͽ� ��� �� �� �ִ�.
		//������� ���� Ŭ���� �ۼ��� �����ϰ� �ٷ� ��ü�� �ä��� ���.
		//Ŭ���� ����� ���ÿ� ��ü�� �����Ѵ�
	}

}
