package test.date211106.Example1;

public class Fanta implements Purchase {
	
	int stock;
	int price;
	
	public Fanta(int stock, int price) {
		this.stock=stock;
		this.price=price;
	}
	
	public void stock() {
		System.out.printf("���� ����� %d�� �����ֽ��ϴ� ",stock);
	}



	@Override
	public void choiceDrink() {
		System.out.println("��Ÿ�� �����Ͽ����ϴ�");
		
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