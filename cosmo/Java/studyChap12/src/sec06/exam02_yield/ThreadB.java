package sec06.exam02_yield;

public class ThreadB extends Thread {
	public boolean stop = false; //thread �ݺ��۾� ���°�.
	public boolean work = true;  //yield ���°�.
	
	@Override
	public void run() {
		while(!stop) {
			if(work) {
				System.out.println("ThreadB �۾�����");
			} else {
				//�����߿� �켱������ ������ �ٸ� �����忡��
				//���� �纸 �� ���� ��� ���°� ��
				Thread.yield();
			}
		}
		System.out.println("ThreadB ����");
	}
	

}