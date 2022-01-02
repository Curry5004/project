package sec06.exam04_1_wait_notify;

public class WorkObject {
	public synchronized void methodA(){
		System.out.println("ThreadA��  methodA�۾� ����");
		notify();
		try {
			wait();
		} catch (InterruptedException e) {}
	}

	public synchronized void methodB(){
		System.out.println("ThreadB��  methodB�۾� ����");
		notify();
		try {
			wait();
		} catch (InterruptedException e) {}
	}
	
	
	/* ����Ʈ
	 * notify();
		try {
			wait();
		} catch (InterruptedException e) {}
		�� ���踦 ���޾ƶ�
		ThreadA��  methodA�۾� ����
		ThreadB��  methodB�۾� ����
		ThreadA��  methodA�۾� ����
		ThreadB��  methodB�۾� ����
		ThreadA��  methodA�۾� ����
		ThreadB��  methodB�۾� ����
		ThreadA��  methodA�۾� ����
		ThreadB��  methodB�۾� ����
		ThreadA��  methodA�۾� ����
		ThreadB��  methodB�۾� ����
		ThreadA��  methodA�۾� ����
		ThreadB��  methodB�۾� ����
		ThreadA��  methodA�۾� ����
		ThreadB��  methodB�۾� ����
		ThreadA��  methodA�۾� ����
		ThreadB��  methodB�۾� ����
		ThreadA��  methodA�۾� ����
		ThreadB��  methodB�۾� ����
		ThreadA��  methodA�۾� ����
		ThreadB��  methodB�۾� ����
		A �� ���ϸ� B �� ���� A �� ���ų� B �� ����� A �� �ڰ� B �� ���ϰ�
		������ˤ� ����� �ݺ�
		
		�̷���
		�� THREAD ���� ������ ����� ���� ���� �� �������� ����Ʈ!
	 */
}
