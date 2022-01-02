package sec09.exam01_execute_submit;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;

public class ExecuteVsSubmitExample {
	public static void main(String[] args) throws Exception {
		ExecutorService executorService = Executors.newFixedThreadPool(2);
		
		for(int i=0; i<10; i++) {
			Runnable runnable = new Runnable() {
				@Override
				public void run() {
					//스래드 총 개수 및 작업 스래드 이름 출력
					ThreadPoolExecutor threadPoolExecutors = (ThreadPoolExecutor) executorService;
					int poolSize = threadPoolExecutors.getPoolSize();
					//작업 스레드 이름 출력
					String threadName = Thread.currentThread().getName();
					System.out.println("[스레드 총 개수: "+ poolSize + "] 작업 스레드 이름: "+ threadName);
					//예외 발생 시킴
					int value = Integer.parseInt("삼");
				}
			};
			
//			executorService.execute(runnable);
			executorService.submit(runnable);
			//submit은 그냥 예외 처리르 해버려서 쓸 수 남은 쓰래드를 쓸 수 있게 해준다.
			Thread.sleep(10);
		}
			
		executorService.isShutdown();
	}

}
