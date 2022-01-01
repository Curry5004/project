package sec05.exam01_runable;

public class RunnableExample {
	public static void main(String[] args) {
		
		//1 runnable 객체를 람다로 객체
//		Runnable runnable = () -> {
//			for(int i=0; i<10; i++) {
//				System.out.println(i+1);
//			}
//		};
//		
//		Thread thread = new Thread(runnable);
//		thread.start();
		
		
		//2. runnable를 객체를 익명 객체로 생성함과 동시에 람다식으로 사용
		Thread thread = new Thread(()->{
			for(int i=0; i<10; i++) {
				System.out.println(i+1);
			}
		});
		
		thread.start();
			
		
	}

}
