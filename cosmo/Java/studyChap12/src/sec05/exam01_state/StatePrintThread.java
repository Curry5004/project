package sec05.exam01_state;

public class StatePrintThread extends Thread {
	private Thread targetThread;
	
	public StatePrintThread(Thread targetThread) {
		this.targetThread = targetThread;
	}
	
	@Override
	public void run() {
		while(true) {
			Thread.State state = targetThread.getState();
			//getState()���¸� ������ �ִ� method
			System.out.println("Ÿ�� ������ ����:"+state);
			if(state == Thread.State.NEW) {
				targetThread.start();
			} else if (state == Thread.State.TERMINATED) {
				break;
			}
			
			try {
				//0.5�ʸ��� Ȯ��
				Thread.sleep(300);
			} catch (InterruptedException e) {}
			
		}
	}

}
