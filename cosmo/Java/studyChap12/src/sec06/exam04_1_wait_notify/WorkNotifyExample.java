package sec06.exam04_1_wait_notify;

public class WorkNotifyExample {
	public static void main(String[] args) {
		WorkObject sharedObject = new WorkObject();
		
		ThreadA threadA = new ThreadA(sharedObject);
		ThreadB threadB = new ThreadB(sharedObject);
	
		
		threadB.start();
		threadA.start();
	}

}
