package sec06.exam03_join;

public class JoinExmaple {
	public static void main(String[] args) {
		SumThread sumThread = new SumThread();
		sumThread.start();
		
//		System.out.println("1~100 �հ� "+ sumThread.getSum());
//		//�̴�� �����ϸ� sumThread�� �����ϱ⵵ ���� sysout�� ����ع����ϱ� 0�ۿ� �ȳ���
		//�׷� ���? ���� ���� ����!
		
		//join �޼ҵ带 ȣ���� ������� �Ͻ����� ���°� �ȴ�.
		//�޼ҵ尡 ������ �ִ� ������ �����Ŀ� ����
		try {
			sumThread.join();
			//�� �� sleep�� �ð��� ���ؼ� �� �ð���ŭ ��ٷ��� ������
			//join �� �ش� �۾��� ���� �� ���� ����ϴ� �����̶� ������ �ٸ���
		} catch (InterruptedException e) {}
		
		
		System.out.println("1~100 �հ� "+ sumThread.getSum());
		
	}

}
