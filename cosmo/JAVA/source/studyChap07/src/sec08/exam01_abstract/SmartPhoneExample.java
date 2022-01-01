package sec08.exam01_abstract;

public class SmartPhoneExample {
	public static void main(String[] args) {
//		Phone phone = new Phone(); //abstract 처리를 했기 때문에 실체화 못함
		SmartPhone smartPhone = new SmartPhone("홍길동");
		smartPhone.turnOn();
		smartPhone.internetSearch();
		smartPhone.turnOff();
		System.out.println(smartPhone.owner);
		
	}

}
