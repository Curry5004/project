package sec05.exam03_button_event;

public class Button {
	interface onClickListener{
		void onClick();
	}
	onClickListener listener;
	
	void setOnClickListener(onClickListener listener) {
		this.listener = listener;
	};
	
	void touch() {
		listener.onClick();
	}
}
