package sec02.exam02_threadname;

public class ThreadNameExample {
	public static void main(String[] args) {
		Thread mainThread = Thread.currentThread();
		//스레드의 정적 메소드인 커렌트 스레드
		//현재 진행중인 스레드를 반환한다
		//이걸 쓸려면 객체의 참조가 Thread가 필요하다. 왜? 애시당초 Thread 이름 알아낼려고 만든 method니까
		System.out.println("프로그램 시작 스레드 이름: "+mainThread.getName());
		System.out.println();
		
		ThreadA threadA = new ThreadA();
		System.out.println("작업 스레드 이름: "+ threadA.getName());
		threadA.start();
		
		ThreadB threadB = new ThreadB();
		System.out.println("작업 스레드 이름: "+ threadB.getName());
		threadB.start();
		
	}

}
