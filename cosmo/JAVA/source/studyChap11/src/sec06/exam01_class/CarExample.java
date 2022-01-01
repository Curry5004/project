package sec06.exam01_class;

public class CarExample {
	public static void main(String [] args) {
		Car car = new Car();
		Class clazz1 = car.getClass();
		
		System.out.println(clazz1.getName());
		//페키지 이름과 클래스 이름이 함께 나옴
		System.out.println(clazz1.getSimpleName());
		//이름만 나옴
		System.out.println(clazz1.getPackage().getName());
		
		System.out.println("=======================");
		
		try {
			Class clazz2 = Class.forName("sec06.exam01_class.Car");
			System.out.println(clazz2.getName());
			//페키지 이름과 클래스 이름이 함께 나옴
			System.out.println(clazz2.getSimpleName());
			//이름만 나옴
			System.out.println(clazz2.getPackage().getName());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
