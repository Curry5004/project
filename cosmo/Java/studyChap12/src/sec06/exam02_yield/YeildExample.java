package sec06.exam02_yield;

public class YeildExample {
	public static void main(String[] args) {
		ThreadA threadA = new ThreadA();
		ThreadB threadB = new ThreadB();
		threadA.start();
		threadB.start();
		
		try{Thread.sleep(3000);} catch(InterruptedException e) {}
		threadA.work = false; //Thread B 작업진행

		try{Thread.sleep(3000);} catch(InterruptedException e) {}
		threadA.work = true; //Thread A 작업진행, Thread B 작업진행

		try{Thread.sleep(3000);} catch(InterruptedException e) {}
		threadA.stop = true; //Thread A 작업진행, Thread B 작업진행
		threadB.stop = true; //Thread A 작업진행, Thread B 작업진행
		
		
	}

}
