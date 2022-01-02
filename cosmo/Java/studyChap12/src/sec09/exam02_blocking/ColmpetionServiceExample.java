package sec09.exam02_blocking;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionService;
import java.util.concurrent.ExecutorCompletionService;

public class ColmpetionServiceExample {
	public static void main(String[] args) {
		//������Ǯ ���� 
		ExecutorService executorService = Executors.newFixedThreadPool(
				Runtime.getRuntime().availableProcessors() // ���� ������ �ھ� ���� ���
			);
		
		CompletionService<Integer> completionSerivce =
				new ExecutorCompletionService<Integer>(executorService/*�Ű������� executorService ���*/);
		
		System.out.println("[�۾� ó�� ��û]");
		for(int i=0; i<300000; i++) {
			completionSerivce.submit(new Callable<Integer>() {
				@Override
				public Integer call() throws Exception {
					int sum = 0;
					for (int i =1; i<= 10; i++) {
						sum +=i;
					}
					return sum;
				}
				
			});
		}
		
		System.out.println("[ó�� �Ϸ�� �۾� Ȯ�� ��û]");
		executorService.submit(new Runnable() {
			@Override
				public void run() {
					while(true) {
						try {
							//take() = �Ϸ�� �۾� �������� ���ٸ� ���������� ����Ͽ��ٰ� ������
							Future<Integer> future = completionSerivce.take();
							int value = future.get();
							System.out.println("[ó�����] = "+value);
						}catch (Exception e) {
							break;
						}
					}
				}	
		});
		
		
		
		try {Thread.sleep(300000000);} catch(InterruptedException e) {}
		executorService.shutdown();
		
		
	}

}