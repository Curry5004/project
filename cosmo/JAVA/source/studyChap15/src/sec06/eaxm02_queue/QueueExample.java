package sec06.eaxm02_queue;

import java.util.LinkedList;
import java.util.Queue;

public class QueueExample {
	public static void main(String[] args) {
		Queue<Message> messageQueue = new LinkedList<Message>();
		messageQueue.offer(new Message("sendMail", "홍길동"));
		messageQueue.offer(new Message("sendSMS", "홍길동"));
		messageQueue.offer(new Message("sendKakaotalk", "홍길동"));
	
		while(!messageQueue.isEmpty()) {
			Message message = messageQueue.poll();
			switch(message.command) {
				case"sendMail":
					System.out.println(message.to+"님에게 메일을 보냅니다");
					break;
				case"sendSMS":
					System.out.println(message.to+"님에게 문자를 보냅니다");
					break;
				case"sendKakaotalk":
					System.out.println(message.to+"님에게 카톡을 보냅니다");
					break;
			}
			/*홍길동님에게 메일을 보냅니다
			홍길동님에게 문자를 보냅니다
			홍길동님에게 카톡을 보냅니다
			먼저 들어간 객체가 먼저 나옴*/
		}
	}

}
