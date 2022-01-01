package sec06.eaxm02_queue;

import java.util.LinkedList;
import java.util.Queue;

public class QueueExample {
	public static void main(String[] args) {
		Queue<Message> messageQueue = new LinkedList<Message>();
		messageQueue.offer(new Message("sendMail", "ȫ�浿"));
		messageQueue.offer(new Message("sendSMS", "ȫ�浿"));
		messageQueue.offer(new Message("sendKakaotalk", "ȫ�浿"));
	
		while(!messageQueue.isEmpty()) {
			Message message = messageQueue.poll();
			switch(message.command) {
				case"sendMail":
					System.out.println(message.to+"�Կ��� ������ �����ϴ�");
					break;
				case"sendSMS":
					System.out.println(message.to+"�Կ��� ���ڸ� �����ϴ�");
					break;
				case"sendKakaotalk":
					System.out.println(message.to+"�Կ��� ī���� �����ϴ�");
					break;
			}
			/*ȫ�浿�Կ��� ������ �����ϴ�
			ȫ�浿�Կ��� ���ڸ� �����ϴ�
			ȫ�浿�Կ��� ī���� �����ϴ�
			���� �� ��ü�� ���� ����*/
		}
	}

}
