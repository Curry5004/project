package sec04.exam01_nestedinterface;

public class ButtonExmaple {
	public static void main(String[] args) {
		Button btn = new Button();
		
		btn.serOnclickListner(new CallListener());
		btn.touch();
		System.out.println();
		btn.serOnclickListner(new MessageListner());
		btn.touch();
	}

}
