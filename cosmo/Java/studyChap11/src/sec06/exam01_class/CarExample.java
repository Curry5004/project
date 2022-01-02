package sec06.exam01_class;

public class CarExample {
	public static void main(String [] args) {
		Car car = new Car();
		Class clazz1 = car.getClass();
		
		System.out.println(clazz1.getName());
		//��Ű�� �̸��� Ŭ���� �̸��� �Բ� ����
		System.out.println(clazz1.getSimpleName());
		//�̸��� ����
		System.out.println(clazz1.getPackage().getName());
		
		System.out.println("=======================");
		
		try {
			Class clazz2 = Class.forName("sec06.exam01_class.Car");
			System.out.println(clazz2.getName());
			//��Ű�� �̸��� Ŭ���� �̸��� �Բ� ����
			System.out.println(clazz2.getSimpleName());
			//�̸��� ����
			System.out.println(clazz2.getPackage().getName());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
