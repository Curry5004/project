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
			//getState()상태를 가져와 주는 method
			System.out.println("타겟 스레드 상태:"+state);
			if(state == Thread.State.NEW) {
				targetThread.start();
			} else if (state == Thread.State.TERMINATED) {
				break;
			}
			
			try {
				//0.5초마다 확인
				Thread.sleep(300);
			} catch (InterruptedException e) {}
			
		}
	}

}
