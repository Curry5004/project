package sec06.exam06_stop;

public class ParentThread2 extends Thread {
	@Override
	public void run() {
		while(true) {
			System.out.println("������");
			if(Thread.interrupted()) {
				break;
			}
		}
		System.out.println("�ڿ� ����");
		System.out.println("���� ����");
	}

}
