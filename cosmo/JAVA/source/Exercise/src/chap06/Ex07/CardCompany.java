package chap06.Ex07;

public class CardCompany {
	private static CardCompany intstance = new CardCompany();
	private CardCompany() {}
	public static CardCompany getInstance() {
		if(intstance==null) {
			intstance = new CardCompany();
		}
		return intstance;
	}
	
	public Card creatCard() {
		Card card = new Card();
		return card;
	}

}
