package Outback;

public class GoldCustomer extends Customer{
	
	public GoldCustomer(String name) {
		super(name);
		customerGrade="Gold";
		bounusRation=0.3;
	}
	public String showInfo(int price) {
		price -= (int)(price*bounusRation);
		return name+"���� ȸ������� "+customerGrade+"�̸�, �����ݾ���"+price+"�Դϴ�";
	}

}
