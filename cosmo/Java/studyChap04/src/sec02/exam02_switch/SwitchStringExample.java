package sec02.exam02_switch;
//해당 기능은 자바 7버전부터 가능하다
public class SwitchStringExample {
	public static void main(String[] args) {
		String position = "과장";
		
		switch(position) {
			case "부장":
				System.out.println("700만원");
				break;
			case "과장":
				System.out.println("500만원");
				break;
			default :
				System.out.println("300만원");
		}
	}

}
