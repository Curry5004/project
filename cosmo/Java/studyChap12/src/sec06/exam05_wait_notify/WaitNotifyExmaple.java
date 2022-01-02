package sec06.exam05_wait_notify;

public class WaitNotifyExmaple {
	public static void main(String[] args) {
		DataBox databox = new DataBox();
		
		ProducerThread producerThread = new ProducerThread(databox);
		ConsumerThread consumerThread = new ConsumerThread(databox);
		
		
		//서로 데이터를 주거니 받거니 해서 진행함. 그러므로 아래 스레드의 순서를 바꾸더라도 결과는 동일하다
//		consumerThread.start();
		producerThread.start();
		consumerThread.start();
	}

}
