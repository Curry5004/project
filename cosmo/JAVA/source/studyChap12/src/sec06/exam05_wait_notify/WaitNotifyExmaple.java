package sec06.exam05_wait_notify;

public class WaitNotifyExmaple {
	public static void main(String[] args) {
		DataBox databox = new DataBox();
		
		ProducerThread producerThread = new ProducerThread(databox);
		ConsumerThread consumerThread = new ConsumerThread(databox);
		
		
		//���� �����͸� �ְŴ� �ްŴ� �ؼ� ������. �׷��Ƿ� �Ʒ� �������� ������ �ٲٴ��� ����� �����ϴ�
//		consumerThread.start();
		producerThread.start();
		consumerThread.start();
	}

}
