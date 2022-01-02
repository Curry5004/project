package chap06.Ex07;

public class CardCompanyTest {
	public static void main (String[] args) {
		//½Ì±ÛÅæ
		CardCompany company = CardCompany.getInstance();
		
		Card myCard = company.creatCard();
		Card yourCard = company.creatCard();
		
		System.out.println(myCard.getCardNumber());
		System.out.println(yourCard.getCardNumber());
		
	}

}
