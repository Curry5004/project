package Outback;

public class PlatinumCustomer extends Customer{

	public PlatinumCustomer(String name) {
		super(name);
		customerGrade="Platinum";
		bounusRation=0.4;
	}
	public String showInfo(int price) {
		price -= (int)(price*bounusRation);
		return name+"님의 회원등급은 "+customerGrade+"이며, 결제금액은"+price+"입니다";
	}

}
