package sec05.exam03_button_event;

public class Window {
	Button button1 = new Button();
	Button button2 = new Button();
	
	//1. 필드 초기값으로 대입
	Button.onClickListener listener = new Button.onClickListener() {

		@Override
		public void onClick() {
			System.out.println("전화를 겁니다.");
		}
		
	};
	
	Window(){
		button1.setOnClickListener(listener);
		//2. 매개값(인자값)으로 대입
		button2.setOnClickListener(
				new Button.onClickListener() {

					@Override
					public void onClick() {
						System.out.println("메시지를 보냅니다를 겁니다.");
					}
				}
		);
	}

}
