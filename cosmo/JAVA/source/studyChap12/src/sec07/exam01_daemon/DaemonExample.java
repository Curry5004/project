package sec07.exam01_daemon;

public class DaemonExample {
	public static void main(String[] args) {
		AutoSaveThread autoSaveThread = new AutoSaveThread();
		autoSaveThread.setDaemon(true);//Daemon thread ���� �Ϸ�.
		autoSaveThread.start();
//		autoSaveThread.setDaemon(true);//���⿡ ������ Exception�� �߻��Ͽ� ������ ��
		
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("Main thread�� ����Ǿ����ϴ�");
		
		//������ ���ÿ� Daemon thread�� AutoSaveThread thread�� �Բ� ����
		//���� �˰����� Daemon thread�� AutoSaveThread�� �ڵ带 ���� ���ѹ��̴�. �׷��� Main thread�� �������ν� �Բ� ����
		//�׷��Ƿ� Daemon thread�� main thread�� ������ �޴� �������� thread���� Ȯ�� �� �� �ִ�
	}

}
