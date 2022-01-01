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
		System.out.println("사이다를 선택하였습니다");
		
	}

	@Override
	public void purchaseAvailable() {
		if(stock!=0) {
			System.out.println("판매중");
		} else {
			System.out.println("매진");
		}
		
	}

	@Override
	public void returnPurchase() {
		System.out.println("금액이 부족합니다");
		
	}

}
