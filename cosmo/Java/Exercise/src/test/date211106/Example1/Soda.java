package test.date211106.Example1;

public class Soda implements Purchase{
	
	int stock;
	int price;
	
	public Soda(int stock, int price) {
		this.stock=stock;
		this.price=price;
	}
	
	


	@Override
	public void choiceDrink() {
		System.out.println("���̴ٸ� �����Ͽ����ϴ�");
		
	}

	@Override
	public void purchaseAvailable() {
		if(stock!=0) {
			System.out.println("�Ǹ���");
		} else {
			System.out.println("����");
		}
		
	}

	@Override
	public void returnPurchase() {
		System.out.println("�ݾ��� �����մϴ�");
		
	}

}
