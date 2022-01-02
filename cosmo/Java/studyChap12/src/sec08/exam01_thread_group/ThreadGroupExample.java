package sec08.exam01_thread_group;

public class ThreadGroupExample {
	public static void main(String[] args) {
		ThreadGroup myGroup = new ThreadGroup("myGroup");
		//왜 그룹을 만드나? 만약 스레드들 중 하나가 인터럽티드 에러 발생시키면 스레드 자체를 전부 끝내버리기 위해 사용한ㄷ가.
		WorkThread workThreadA = new WorkThread(myGroup, "workThreadA");
		WorkThread workThreadB = new WorkThread(myGroup, "workThreadB");
		
		workThreadA.start();
		workThreadB.start();
		
		System.out.println("[main thread 그룹의 list() 메소드 출력 내용]");
		ThreadGroup mainGroup = Thread.currentThread().getThreadGroup();
		mainGroup.list();
		System.out.println();
		/* 출력값
		 * [main thread 그룹의 list() 메소드 출력 내용]
			java.lang.ThreadGroup[name=main,maxpri=10]
		    	Thread[main,5,main]
		    	java.lang.ThreadGroup[name=myGroup,maxpri=10] 마이 네임이 중요한 부분
		        	Thread[workThreadA,5,myGroup]
		        	Thread[workThreadB,5,myGroup]
		 */
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {}
		
		System.out.println("[myGroup 스래드 그룹의 interrupt() 메소드 호출");
		myGroup.interrupt();
		
	}

}
