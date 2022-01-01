package sec05.exam01_state;

public class TargetThread extends Thread{
	@Override
	public void run() {
		//Runnable 상태로 만듬
		for(long i=0; i<1000000000; i++) {}
		
		//TIMED_WATTING
		try {
			Thread.sleep(1500);
		} catch (InterruptedException e) {}
		
		//다시 Runnable 상태로 만들어 준다
		for(long i=0; i<1000000000; i++) {}
	}
	

}
