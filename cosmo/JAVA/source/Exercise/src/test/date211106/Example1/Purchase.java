package test.date211106.Example1;

public interface Purchase {
			
	
	public void choiceDrink();
	public void purchaseAvailable();
	public void returnPurchase();
	public default void purchase() {
		System.out.println("���Ḧ �����մϴ�");
	};
	
	
	

}
