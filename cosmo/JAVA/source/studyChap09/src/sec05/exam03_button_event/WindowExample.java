package sec05.exam03_button_event;

public class WindowExample {
	public static void main(String[] args) {
		Window w = new Window();
		
		
		//어떤 방식으로 흘러가는가? 흐름을 주목하여 이해할 것
		w.button1.touch(); //전화를 겁니다
		w.button2.touch(); //메시지를 보냅니다
	}

}
