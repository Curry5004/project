package sec07.exam01_daemon;

public class AutoSaveThread extends	Thread {
	public void save() {
		System.out.println("�۾� ������ ������");
	}
	@Override
	public void run() {
		while(true) {
			try {
				Thread.sleep(900);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			save();
		}
		
	}
}
