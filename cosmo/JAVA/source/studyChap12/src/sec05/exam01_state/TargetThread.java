package sec05.exam01_state;

public class TargetThread extends Thread{
	@Override
	public void run() {
		//Runnable ���·� ����
		for(long i=0; i<1000000000; i++) {}
		
		//TIMED_WATTING
		try {
			Thread.sleep(1500);
		} catch (InterruptedException e) {}
		
		//�ٽ� Runnable ���·� ����� �ش�
		for(long i=0; i<1000000000; i++) {}
	}
	

}
