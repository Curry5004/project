package Exercise.no05;

public class AnonymousExmaple {
	public static void main(String[] args) {
		Anonymous anony = new Anonymous();
		//�͸� ��ü �ʵ� ���
		anony.field.run();
		//�͸� ���� ���� ���
		anony.method1();
		
		//�͸� ��ü �Ű��� ���!
		anony.method2(
				// 3.�Ű������� ���
				new Vehicle() {
					@Override
					public void run() {
						System.out.println("Ʈ���� �޸��ϴ�");
					}
				}
		);
	}

}
