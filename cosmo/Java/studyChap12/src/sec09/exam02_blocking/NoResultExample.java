package sec09.exam02_blocking;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class NoResultExample {
	public static void main(String[] args) {
		//������ Ǯ ����
		ExecutorService executorService = Executors.newFixedThreadPool(
					Runtime.getRuntime().availableProcessors()
				);
		System.out.println("[�۾� ó�� ��û]");
		//������ Ǯ���� ���� �۾� ���� (������ ����)
		Runnable runnable = new Runnable() {
			@Override
			public void run() {
				int sum = 0;
				for (int i =1; i<= 10; i++) {
					sum +=i;
				}
				System.out.println("ó�� ��� "+sum);
			}
			//���� ���� ����
		};
		Future future = executorService.submit(runnable);
		
		try {
			future.get();
			System.out.println("[�۾�ó�� �Ϸ�]");
		} catch(Exception e) {
			System.out.println("[���� ���� �߻���]"+e.getMessage());
		}
		
		executorService.shutdown();
	}
	
	/*
	 * [�۾� ó�� ��û]
		ó�� ��� 55
		[�۾�ó�� �Ϸ�]
		process: Create new ThreadPool -> Create new Runnable class for using to ThreadPool -> request the process
		-> process activated -> process ended - > return null (Because process was created to Runnable interface , so there is no return result and
		that was not identified return. -> get the future (why? for checking Exception) -> shutdown threadPool
	 */

}