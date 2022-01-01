package sec04.exam02_synchronized;

public class Calculator {
	private int memory;
	
	public int getMemory() {
		return memory;
	}
	
	//1. method 자체를 synchronized
//	public synchronized void setMemory(int memory) {
//		this.memory=memory;
//		try {
//			Thread.sleep(2000);
//		} catch (InterruptedException e) {}
//		System.out.println(Thread.currentThread().getName()+": "+this.memory);
//	}
	
	//2 블럭처리 하여 synchronized할 수 있다
	public void setMemory(int memory) {
		synchronized(this) {
			this.memory=memory;
			try {
				Thread.sleep(2000);
			} catch (InterruptedException e) {}
			System.out.println(Thread.currentThread().getName()+": "+this.memory);
		}
		
	}

}
