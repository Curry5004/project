package sec04.exam02_default_method_use;

public class RemoteControlExmaple {
	public static void main(String[] args) {
		RemoteControl rc = null;
		
		rc = new Television();
		rc.turnOn();
		rc.setmute(true);// ���� override ���� �ʾұ� ������ remoteControl�� defailt method�� ��µȴ�
		
		rc = new Audio();
		//Audio���� override�� �Ͽ��� ������ ���ο� �����ǵ�  ���� ���´�. �ᱹ�� default method�� ������ �� �� �ִ�
		rc.turnOn();
		rc.setmute(true);
	}

}
