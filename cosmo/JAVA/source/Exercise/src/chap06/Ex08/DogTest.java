package chap06.Ex08;

public class DogTest {
	public static void main(String[] args) {
		Dog[] dogs = new Dog[5];
		dogs[0] = new Dog("순돌","말티즈");
		dogs[1] = new Dog("복돌","포메");
		dogs[2] = new Dog("정돌","셰퍼드");
		dogs[3] = new Dog("짱돌","코카스페니얼");
		dogs[4] = new Dog("차돌","웰시코기");
		
		
		
		for(int i=0; i<dogs.length;i++) {
			System.out.println(dogs[i].showDogInfo());
		}
		for(Dog cat:dogs) {
			System.out.println(cat.showDogInfo());
		}
		
		
				
		}
	
}
