package Outback;

public class SilverCustomer extends Customer {

	public SilverCustomer(String name) {
		super(name);
		customerGrade="Silver";
		bounusRation=0.2;
	}
	public String showInfo(int price) {
		price -= (int)(price*bounusRation);
		return name+"���� ȸ������� "+customerGrade+"�̸�, �����ݾ���"+price+"�Դϴ�";
	}

}
