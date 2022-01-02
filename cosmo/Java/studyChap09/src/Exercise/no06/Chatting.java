package Exercise.no06;

public class Chatting {
	void startChat(String chatId) {
		String nickName = null;
//		nickName = chatId; 
		//비록 null 값이라도 선언은 된거임!! 그러니까  String str; 이렇게 되 ㄴ것이 아니라면 이후에 다시 설정 해 줄 수 없음
		Chat chat = new Chat() {
			@Override
			void start() {
				while(true) {
					String inputData = "안녕하세요";
					String message = "["+nickName+"]"+inputData;
					sendMessage(message);
				}
			}
			
//			@Override
//			void sendMessage(String message) {
//				System.out.println(message);
//			}
			//이 친구는 해줘도 그만 안해줘도 그만. 왜냐? Chat는 추상 클래스나 interface가 아니라 확고히 명시되어있는 클래스
		};
		chat.start();
	}
	
	
	class Chat{
		void start() {}
		void sendMessage(String message) {}
		//얘는 지금 추상 method로 잡힌게 아님!!!! 공란이지만 {} 칸이 있으므로 확실히 선언되어 있는 method임!
	}
	
}


