package sec02.exam01.inheritance;

public class CellPhone {
	//�ʵ�
	String model;
	String color;
	
	//������
	
	//�޼ҵ�
	void powerOn() {
		System.out.println("������ �մϴ�.");
	}
	void powerOff() {
		System.out.println("������ ���ϴ�.");
	}
	void sendVocie(String message) {
		System.out.println("�ڱ� :"+message);
	}
	void reciveVoice(String message) {
		System.out.println("����"+ message);
	}
	void hangUp () {
		System.out.println("��ȭ�� �����ϴ�");
	}

}
