package sec04.exam01_nestedinterface;

public class Button {
	interface OnclickListner{
		void onClick();//abastract
	}
	
	
	//�ʵ� 
	OnclickListner listener; //�������̽� ���� ��ü ���� �͸�����ü ����???
	
	void serOnclickListner(OnclickListner listener) {
		this.listener = listener;
	}
	
	void touch() {
		listener.onClick();
	}
}
