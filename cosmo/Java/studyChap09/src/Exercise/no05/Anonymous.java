package Exercise.no05;

public class Anonymous {
	//1. �ʵ� �ʱ�ȭ�� ���
	Vehicle field = new Vehicle() {
		/*why �̰� ���°�????? ���� ���� �����ϴ� Ŭ������ �߿��� Ŭ������� �������� Ŭ������
		 * �����ؼ� �������� �׷� Ŭ������ �ƴϴ�, �׳� �ѹ� ���� �� ������ �ֹ߼��� Ŭ�������
		 * ���� Ŭ������ ���� �������� ���� �׳� �������̽� �ȿ� �κи� ��¦ �����ϴ°�����
		 * �ش� Ŭ������ �����ϴ� ��ɸ� ���� ���� �ѱ�� ���̴�.
		 * 
		 * Ŭ������ �ƿ� �ۼ��ϴ� �ð� <�ʵ忡�� �׳� �������̽��� �޼ҵ带 �ʱ�ȭ �ϴ� �ð�
		 * �캯�� �� ȿ�����̱� ����
		 */
		@Override
		public void run() {
			System.out.println("�����Ű� �޸��ϴ�");
		}
	};
	
	
	void method1() {
		//2. ���� ���� ������ �͸� ������ü ����
		Vehicle localVar = new Vehicle() {
			@Override
			public void run() {
				System.out.println("�¿����� �޸��ϴ�");
			}
		};
		localVar.run();
	}
	
	void method2(Vehicle v) {
		v.run();
	}
	

}
