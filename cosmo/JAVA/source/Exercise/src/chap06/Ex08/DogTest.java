package chap06.Ex08;

public class DogTest {
	public static void main(String[] args) {
		Dog[] dogs = new Dog[5];
		dogs[0] = new Dog("����","��Ƽ��");
		dogs[1] = new Dog("����","����");
		dogs[2] = new Dog("����","���۵�");
		dogs[3] = new Dog("¯��","��ī����Ͼ�");
		dogs[4] = new Dog("����","�����ڱ�");
		
		
		
		for(int i=0; i<dogs.length;i++) {
			System.out.println(dogs[i].showDogInfo());
		}
		for(Dog cat:dogs) {
			System.out.println(cat.showDogInfo());
		}
		
		
				
		}
	
}
