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
					//������ �� ���� �� �۾� ������ �̸� ���
					ThreadPoolExecutor threadPoolExecutors = (ThreadPoolExecutor) executorService;
					int poolSize = threadPoolExecutors.getPoolSize();
					//�۾� ������ �̸� ���
					String threadName = Thread.currentThread().getName();
					System.out.println("[������ �� ����: "+ poolSize + "] �۾� ������ �̸�: "+ threadName);
					//���� �߻� ��Ŵ
					int value = Integer.parseInt("��");
				}
			};
			
//			executorService.execute(runnable);
			executorService.submit(runnable);
			//submit�� �׳� ���� ó���� �ع����� �� �� ���� �����带 �� �� �ְ� ���ش�.
			Thread.sleep(10);
		}
			
		executorService.isShutdown();
	}

}
