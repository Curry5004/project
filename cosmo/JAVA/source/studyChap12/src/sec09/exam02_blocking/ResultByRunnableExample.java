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
		System.out.println("�۾� ó�� ��û");
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
				//result ��ü�� �۾� ����� ����
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
			System.out.println("[ó�����] "+result.accumValue);
			System.out.println("�۾� ó�� �Ϸ�");
		}catch(Exception e) {
			System.out.println("[���� ���� �߻�]"+e.getMessage());
		}
		
		executorService.shutdown();
		
		//�� �����尡 �׽�ũ�� ������ ����� �ܺ� ��� ��ü�� �Է������� �� �� ����� ���ļ� �ѹ濡 ���� �� �ְ� ���ش�
		
 		
	}

}

class Result {
	int accumValue;
	synchronized void addVaule(int value) {
		accumValue += value;
	}
	
}
