package sec09.exam02_blocking;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.Callable;

public class ResultByCollableExample {
	public static void main (String[] args) {
		ExecutorService executorService = Executors.newFixedThreadPool(
					Runtime.getRuntime().availableProcessors()
				);
		System.out.println("[작업 처리 요청]");
		Callable<Integer> task = new Callable<Integer>() {
			@Override
			public Integer call() throws Exception{
				int sum = 0;
				for (int i =1; i<= 10; i++) {
					sum +=i;
				}
				return sum;
			}
		};
		
		Callable<Integer> task2 = new Callable<Integer>(){

			@Override
			public Integer call() throws Exception {
				return null;
			}
			
		};
		Future<Integer> future = executorService.submit(task);
		
		//리턴 타입이있으니 <Integer>로 넣어줌
		
		try {
			int sum = future.get();//Integer 타입으로 받았지만 int 타입으로 자동 언박싱 됨
			System.out.println("[처리 결과] " + sum);
			System.out.println("[작업처리 완료]");
		} catch(Exception e) {
			System.out.println("[실행 예외 발생함]"+e.getMessage());
		}
		
		executorService.shutdown();
	}
	

}
