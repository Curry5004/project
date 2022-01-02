package sec09.exam02_blocking;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.Callable;

public class ResultByRunnableExample {
	public static void main(String[] args) {
		ExecutorService executorService = Executors.newFixedThreadPool(
				Runtime.getRuntime().availableProcessors()
				);
		System.out.println("작업 처리 요청");
		class Task implements Runnable{
			Result result;
			Task(Result result){
				this.result = result;
			}
			@Override
			public void run()	{
				int sum = 0;
				for (int i =1; i<= 10; i++) {
					sum +=i;
				}
				//result 객체에 작업 결과를 저장
				result.addVaule(sum);
			}
		}
		
		Result result = new Result();
		Runnable task1 = new Task(result);
		Runnable task2 = new Task(result);
		Future<Result> future1 = executorService.submit(task1, result);
		Future<Result> future2 = executorService.submit(task2, result);
		
		try {
			result = future1.get();
			result = future2.get();
			System.out.println("[처리결과] "+result.accumValue);
			System.out.println("작업 처리 완료");
		}catch(Exception e) {
			System.out.println("[실행 예외 발생]"+e.getMessage());
		}
		
		executorService.shutdown();
		
		//두 스레드가 테스크에 묶여서 결고값을 외부 결과 객체에 입력함으로 써 두 결과를 뭉쳐서 한방에 나올 수 있게 해준다
		
 		
	}

}

class Result {
	int accumValue;
	synchronized void addVaule(int value) {
		accumValue += value;
	}
	
}
