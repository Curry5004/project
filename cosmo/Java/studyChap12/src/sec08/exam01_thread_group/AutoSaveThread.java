package sec08.exam01_thread_group;

public class AutoSaveThread extends	Thread {
	public void save() {
		System.out.println("�۾� ������ ������");
	}
	@Override
	public void run() {
		while(true) {
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			save();
		}
		
	}
}
