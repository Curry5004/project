package sec07.exam01_daemon;

public class DaemonExample {
	public static void main(String[] args) {
		AutoSaveThread autoSaveThread = new AutoSaveThread();
		autoSaveThread.setDaemon(true);//Daemon thread 생성 완료.
		autoSaveThread.start();
//		autoSaveThread.setDaemon(true);//여기에 놓으면 Exception이 발생하여 오류가 남
		
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("Main thread가 종료되었습니다");
		
		//끝남과 동시에 Daemon thread인 AutoSaveThread thread도 함께 끝남
		//보면 알겠지만 Daemon thread인 AutoSaveThread의 코드를 보면 무한문이다. 그런데 Main thread가 끝남으로써 함께 끝남
		//그러므로 Daemon thread는 main thread에 영향을 받는 보조적인 thread임을 확인 할 수 있다
	}

}
