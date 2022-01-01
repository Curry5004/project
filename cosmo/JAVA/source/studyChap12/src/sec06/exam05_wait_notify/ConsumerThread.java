package sec06.exam05_wait_notify;

public class ConsumerThread extends Thread {
	private DataBox dataBox;
	
	public ConsumerThread(DataBox databox) {
		this.dataBox = databox;
	}
	
	@Override
	public void run() {
		for(int i=1; i<=3; i++) {
			dataBox.getData();
		}
	}

}
