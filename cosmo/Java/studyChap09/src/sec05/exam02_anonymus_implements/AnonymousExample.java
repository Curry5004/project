package sec05.exam02_anonymus_implements;

public class AnonymousExample {
	public static void main(String[] args){
		Anonymous anony = new Anonymous();
		
		//�͸� ��ü �ʵ� ���
		anony.field.turnOn();
		
		//�͸� ��ü ���� ������ ����
		anony.method1();
		
		//�͸� ��ü�� �Ű������� ���
		anony.method2(
				new RemoteControl() {
					//�͸� ��ü�� �����ϰ� �Ű��� �ִ� �ڸ����� ���� �� �ʱ�ȭ�� �����Ѵ�
						@Override
						public void turnOn() {
							System.out.println("����Ʈ Ƽ�� �մϴ�.");
						}@Override
						public void turnOff() {
							System.out.println("����Ʈ Ƽ�� ���ϴ�");
						}
				}
		);
		
	}

}
