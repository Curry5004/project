package sec08.exam02_abstract_method;

public class AnimalExample {
	public static void main(String[] args) {
		Dog dog = new Dog();
		Cat cat = new Cat();
		dog.sound();
		cat.sound();
		System.out.println("-----------");
		
		
		//변수의 자동 타입 변
		Animal animal = null;
		animal = new Dog();
		animal.sound();
		System.out.println();
		animal = new Cat();
		animal.sound();
		//추상 클래스에서 자동 형변환 되어서 출력됨
		
		//매개변수의 자동화 
		animalSound(new Dog());
		animalSound(new Cat());
		//매게변수의 다양성을 보았음
		
	}
	
	public static void animalSound(Animal animal) {
		animal.sound();
	}
}
