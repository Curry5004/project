package Exercise.no06;

public class Chatting {
	void startChat(String chatId) {
		String nickName = null;
//		nickName = chatId; 
		//��� null ���̶� ������ �Ȱ���!! �׷��ϱ�  String str; �̷��� �� ������ �ƴ϶�� ���Ŀ� �ٽ� ���� �� �� �� ����
		Chat chat = new Chat() {
			@Override
			void start() {
				while(true) {
					String inputData = "�ȳ��ϼ���";
					String message = "["+nickName+"]"+inputData;
					sendMessage(message);
				}
			}
			
//			@Override
//			void sendMessage(String message) {
//				System.out.println(message);
//			}
			//�� ģ���� ���൵ �׸� �����൵ �׸�. �ֳ�? Chat�� �߻� Ŭ������ interface�� �ƴ϶� Ȯ���� ��õǾ��ִ� Ŭ����
		};
		chat.start();
	}
	
	
	class Chat{
		void start() {}
		void sendMessage(String message) {}
		//��� ���� �߻� method�� ������ �ƴ�!!!! ���������� {} ĭ�� �����Ƿ� Ȯ���� ����Ǿ� �ִ� method��!
	}
	
}


