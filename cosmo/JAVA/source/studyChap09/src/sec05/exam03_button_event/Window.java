package sec05.exam03_button_event;

public class Window {
	Button button1 = new Button();
	Button button2 = new Button();
	
	//1. �ʵ� �ʱⰪ���� ����
	Button.onClickListener listener = new Button.onClickListener() {

		@Override
		public void onClick() {
			System.out.println("��ȭ�� �̴ϴ�.");
		}
		
	};
	
	Window(){
		button1.setOnClickListener(listener);
		//2. �Ű���(���ڰ�)���� ����
		button2.setOnClickListener(
				new Button.onClickListener() {

					@Override
					public void onClick() {
						System.out.println("�޽����� �����ϴٸ� �̴ϴ�.");
					}
				}
		);
	}

}
