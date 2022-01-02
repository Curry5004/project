package sec09.exam02_blocking;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionService;
import java.util.concurrent.ExecutorCompletionService;

public class ColmpetionServiceExample {
	public static void main(String[] args) {
		//스레드풀 생성 
		ExecutorService executorService = Executors.newFixedThreadPool(
				Runtime.getRuntime().availableProcessors() // 가용 가능한 코어 전부 사용
			);
		
		CompletionService<Integer> completionSerivce =
				new ExecutorCompletionService<Integer>(executorService/*매개값으로 executorService 사용*/);
		
		System.out.println("[작업 처리 요청]");
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
		
		System.out.println("[처리 완료된 작업 확인 요청]");
		executorService.submit(new Runnable() {
			@Override
				public void run() {
					while(true) {
						try {
							//take() = 완료된 작업 가져오고 없다면 있을때까지 대기하였다가 가져옴
							Future<Integer> future = completionSerivce.take();
							int value = future.get();
							System.out.println("[처리결과] = "+value);
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
