package chap06.Ex02;

public class Person {
	String name;
	int money;
	
	Person(String name, int money){
		this.name=name;
		this.money=money;
	}
	
	public void buyStarCoffee(StarCoffee sCoffee, int money) {
		String message = sCoffee.brewing(4000);
		if(message != null) {
			this.money-=money;
			System.out.println(name + "¥‘¿Ã" + money+"¿∏∑Œ"+message+"∏¶ ªÚΩ¿¥œ¥Ÿ");
		}
	}
	public void buyBeanCoffee(BeanCoffee bCoffee, int money) {
		String message = bCoffee.brewing(4500);
		if(message != null) {
			this.money-=money;
			System.out.println(name + "¥‘¿Ã" + money+"¿∏∑Œ"+message+"∏¶ ªÚΩ¿¥œ¥Ÿ");
		}
	}
	

}
