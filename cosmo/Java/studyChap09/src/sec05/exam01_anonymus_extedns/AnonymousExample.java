package sec05.exam01_anonymus_extedns;

public class AnonymousExample {
	public static void main(String[] args) {
		Anonymous anony = new Anonymous();
		//1. �͸� ��ü �ʵ� ���
		anony.field.wake();
		
		//2. �͸� ��ü�� ���� ���� ���.
		anony.method1();
		
		//3. �͸� ��ü �Ű���(���ڰ�=�˸���!!)���� ����ϴ� ��.
		anony.method2(
				
				new Person(){
					void study()	{
						System.out.println("�����մϴ�.");
					
					}
					@Override
					void wake() {
						System.out.println("8�ÿ� �Ͼ�ϴ�");
						study();
					}
				}
				//�� �ȿ��� �ʱ�ȭ�� �ع���!!
				);//�Ű� �������� �ʱ�ȭ�� �ع���!!! �ű���!!
	}

}
