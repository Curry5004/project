package chap06.Ex02;

public class CoffeeTest {
	public static void main(String[] args) {
		Person kim = new Person("kim", 100000);
		Person lee = new Person("lee", 100000);
		StarCoffee starCoffee = new StarCoffee();
		BeanCoffee beanCoffee = new BeanCoffee();
		
		kim.buyStarCoffee(starCoffee, 4000);
		lee.buyBeanCoffee(beanCoffee, 4500);
		
		System.out.println("kim¿ëµ· ÀÜ¾×"+kim.money);
		System.out.println("º°´Ù¹æ ¼öÀÔ:"+starCoffee.money);
		
	}

}
