package sec08.exam02_abstract_method;

public class AnimalExample {
	public static void main(String[] args) {
		Dog dog = new Dog();
		Cat cat = new Cat();
		dog.sound();
		cat.sound();
		System.out.println("-----------");
		
		
		//������ �ڵ� Ÿ�� ��
		Animal animal = null;
		animal = new Dog();
		animal.sound();
		System.out.println();
		animal = new Cat();
		animal.sound();
		//�߻� Ŭ�������� �ڵ� ����ȯ �Ǿ ��µ�
		
		//�Ű������� �ڵ�ȭ 
		animalSound(new Dog());
		animalSound(new Cat());
		//�ŰԺ����� �پ缺�� ������
		
	}
	
	public static void animalSound(Animal animal) {
		animal.sound();
	}
}
