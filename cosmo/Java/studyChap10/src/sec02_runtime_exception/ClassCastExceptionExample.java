package sec02_runtime_exception;

public class ClassCastExceptionExample {
	public static void main(String[] args) {
		Dog dog = new Dog();
		changeDog(dog);
		
		Cat cat = new Cat();
		changeDog(cat);
		
	}
	
	public static void changeDog(Animal animal) {
		Dog dog = (Dog)	 animal;
		// java.lang.ClassCastException 예외 발생
		
	}
	

}

class Animal{}
class Dog extends Animal {}
class Cat extends Animal {}
