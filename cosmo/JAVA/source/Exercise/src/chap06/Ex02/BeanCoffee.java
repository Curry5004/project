package chap06.Ex02;

public class BeanCoffee {
	int money;
	
	public String brewing(int money) {
		this.money += money;
		if(money == Menu.BEANAMERICANO) {
			return "콩다방 아메리카노를 구입했습니다";
		} else if (money == Menu.BEANLATTE) {
			return "콩다방 라때를 구입했습니다";
		} else {
			return null;
		}
	}


}
