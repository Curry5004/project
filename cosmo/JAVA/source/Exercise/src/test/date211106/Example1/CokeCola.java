package test.date211106.Example1;

public class CokeCola implements Purchase{
	
	int stock;
	int price;
	
	
	public CokeCola(int stock, int price) {
		this.stock=stock;
		this.price=price;
	}
	
	public void stock() {
		System.out.printf("현재 재고가 %d개 남아있습니다 ",stock);
	}
	

	@Override
	public void choiceDrink() {
		System.out.println("킹갓콜라를 선택하였습니다");
		
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
