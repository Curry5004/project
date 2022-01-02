package sec06.exam06_stop;

public class InterruptedExample {
	public static void main(String[] args) {
		Thread thread = new ParentThread2();
		thread.start();
		
		try {
			Thread.sleep(1000);
		} catch(InterruptedException e) {}
		thread.interrupt();
	}

}
