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
		return name+"님의 회원등급은 "+customerGrade+"이며, 결제금액은"+price+"입니다";
	}
	
	
	
	
	
	

	

}
