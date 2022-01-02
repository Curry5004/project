package sec04.exam01_nestedinterface;

public class Button {
	interface OnclickListner{
		void onClick();//abastract
	}
	
	
	//필드 
	OnclickListner listener; //인터페이스 구현 객체 형성 익명구현객체 형성???
	
	void serOnclickListner(OnclickListner listener) {
		this.listener = listener;
	}
	
	void touch() {
		listener.onClick();
	}
}
