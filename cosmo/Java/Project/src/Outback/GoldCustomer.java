package Outback;

public class GoldCustomer extends Customer{
	
	public GoldCustomer(String name) {
		super(name);
		customerGrade="Gold";
		bounusRation=0.3;
	}
	public String showInfo(int price) {
		price -= (int)(price*bounusRation);
		return name+"님의 회원등급은 "+customerGrade+"이며, 결제금액은"+price+"입니다";
	}

}
