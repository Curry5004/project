package sec04.exam02_synchronized;

public class MainThreadExmaple {
	public static void main(String[] args) {
		Calculator calculator = new Calculator();
		
		User1 user1 = new User1();
		user1.setCalculator(calculator);
		user1.start();

		User2 User2 = new User2();
		User2.setCalculator(calculator);
		User2.start();
		
		/*synchronized �ϱ� ���� user2 thread�� �߰��� memory ���� �ٲ������ user1 thread�� ����� �ٸ��� ��������
		 * synchronizedm�� ���� �ذ��� �켱������ �����ν� �ذ��� �� �ִ�
		 */
		

	}

}
