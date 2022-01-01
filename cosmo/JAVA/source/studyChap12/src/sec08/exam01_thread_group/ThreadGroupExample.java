package sec08.exam01_thread_group;

public class ThreadGroupExample {
	public static void main(String[] args) {
		ThreadGroup myGroup = new ThreadGroup("myGroup");
		//�� �׷��� ���峪? ���� ������� �� �ϳ��� ���ͷ�Ƽ�� ���� �߻���Ű�� ������ ��ü�� ���� ���������� ���� ����Ѥ���.
		WorkThread workThreadA = new WorkThread(myGroup, "workThreadA");
		WorkThread workThreadB = new WorkThread(myGroup, "workThreadB");
		
		workThreadA.start();
		workThreadB.start();
		
		System.out.println("[main thread �׷��� list() �޼ҵ� ��� ����]");
		ThreadGroup mainGroup = Thread.currentThread().getThreadGroup();
		mainGroup.list();
		System.out.println();
		/* ��°�
		 * [main thread �׷��� list() �޼ҵ� ��� ����]
			java.lang.ThreadGroup[name=main,maxpri=10]
		    	Thread[main,5,main]
		    	java.lang.ThreadGroup[name=myGroup,maxpri=10] ���� ������ �߿��� �κ�
		        	Thread[workThreadA,5,myGroup]
		        	Thread[workThreadB,5,myGroup]
		 */
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {}
		
		System.out.println("[myGroup ������ �׷��� interrupt() �޼ҵ� ȣ��");
		myGroup.interrupt();
		
	}

}
