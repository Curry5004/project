package sec05.exam01_runable;

public class RunnableExample {
	public static void main(String[] args) {
		
		//1 runnable ��ü�� ���ٷ� ��ü
//		Runnable runnable = () -> {
//			for(int i=0; i<10; i++) {
//				System.out.println(i+1);
//			}
//		};
//		
//		Thread thread = new Thread(runnable);
//		thread.start();
		
		
		//2. runnable�� ��ü�� �͸� ��ü�� �����԰� ���ÿ� ���ٽ����� ���
		Thread thread = new Thread(()->{
			for(int i=0; i<10; i++) {
				System.out.println(i+1);
			}
		});
		
		thread.start();
			
		
	}

}
