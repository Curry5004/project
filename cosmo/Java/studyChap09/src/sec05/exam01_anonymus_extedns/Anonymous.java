package sec05.exam01_anonymus_extedns;

public class Anonymous {
	
//	Parent field = new Child(); 
	//1. �ʵ忡 �ڽ� ��ü�� ����
	//�ʵ带 ���� �� �� �ʱⰪ�� �����ؼ� ������ �ڽ� ��ü�� Ŭ������ �������� �ʰ� �� �ڸ����� ��ü�� ����.
	//������� ������ Ŭ������ ���������� �ʵ峻���� �ٷ� �����ع���. 
	//�׷��Ƿ� Ŭ������ �̸��� �������� �ʰ� �θ� ��ü�� ���� �ڽ� ��ü�� ��Ҹ� �������� �� �̸��� ���� �͸��� ��ü�� �����ع���
	Person field = new Person() {
		void work() {
			System.out.println("����մϴ�.");
		}
		@Override
		void wake() {
			System.out.println("6�ÿ� �Ͼ�ϴ�. ������  �����");
			work();
		}
	}; //���� �͸� ��ü�� ������ �� �߰�ȣ �����κп� ���� �ݷ��� �ٿ��༭  ���� ��
	// �޼ҵ� ó�� �߰�ȣ�� ���ٺ��� �����ϰ� �Ⱦ��� ��찡 �ִµ� �͸� ��ü�� �����Ҷ��� �� ���� �� �ֵ��� �Ұ�.
	// �͸� ��ü�� �ʱ�ȭ �Ҷ��� �� ���� �ݷ��� �ٿ��� ��!
	
	//2. ���� ���������� ����
	void method1 () {
		Person localVar = new Person(){
			void walk()	{
				System.out.println("��å�մϴ�.");
			
			}
			@Override
			void wake() {
				System.out.println("7�ÿ� �Ͼ�ϴ�");
				walk();
			}
		};
		//���� ������ ���.
		localVar.wake();
	}
	
	//3. �Ű� ������ ������. -> ���ڰ����� ���ٴ� ��
	void method2 (Person person) {
		person.wake();
	}
}
