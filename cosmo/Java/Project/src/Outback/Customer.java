package Outback;

public class Customer {
	public String name;
	public String customerGrade;
	double bounusRation;
	
	
	public Customer(String name) {
		this.name=name;
		initCuetomer();
	}
	
		
	private void initCuetomer() {
		customerGrade="Bronze";
		bounusRation=0.1;
	}
	
	public String showInfo(int price) {
		price -= (int)(price*(bounusRation));
		return name+"���� ȸ������� "+customerGrade+"�̸�, �����ݾ���"+price+"�Դϴ�";
	}
	
	
	
	
	
	

	

}
