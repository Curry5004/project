package sec09.exam02_blocking;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class NoResultExample {
	public static void main(String[] args) {
		//스레드 풀 형성
		ExecutorService executorService = Executors.newFixedThreadPool(
					Runtime.getRuntime().availableProcessors()
				);
		System.out.println("[작업 처리 요청]");
		//스레드 풀에서 돌릴 작업 생성 (스레드 생성)
		Runnable runnable = new Runnable() {
			@Override
			public void run() {
				int sum = 0;
				for (int i =1; i<= 10; i++) {
					sum +=i;
				}
				System.out.println("처리 결과 "+sum);
			}
			//리턴 값이 없음
		};
		Future future = executorService.submit(runnable);
		
		try {
			future.get();
			System.out.println("[작업처리 완료]");
		} catch(Exception e) {
			System.out.println("[실행 예외 발생함]"+e.getMessage());
		}
		
		executorService.shutdown();
	}
	
	/*
	 * [작업 처리 요청]
		처리 결과 55
		[작업처리 완료]
		process: Create new ThreadPool -> Create new Runnable class for using to ThreadPool -> request the process
		-> process activated -> process ended - > return null (Because process was created to Runnable interface , so there is no return result and
		that was not identified return. -> get the future (why? for checking Exception) -> shutdown threadPool
	 */

}
