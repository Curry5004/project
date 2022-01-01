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
		System.out.println("[�۾� ó�� ��û]");
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
		
		//���� Ÿ���������� <Integer>�� �־���
		
		try {
			int sum = future.get();//Integer Ÿ������ �޾����� int Ÿ������ �ڵ� ��ڽ� ��
			System.out.println("[ó�� ���] " + sum);
			System.out.println("[�۾�ó�� �Ϸ�]");
		} catch(Exception e) {
			System.out.println("[���� ���� �߻���]"+e.getMessage());
		}
		
		executorService.shutdown();
	}
	

}
