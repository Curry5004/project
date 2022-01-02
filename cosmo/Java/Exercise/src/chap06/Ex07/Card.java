package chap06.Ex07;

public class Card {
	private int cardNumber;
	private static int seralNumber = 10000;
	
	Card(){
		seralNumber++;
		cardNumber = seralNumber;
	}
	public int getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(int cardNumber) {
		this.cardNumber=cardNumber;
	}

}
