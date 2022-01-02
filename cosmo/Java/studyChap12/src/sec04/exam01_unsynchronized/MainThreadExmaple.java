package sec04.exam01_unsynchronized;

public class MainThreadExmaple {
	public static void main(String[] args) {
		Calculator calculator = new Calculator();
		
		User1 user1 = new User1();
		user1.setCalculator(calculator);
		user1.start();

		User2 User2 = new User2();
		User2.setCalculator(calculator);
		User2.start();

		/*����. user1 ���� �޸𸮰��� ����ϱ� ���� ����ϰ� �ִ� �߰��� user2�� 
		 * �߰��� �����ؼ� calculator�� �޸� ���� �ٲ� ������
		 * �׸��� 1�� �ð��� ������ �޸� ���� ����� �� 2�� �����ؼ� �ٲ����� �޸𸮸� ����������ѹ�����
		 * 2�� �״�� ��ȹ��� ����� �ع���
		 * �׷��Ƿ� �̷��� �������� ������ ���� ���� ��ȭ�� ���� �����ϱ� ����
		 * synchronized�� �ذ��ϴ� ���� �ʿ��ϴ�
		 */
	}

}
