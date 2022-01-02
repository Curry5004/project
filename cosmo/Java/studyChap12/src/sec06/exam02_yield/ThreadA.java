package sec06.exam02_yield;

public class ThreadA extends Thread {
	public boolean stop = false; //thread 반복작업 상태값.
	public boolean work = true;  //yield 상태값.
	
	@Override
	public void run() {
		while(!stop) {
			if(work) {
				System.out.println("ThreadA 작업진행");
			} else {
				//실행중에 우선순위가 동일한 다른 스레드에게
				//실행 양보 후 실행 대기 상태가 됨
				Thread.yield();
			}
		}
		System.out.println("ThreadA 종료");
	}
	

}
