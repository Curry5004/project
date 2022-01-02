package sec06.exam04_1_wait_notify;

public class WorkObject {
	public synchronized void methodA(){
		System.out.println("ThreadA의  methodA작업 실행");
		notify();
		try {
			wait();
		} catch (InterruptedException e) {}
	}

	public synchronized void methodB(){
		System.out.println("ThreadB의  methodB작업 실행");
		notify();
		try {
			wait();
		} catch (InterruptedException e) {}
	}
	
	
	/* 포인트
	 * notify();
		try {
			wait();
		} catch (InterruptedException e) {}
		의 관계를 깨달아라
		ThreadA의  methodA작업 실행
		ThreadB의  methodB작업 실행
		ThreadA의  methodA작업 실행
		ThreadB의  methodB작업 실행
		ThreadA의  methodA작업 실행
		ThreadB의  methodB작업 실행
		ThreadA의  methodA작업 실행
		ThreadB의  methodB작업 실행
		ThreadA의  methodA작업 실행
		ThreadB의  methodB작업 실행
		ThreadA의  methodA작업 실행
		ThreadB의  methodB작업 실행
		ThreadA의  methodA작업 실행
		ThreadB의  methodB작업 실행
		ThreadA의  methodA작업 실행
		ThreadB의  methodB작업 실행
		ThreadA의  methodA작업 실행
		ThreadB의  methodB작업 실행
		ThreadA의  methodA작업 실행
		ThreadB의  methodB작업 실행
		A 가 일하면 B 는 재우고 A 가 끝매녀 B 를 깨우고 A 는 자고 B 는 일하고
		끝나며ㅛㄴ 깨우고 반봅
		
		이렇게
		두 THREAD 간에 협업을 만들어 내는 것이 저 명형문의 포인트!
	 */
}
