package sec08.exam02_abstract_method;

public class Cat extends Animal {
	public Cat() {
		this.kind = "포유류";
	}

	@Override
	public void sound() {
		System.out.println("야옹");
		//animal에서 abstracrt로 인해 조건이 설정 안되어있엇기 때문에 여기서 overide로 재설정해준다
		
	}

}
