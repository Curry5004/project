package Outback;

public class SilverCustomer extends Customer {

	public SilverCustomer(String name) {
		super(name);
		customerGrade="Silver";
		bounusRation=0.2;
	}
	public String showInfo(int price) {
		price -= (int)(price*bounusRation);
		return name+"님의 회원등급은 "+customerGrade+"이며, 결제금액은"+price+"입니다";
	}

}
