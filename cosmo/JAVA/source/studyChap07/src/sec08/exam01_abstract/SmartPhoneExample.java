package sec08.exam01_abstract;

public class SmartPhoneExample {
	public static void main(String[] args) {
//		Phone phone = new Phone(); //abstract ó���� �߱� ������ ��üȭ ����
		SmartPhone smartPhone = new SmartPhone("ȫ�浿");
		smartPhone.turnOn();
		smartPhone.internetSearch();
		smartPhone.turnOff();
		System.out.println(smartPhone.owner);
		
	}

}
