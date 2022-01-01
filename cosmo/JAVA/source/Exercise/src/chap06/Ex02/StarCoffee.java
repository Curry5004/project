package chap06.Ex02;

public class StarCoffee {
	int money;
	
	public String brewing(int money) {
		this.money += money;
		if(money == Menu.STARAMERICANO) {
			return "별다방 아메리카노를 구입했습니다";
		} else if (money == Menu.STARLATTE) {
			return "별다방 라때를 구입했습니다";
		} else {
			return null;
		}
	}

}
