package sec08.exam01_abstract;

public abstract class Phone {
	//field
	public String owner;
	
	//constructor
	public Phone(String owner) {
		this.owner=owner;
	}
	
	//method
	public void turnOn() {
		System.out.println("�� ������ �մϴ�");
	}
	public void turnOff() {
		System.out.println("�� ������ ���ϴ�");
	}
	

}
