package sec06.exam06_stop;

public class StopFlagExample {
	public static void main(String[] args) {
		ParentThread1 parentThread1 = new ParentThread1();
		parentThread1.start();
		
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {}
		
		parentThread1.setStop(true);
	}

}
