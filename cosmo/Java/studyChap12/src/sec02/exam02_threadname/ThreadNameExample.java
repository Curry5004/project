package sec02.exam02_threadname;

public class ThreadNameExample {
	public static void main(String[] args) {
		Thread mainThread = Thread.currentThread();
		//�������� ���� �޼ҵ��� Ŀ��Ʈ ������
		//���� �������� �����带 ��ȯ�Ѵ�
		//�̰� ������ ��ü�� ������ Thread�� �ʿ��ϴ�. ��? �ֽô��� Thread �̸� �˾Ƴ����� ���� method�ϱ�
		System.out.println("���α׷� ���� ������ �̸�: "+mainThread.getName());
		System.out.println();
		
		ThreadA threadA = new ThreadA();
		System.out.println("�۾� ������ �̸�: "+ threadA.getName());
		threadA.start();
		
		ThreadB threadB = new ThreadB();
		System.out.println("�۾� ������ �̸�: "+ threadB.getName());
		threadB.start();
		
	}

}
