package Outback;

public class PlatinumCustomer extends Customer{

	public PlatinumCustomer(String name) {
		super(name);
		customerGrade="Platinum";
		bounusRation=0.4;
	}
	public String showInfo(int price) {
		price -= (int)(price*bounusRation);
		return name+"���� ȸ������� "+customerGrade+"�̸�, �����ݾ���"+price+"�Դϴ�";
	}

}
